CREATE OR REPLACE PROCEDURE Simulacion(dias number)
IS
    
BEGIN
    Infecciones(dias);
    Recuperaciones(dias);    
END;

execute Simulacion(20); 


CREATE OR REPLACE PROCEDURE Infecciones(dias number)
IS
    pais number := 1;
    modelo varchar(30);
    poblacion number;
BEGIN
    WHILE (pais <= 10)
    LOOP
        SELECT m.nombre_aislamiento INTO modelo 
        FROM Modelo_Aislamiento m, Lugar_Modelo lm 
        WHERE lm.fk_lugar = pais 
        AND m.codigo_aislamiento = lm.fk_modelo_aislamiento;

        SELECT COUNT(p.codigo_persona) INTO poblacion
        FROM Persona p, Condicion_persona cp, Lugar estado, Lugar pais
        WHERE cp.FK_Condicion <> 4 
        AND cp.FK_Condicion <> 3
        AND cp.fk_persona = p.codigo_persona 
        AND p.FK_LUGAR = estado.codigo_lugar
        AND estado.fk_lugar = pais.codigo_lugar
        AND pais.codigo_lugar=pais;

        IF (modelo = 'Libre Movilidad') THEN
            LibreMovilidad(dias, pais, poblacion);
        ELSIF (modelo = '1 de cada 8 se mueve') THEN
            UnoCadaOcho(dias, pais, poblacion);
        END IF;

        pais := pais+1;
    END LOOP;
END;


CREATE OR REPLACE PROCEDURE UnoCadaOcho(dias number, pais number, poblacion number)
IS
    R0 float := 1.2;
    poblacionSale number;
    infectados number;
    infectadosAuxiliar number;
    contadorDias number := 1;
BEGIN
    poblacionSale := trunc(poblacion/8);                

    SELECT COUNT(topPersonaAleatoria.persona) INTO infectados
    FROM (SELECT personaAleatoria.persona persona, personaAleatoria.condicion condicion , personaAleatoria.nombre nombre
            FROM (SELECT p.codigo_persona persona, cp.fk_condicion condicion , p.datos_basicos.primer_nombre nombre
                    FROM Condicion_persona cp, Persona p, Lugar estado, Lugar pa
                    WHERE (cp.FK_Condicion = 1 OR cp.FK_Condicion = 2)
                    AND cp.fk_persona = p.codigo_persona 
                    AND p.FK_LUGAR = estado.codigo_lugar
                    AND estado.fk_lugar = pa.codigo_lugar
                    AND pa.codigo_lugar=pais
                    ORDER BY DBMS_RANDOM.RANDOM) personaAleatoria
            WHERE rownum <= poblacionSale) topPersonaAleatoria
    WHERE topPersonaAleatoria.condicion = 2;

    infectadosAuxiliar := infectados;

    WHILE (contadorDias <= dias) AND (infectados <= poblacion)
    LOOP
        infectados := infectados*R0;
        contadorDias := contadorDias+1;
    END LOOP;

    infectados := trunc(infectados);
    infectados := infectados-infectadosAuxiliar;
        
    UPDATE Condicion_Persona
    SET fk_condicion = 2
    WHERE fk_persona IN (SELECT personaAleatoria.condicion
                            FROM (SELECT p.codigo_persona persona, cp.fk_persona condicion , p.datos_basicos.primer_nombre nombre
                                    FROM Condicion_persona cp, Persona p, Lugar estado, Lugar pa
                                    WHERE cp.FK_Condicion = 1
                                    AND cp.fk_persona = p.codigo_persona 
                                    AND p.FK_LUGAR = estado.codigo_lugar
                                    AND estado.fk_lugar = pa.codigo_lugar
                                    AND pa.codigo_lugar = pais
                                    ORDER BY DBMS_RANDOM.RANDOM) personaAleatoria
                            WHERE rownum <= infectados);

END;




CREATE OR REPLACE PROCEDURE LibreMovilidad(dias number, pais number, poblacion number)
IS
    R0 float := 1.2;
    infectados number;
    infectadosAuxiliar number;
    contadorDias number := 1;
BEGIN
        
    SELECT COUNT(topPersonaAleatoria.persona) INTO infectados
    FROM (SELECT personaAleatoria.persona persona, personaAleatoria.condicion condicion , personaAleatoria.nombre nombre
            FROM (SELECT p.codigo_persona persona, cp.fk_condicion condicion , p.datos_basicos.primer_nombre nombre
                    FROM Condicion_persona cp, Persona p, Lugar estado, Lugar pa
                    WHERE (cp.FK_Condicion = 1 OR cp.FK_Condicion = 2)
                    AND cp.fk_persona = p.codigo_persona 
                    AND p.FK_LUGAR = estado.codigo_lugar
                    AND estado.fk_lugar = pa.codigo_lugar
                    AND pa.codigo_lugar=pais
                    ORDER BY DBMS_RANDOM.RANDOM) personaAleatoria
            WHERE rownum <= poblacion) topPersonaAleatoria
    WHERE topPersonaAleatoria.condicion = 2;

    infectadosAuxiliar := infectados;

    WHILE (contadorDias <= dias) AND (infectados <= poblacion)
    LOOP
        infectados := infectados*R0;
        contadorDias := contadorDias+1;
    END LOOP;

    infectados := trunc(infectados);
    infectados := infectados-infectadosAuxiliar;

    UPDATE Condicion_Persona
    SET fk_condicion = 2
    WHERE fk_persona IN (SELECT personaAleatoria.condicion
                            FROM (SELECT p.codigo_persona persona, cp.fk_persona condicion , p.datos_basicos.primer_nombre nombre
                                    FROM Condicion_persona cp, Persona p, Lugar estado, Lugar pa
                                    WHERE cp.FK_Condicion = 1
                                    AND cp.fk_persona = p.codigo_persona 
                                    AND p.FK_LUGAR = estado.codigo_lugar
                                    AND estado.fk_lugar = pa.codigo_lugar
                                    AND pa.codigo_lugar = pais
                                    ORDER BY DBMS_RANDOM.RANDOM) personaAleatoria
                            WHERE rownum <= infectados);
END;


-- RECUPERACIONES Y FALLECIDOS

CREATE OR REPLACE PROCEDURE Recuperaciones(dias number)
IS
    persona number := 1;
    patologiaInfectado number;
    condicion number;
    porcentajeCaso0 float := 80;
    porcentajeCaso1 float := 65;
    porcentajeCaso2 float := 45;
BEGIN
    WHILE (persona <= 10000)
    LOOP
        SELECT COUNT(pp.fk_persona) INTO patologiaInfectado
        FROM Persona_Patologia pp
        WHERE pp.fk_persona = persona;

        SELECT fk_condicion INTO condicion
        FROM Condicion_Persona cp
        WHERE cp.fk_persona = persona;

        IF ((patologiaInfectado = 0) AND (condicion = 2)) THEN
            CasosDeRecuperacion(persona, dias, porcentajeCaso0);
        ELSIF ((patologiaInfectado = 1) AND (condicion = 2))  THEN
            CasosDeRecuperacion(persona, dias, porcentajeCaso1);
        ELSIF ((patologiaInfectado = 2) AND (condicion = 2))  THEN
            CasosDeRecuperacion(persona, dias, porcentajeCaso2);
        END IF;

        persona := persona+1;
    END LOOP;
END;




CREATE OR REPLACE PROCEDURE CasosDeRecuperacion(persona number, dias number, porcentajeRecuperacion float)
IS
    contadorDias number := 1;
    flag number := 0;
    fluctuacion number;
    porcentajeSubida number;
    porcentajeBajada number;
    porcentaje number;
BEGIN
    porcentaje := porcentajeRecuperacion;                                              
    IF (porcentajeRecuperacion = 80)THEN
        porcentajeSubida := 2;
        porcentajeBajada := -1;
    ELSIF (porcentajeRecuperacion = 65)THEN
        porcentajeSubida := 1;
        porcentajeBajada := -1;
    ELSIF (porcentajeRecuperacion = 45)THEN
        porcentajeSubida := 1;
        porcentajeBajada := -2;
    END IF;
        
    WHILE (contadorDias <= dias)
    LOOP
        fluctuacion := dbms_random.value(1, 2); 
        IF (fluctuacion = 1)THEN
            porcentaje := porcentaje+porcentajeSubida;
        ELSE
            porcentaje := porcentaje+porcentajeBajada;
        END IF;

        IF (porcentaje >= 90)THEN     --SE RECUPERA
            UPDATE Condicion_Persona 
            SET fk_condicion = 3
            WHERE fk_persona = persona;
            contadorDias := dias;
            flag := 1;
        ELSIF (porcentaje <= 30)THEN --FALLECE
            UPDATE Condicion_Persona 
            SET fk_condicion = 4
            WHERE fk_persona = persona;
            contadorDias := dias;
            flag := 1;
        END IF;

        contadorDias := contadorDias+1;
    END LOOP;

    IF (flag = 0)THEN
        UPDATE Condicion_Persona 
        SET fk_condicion = 3
        WHERE fk_persona = persona;
    END IF;
END;