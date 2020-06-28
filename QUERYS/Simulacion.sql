CREATE OR REPLACE PROCEDURE Simulacion(dias number)
IS
    
BEGIN
    Infecciones(dias);
    Recuperaciones(dias);    
END;

execute Simulacion(30); 


CREATE OR REPLACE PROCEDURE Infecciones(dias number)
IS
    pais number := 1;
    modelo number;
    poblacion number;
BEGIN
    WHILE (pais <= 10)
    LOOP
        SELECT MAX(m.codigo_aislamiento) INTO modelo 
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
    
        IF (modelo = 2) THEN
            LibreMovilidad(dias, pais, poblacion);
        ELSIF (modelo = 1) THEN
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
    tratados pls_integer;
    contadorTratados number;
    clinica number;
    estado number;
    personaInfectadaTratada number;
    noTratados number;
    contadorNoTratados number;
    sanos number;
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

    SELECT COUNT(p.codigo_persona) INTO sanos
    FROM Persona p, Condicion_persona cp, Lugar estado, Lugar pais
    WHERE cp.FK_Condicion = 1
    AND cp.fk_persona = p.codigo_persona 
    AND p.FK_LUGAR = estado.codigo_lugar
    AND estado.fk_lugar = pais.codigo_lugar
    AND pais.codigo_lugar=pais;

    infectadosAuxiliar := infectados;

    WHILE (contadorDias <= dias)
    LOOP
        IF (infectados*R0 <= sanos)THEN
            infectados := infectados*R0;
            contadorDias := contadorDias+1;
        ELSE 
            contadorDias := dias+1;
        END IF;     
    END LOOP;

    infectados := trunc(infectados);
    infectados := infectados-infectadosAuxiliar;
        
    UPDATE Condicion_Persona
    SET fk_condicion = 2
    WHERE fk_persona IN (SELECT personaAleatoria.condicion
                            FROM (SELECT cp.fk_persona condicion
                                    FROM Condicion_persona cp, Persona p, Lugar estado, Lugar pa
                                    WHERE cp.FK_Condicion = 1
                                    AND cp.fk_persona = p.codigo_persona 
                                    AND p.FK_LUGAR = estado.codigo_lugar
                                    AND estado.fk_lugar = pa.codigo_lugar
                                    AND pa.codigo_lugar = pais
                                    ORDER BY DBMS_RANDOM.RANDOM) personaAleatoria
                            WHERE rownum <= infectados);

    IF(infectados <> 0)THEN
        tratados := dbms_random.value(1, infectados);
        DBMS_OUTPUT.put_line ('Tratados:'||tratados);
        contadorTratados := 1;
        WHILE (contadorTratados <= tratados)
        LOOP
            SELECT personaAleatoria.condicion INTO personaInfectadaTratada
            FROM (SELECT cp.fk_persona condicion
                    FROM Condicion_persona cp, Persona p, Lugar estado, Lugar pa
                    WHERE cp.FK_Condicion = 2
                    AND cp.fk_persona = p.codigo_persona 
                    AND p.FK_LUGAR = estado.codigo_lugar
                    AND estado.fk_lugar = pa.codigo_lugar
                    AND pa.codigo_lugar = pais
                    AND p.codigo_persona NOT IN (SELECT fk_persona FROM Persona_Clinica)
                    ORDER BY DBMS_RANDOM.RANDOM) personaAleatoria
            WHERE rownum = 1;
            SELECT p.fk_lugar INTO estado FROM persona p WHERE p.codigo_persona = personaInfectadaTratada;
            SELECT c.codigo_clinica INTO clinica FROM clinica c WHERE c.fk_lugar_clinica = estado;
            INSERT INTO Persona_Clinica(Tratado_persona_clinica, fk_persona, fk_clinica) VALUES ('SI', personaInfectadaTratada, clinica);
            contadorTratados := contadorTratados+1;
        END LOOP;

        noTratados := infectados-tratados;
        contadorNoTratados := 1;
        WHILE (contadorNoTratados <= noTratados)
        LOOP
            SELECT personaAleatoria.condicion INTO personaInfectadaTratada
            FROM (SELECT cp.fk_persona condicion
                    FROM Condicion_persona cp, Persona p, Lugar estado, Lugar pa
                    WHERE cp.FK_Condicion = 2
                    AND cp.fk_persona = p.codigo_persona 
                    AND p.FK_LUGAR = estado.codigo_lugar
                    AND estado.fk_lugar = pa.codigo_lugar
                    AND pa.codigo_lugar = pais
                    AND p.codigo_persona NOT IN (SELECT fk_persona FROM Persona_Clinica)
                    ORDER BY DBMS_RANDOM.RANDOM) personaAleatoria
            WHERE rownum = 1;
            INSERT INTO Persona_Clinica(Tratado_persona_clinica, fk_persona) VALUES ('NO', personaInfectadaTratada);
            contadorNoTratados := contadorNoTratados+1;
        END LOOP;
    END IF; 
END;




CREATE OR REPLACE PROCEDURE LibreMovilidad(dias number, pais number, poblacion number)
IS
    R0 float := 1.2;
    infectados number;
    infectadosAuxiliar number;
    contadorDias number := 1;
    poblacionSale pls_integer := dbms_random.value(100, poblacion);
    tratados pls_integer;
    contadorTratados number;
    clinica number;
    estado number;
    personaInfectadaTratada number;
    noTratados number;
    contadorNoTratados number;
    sanos number;
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
            WHERE rownum <= poblacionSale) topPersonaAleatoria
    WHERE topPersonaAleatoria.condicion = 2;

    SELECT COUNT(p.codigo_persona) INTO sanos
    FROM Persona p, Condicion_persona cp, Lugar estado, Lugar pais
    WHERE cp.FK_Condicion = 1
    AND cp.fk_persona = p.codigo_persona 
    AND p.FK_LUGAR = estado.codigo_lugar
    AND estado.fk_lugar = pais.codigo_lugar
    AND pais.codigo_lugar=pais;

    infectadosAuxiliar := infectados;

    WHILE (contadorDias <= dias)
    LOOP
        IF (infectados*R0 <= sanos)THEN
            infectados := infectados*R0;
            contadorDias := contadorDias+1;
        ELSE 
            contadorDias := dias+1;
        END IF;     
    END LOOP;

    infectados := trunc(infectados);
    infectados := infectados-infectadosAuxiliar;

    UPDATE Condicion_Persona
    SET fk_condicion = 2
    WHERE fk_persona IN (SELECT personaAleatoria.condicion
                            FROM (SELECT cp.fk_persona condicion
                                    FROM Condicion_persona cp, Persona p, Lugar estado, Lugar pa
                                    WHERE cp.FK_Condicion = 1
                                    AND cp.fk_persona = p.codigo_persona 
                                    AND p.FK_LUGAR = estado.codigo_lugar
                                    AND estado.fk_lugar = pa.codigo_lugar
                                    AND pa.codigo_lugar = pais
                                    ORDER BY DBMS_RANDOM.RANDOM) personaAleatoria
                            WHERE rownum <= infectados);

    IF(infectados <> 0)THEN
        tratados := dbms_random.value(1, infectados);
        contadorTratados := 1;
        WHILE (contadorTratados <= tratados)
        LOOP
            SELECT personaAleatoria.condicion INTO personaInfectadaTratada
            FROM (SELECT cp.fk_persona condicion
                    FROM Condicion_persona cp, Persona p, Lugar estado, Lugar pa
                    WHERE cp.FK_Condicion = 2
                    AND cp.fk_persona = p.codigo_persona 
                    AND p.FK_LUGAR = estado.codigo_lugar
                    AND estado.fk_lugar = pa.codigo_lugar
                    AND pa.codigo_lugar = pais
                    AND p.codigo_persona NOT IN (SELECT fk_persona FROM Persona_Clinica)
                    ORDER BY DBMS_RANDOM.RANDOM) personaAleatoria
            WHERE rownum = 1;
            SELECT p.fk_lugar INTO estado FROM persona p WHERE p.codigo_persona = personaInfectadaTratada;
            SELECT c.codigo_clinica INTO clinica FROM clinica c WHERE c.fk_lugar_clinica = estado;
            INSERT INTO Persona_Clinica(Tratado_persona_clinica, fk_persona, fk_clinica) VALUES ('SI', personaInfectadaTratada, clinica);
            contadorTratados := contadorTratados+1;
        END LOOP;

        noTratados := infectados-tratados;
        contadorNoTratados := 1;
        WHILE (contadorNoTratados <= noTratados)
        LOOP
            SELECT personaAleatoria.condicion INTO personaInfectadaTratada
            FROM (SELECT cp.fk_persona condicion
                    FROM Condicion_persona cp, Persona p, Lugar estado, Lugar pa
                    WHERE cp.FK_Condicion = 2
                    AND cp.fk_persona = p.codigo_persona 
                    AND p.FK_LUGAR = estado.codigo_lugar
                    AND estado.fk_lugar = pa.codigo_lugar
                    AND pa.codigo_lugar = pais
                    AND p.codigo_persona NOT IN (SELECT fk_persona FROM Persona_Clinica)
                    ORDER BY DBMS_RANDOM.RANDOM) personaAleatoria
            WHERE rownum = 1;
            INSERT INTO Persona_Clinica(Tratado_persona_clinica, fk_persona) VALUES ('NO', personaInfectadaTratada);
            contadorNoTratados := contadorNoTratados+1;
        END LOOP;
    END IF;
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
    fluctuacion pls_integer;
    porcentajeSubida number;
    porcentajeBajada number;
    porcentaje number;
BEGIN
    porcentaje := porcentajeRecuperacion;                                              
    IF (porcentajeRecuperacion = 80)THEN
        porcentajeSubida := 2.5;
        porcentajeBajada := -1;
    ELSIF (porcentajeRecuperacion = 65)THEN
        porcentajeSubida := 2;
        porcentajeBajada := -1;
    ELSIF (porcentajeRecuperacion = 45)THEN
        porcentajeSubida := 1;
        porcentajeBajada := -1.5;
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
        ELSIF (porcentaje <= 20)THEN --FALLECE
            UPDATE Condicion_Persona 
            SET fk_condicion = 4
            WHERE fk_persona = persona;
            contadorDias := dias;
            flag := 1;
        END IF;

        contadorDias := contadorDias+1;
    END LOOP;

END;