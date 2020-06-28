-- REPORTE 1
CREATE OR REPLACE PROCEDURE Reporte1(CursorReporte1 out SYS_REFCURSOR, paisDado varchar, estadoDado varchar, edadDada number, patologiaDada varchar)
IS
    anoActual varchar(20);
    anoNacimiento varchar(20);
    inicioAno varchar(20) :='01/01/';
    finAno varchar(20) :='31/12/';
    a1 varchar(20);
    a2 varchar(20);
BEGIN
    IF (paisDado IS NOT NULL) AND (estadoDado IS NULL) AND (edadDada IS NULL) AND (patologiaDada IS NULL) THEN
        OPEN CursorReporte1 FOR
       SELECT (SELECT p.foto_persona FROM persona p WHERE p.codigo_persona = tabla.codigo) foto, 
            (SELECT p.datos_basicos.primer_nombre FROM persona p WHERE p.codigo_persona = tabla.codigo) primerNombre,
            (SELECT p.datos_basicos.segundo_nombre FROM persona p WHERE p.codigo_persona = tabla.codigo) segundoNombre,
            (SELECT p.datos_basicos.primer_apellido FROM persona p WHERE p.codigo_persona = tabla.codigo) primerApellido,
            (SELECT p.datos_basicos.segundo_apellido FROM persona p WHERE p.codigo_persona = tabla.codigo) segundoApellido,
            (SELECT p.datos_basicos.fecha_nacimiento FROM persona p WHERE p.codigo_persona = tabla.codigo) fechaNacimiento,
            (SELECT p.genero FROM persona p WHERE p.codigo_persona = tabla.codigo) genero,
            (SELECT l.bandera_lugar FROM lugar l WHERE l.codigo_lugar = tabla.pais) bandera,
            (SELECT l.nombre_lugar FROM lugar l WHERE l.codigo_lugar = tabla.estado) estado,
            tabla.patologias patologias          
        FROM (SELECT pe.codigo_persona codigo, pa.codigo_lugar pais, es.codigo_lugar estado, listagg( pat.nombre_patologia, ',') WITHIN GROUP (ORDER BY pat.nombre_patologia) patologias                 
                FROM Lugar es, Lugar pa, condicion_persona cp, Persona pe LEFT OUTER JOIN persona_patologia ppa ON ppa.fk_persona = pe.codigo_persona LEFT OUTER JOIN patologia pat ON ppa.fk_patologia = pat.codigo_patologia
                WHERE cp.fk_Condicion = 2
                AND cp.fk_persona = pe.codigo_persona 
                AND pe.fk_lugar = es.codigo_lugar
                AND es.fk_lugar = pa.codigo_lugar
                AND pa.nombre_lugar = paisDado
                AND cp.fk_persona = pe.codigo_persona 
                GROUP BY pe.codigo_persona, pa.codigo_lugar, es.codigo_lugar) tabla;

    ELSIF (paisDado IS NULL) AND (estadoDado IS NOT NULL) AND (edadDada IS NULL) AND (patologiaDada IS NULL) THEN
        OPEN CursorReporte1 FOR
        SELECT (SELECT p.foto_persona FROM persona p WHERE p.codigo_persona = tabla.codigo) foto, 
               (SELECT p.datos_basicos.primer_nombre FROM persona p WHERE p.codigo_persona = tabla.codigo) primerNombre,
               (SELECT p.datos_basicos.segundo_nombre FROM persona p WHERE p.codigo_persona = tabla.codigo) segundoNombre,
               (SELECT p.datos_basicos.primer_apellido FROM persona p WHERE p.codigo_persona = tabla.codigo) primerApellido,
               (SELECT p.datos_basicos.segundo_apellido FROM persona p WHERE p.codigo_persona = tabla.codigo) segundoApellido,
               (SELECT p.datos_basicos.fecha_nacimiento FROM persona p WHERE p.codigo_persona = tabla.codigo) fechaNacimiento,
               (SELECT p.genero FROM persona p WHERE p.codigo_persona = tabla.codigo) genero,
                l.bandera_lugar bandera,
               (SELECT l.nombre_lugar FROM lugar l WHERE l.codigo_lugar = tabla.estado) estado,
                tabla.patologias patologias          
        FROM (SELECT pe.codigo_persona codigo, es.codigo_lugar estado, es.fk_lugar pais, listagg( pat.nombre_patologia, ',') WITHIN GROUP (ORDER BY pat.nombre_patologia) patologias                 
                FROM Lugar es, condicion_persona cp, Persona pe LEFT OUTER JOIN persona_patologia ppa ON ppa.fk_persona = pe.codigo_persona LEFT OUTER JOIN patologia pat ON ppa.fk_patologia = pat.codigo_patologia
                WHERE cp.fk_Condicion = 2
                AND cp.fk_persona = pe.codigo_persona 
                AND pe.fk_lugar = es.codigo_lugar
                AND es.nombre_lugar = estadoDado
                AND cp.fk_persona = pe.codigo_persona 
                AND ppa.fk_persona = pe.codigo_persona
                AND ppa.fk_patologia = pat.codigo_patologia
                GROUP BY pe.codigo_persona, es.codigo_lugar, es.fk_lugar) tabla, lugar l
        WHERE tabla.pais = l.codigo_lugar;
                
    ELSIF (paisDado IS NULL) AND (estadoDado IS NULL) AND (edadDada IS NOT NULL) AND (patologiaDada IS NULL) THEN
        SELECT to_char(sysdate, 'YYYY') INTO anoActual FROM dual;
        anoNacimiento := anoActual-edadDada;
        a1 := CONCAT(inicioAno,anoNacimiento);
        a2 := CONCAT(finAno,anoNacimiento);
        OPEN CursorReporte1 FOR
        SELECT (SELECT p.foto_persona FROM persona p WHERE p.codigo_persona = tabla.codigo) foto, 
            (SELECT p.datos_basicos.primer_nombre FROM persona p WHERE p.codigo_persona = tabla.codigo) primerNombre,
            (SELECT p.datos_basicos.segundo_nombre FROM persona p WHERE p.codigo_persona = tabla.codigo) segundoNombre,
            (SELECT p.datos_basicos.primer_apellido FROM persona p WHERE p.codigo_persona = tabla.codigo) primerApellido,
            (SELECT p.datos_basicos.segundo_apellido FROM persona p WHERE p.codigo_persona = tabla.codigo) segundoApellido,
            (SELECT p.datos_basicos.fecha_nacimiento FROM persona p WHERE p.codigo_persona = tabla.codigo) fechaNacimiento,
            (SELECT p.genero FROM persona p WHERE p.codigo_persona = tabla.codigo) genero,
            (SELECT l.bandera_lugar FROM lugar l WHERE l.codigo_lugar = tabla.pais) bandera,
            (SELECT l.nombre_lugar FROM lugar l WHERE l.codigo_lugar = tabla.estado) estado,
                tabla.patologias patologias          
        FROM (SELECT pe.codigo_persona codigo, pa.codigo_lugar pais, es.codigo_lugar estado, listagg( pat.nombre_patologia, ',') WITHIN GROUP (ORDER BY pat.nombre_patologia) patologias                 
                FROM Lugar es, lugar pa, condicion_persona cp, Persona pe LEFT OUTER JOIN persona_patologia ppa ON ppa.fk_persona = pe.codigo_persona LEFT OUTER JOIN patologia pat ON ppa.fk_patologia = pat.codigo_patologia
                WHERE cp.fk_Condicion = 2
                AND cp.fk_persona = pe.codigo_persona 
                AND pe.fk_lugar = es.codigo_lugar
                AND es.fk_lugar = pa.codigo_lugar
                AND pe.datos_basicos.fecha_nacimiento BETWEEN a1 AND a2
                GROUP BY pe.codigo_persona, pa.codigo_lugar, es.codigo_lugar) tabla;

    ELSIF (paisDado IS NULL) AND (estadoDado IS NULL) AND (edadDada IS NULL) AND (patologiaDada IS NOT NULL) THEN

        IF (patologiaDada = 'SI')THEN
            OPEN CursorReporte1 FOR
            SELECT (SELECT p.foto_persona FROM persona p WHERE p.codigo_persona = tabla.codigo) foto, 
                (SELECT p.datos_basicos.primer_nombre FROM persona p WHERE p.codigo_persona = tabla.codigo) primerNombre,
                (SELECT p.datos_basicos.segundo_nombre FROM persona p WHERE p.codigo_persona = tabla.codigo) segundoNombre,
                (SELECT p.datos_basicos.primer_apellido FROM persona p WHERE p.codigo_persona = tabla.codigo) primerApellido,
                (SELECT p.datos_basicos.segundo_apellido FROM persona p WHERE p.codigo_persona = tabla.codigo) segundoApellido,
                (SELECT p.datos_basicos.fecha_nacimiento FROM persona p WHERE p.codigo_persona = tabla.codigo) fechaNacimiento,
                (SELECT p.genero FROM persona p WHERE p.codigo_persona = tabla.codigo) genero,
                (SELECT l.bandera_lugar FROM lugar l WHERE l.codigo_lugar = tabla.pais) bandera,
                (SELECT l.nombre_lugar FROM lugar l WHERE l.codigo_lugar = tabla.estado) estado,
                tabla.patologias patologias          
            FROM (SELECT pe.codigo_persona codigo, pa.codigo_lugar pais, es.codigo_lugar estado, listagg( pat.nombre_patologia, ',') WITHIN GROUP (ORDER BY pat.nombre_patologia) patologias                 
                    FROM Lugar es, lugar pa, condicion_persona cp, Persona pe, persona_patologia ppa, patologia pat
                    WHERE cp.fk_Condicion = 2
                    AND cp.fk_persona = pe.codigo_persona 
                    AND pe.fk_lugar = es.codigo_lugar
                    AND es.fk_lugar = pa.codigo_lugar
                    AND ppa.fk_persona = pe.codigo_persona
                    AND ppa.fk_patologia = pat.codigo_patologia
                    GROUP BY pe.codigo_persona, pa.codigo_lugar, es.codigo_lugar) tabla; 
        ELSIF (patologiaDada = 'NO')THEN
            OPEN CursorReporte1 FOR
            SELECT pe.foto_persona foto, pe.datos_basicos.primer_nombre primerNombre, pe.datos_basicos.segundo_nombre segundoNombre, pe.datos_basicos.primer_apellido primerApellido, pe.datos_basicos.segundo_apellido segundoApellido, pe.datos_basicos.fecha_nacimiento fechaNacimiento, pais.bandera_lugar bandera, pe.genero genero, estado.nombre_lugar estado, null patologias
            FROM persona pe, lugar pais, lugar estado, condicion_persona cp
            WHERE cp.fk_Condicion = 2
            AND cp.fk_persona = pe.codigo_persona 
            AND pe.fk_lugar = estado.codigo_lugar
            AND estado.fk_lugar = pais.codigo_lugar
            AND pe.codigo_persona NOT IN (SELECT DISTINCT fk_persona FROM persona_patologia);  
        END IF;

    ELSIF (paisDado IS NOT NULL) AND (estadoDado IS NOT NULL) AND (edadDada IS NOT NULL) AND (patologiaDada IS NOT NULL) THEN
        IF (patologiaDada = 'SI') THEN
            SELECT to_char(sysdate, 'YYYY') INTO anoActual FROM dual;
            anoNacimiento := anoActual-edadDada;
            a1 := CONCAT(inicioAno,anoNacimiento);
            a2 := CONCAT(finAno,anoNacimiento);
            OPEN CursorReporte1 FOR
            SELECT (SELECT p.foto_persona FROM persona p WHERE p.codigo_persona = tabla.codigo) foto, 
                (SELECT p.datos_basicos.primer_nombre FROM persona p WHERE p.codigo_persona = tabla.codigo) primerNombre,
                (SELECT p.datos_basicos.segundo_nombre FROM persona p WHERE p.codigo_persona = tabla.codigo) segundoNombre,
                (SELECT p.datos_basicos.primer_apellido FROM persona p WHERE p.codigo_persona = tabla.codigo) primerApellido,
                (SELECT p.datos_basicos.segundo_apellido FROM persona p WHERE p.codigo_persona = tabla.codigo) segundoApellido,
                (SELECT p.datos_basicos.fecha_nacimiento FROM persona p WHERE p.codigo_persona = tabla.codigo) fechaNacimiento,
                (SELECT p.genero FROM persona p WHERE p.codigo_persona = tabla.codigo) genero,
                (SELECT l.bandera_lugar FROM lugar l WHERE l.codigo_lugar = tabla.pais) bandera,
                (SELECT l.nombre_lugar FROM lugar l WHERE l.codigo_lugar = tabla.estado) estado,
                tabla.patologias patologias          
            FROM (SELECT pe.codigo_persona codigo, pa.codigo_lugar pais, es.codigo_lugar estado, listagg( pat.nombre_patologia, ',') WITHIN GROUP (ORDER BY pat.nombre_patologia) patologias                 
                    FROM Lugar es, lugar pa, condicion_persona cp, Persona pe, persona_patologia ppa, patologia pat
                    WHERE cp.fk_Condicion = 2
                    AND cp.fk_persona = pe.codigo_persona 
                    AND pe.fk_lugar = es.codigo_lugar
                    AND es.codigo_lugar = estadoDado
                    AND es.fk_lugar = pa.codigo_lugar
                    AND ppa.fk_persona = pe.codigo_persona
                    AND ppa.fk_patologia = pat.codigo_patologia
                    AND pe.datos_basicos.fecha_nacimiento BETWEEN a1 AND a2
                    GROUP BY pe.codigo_persona, pa.codigo_lugar, es.codigo_lugar) tabla; 

        ELSIF (patologiaDada = 'NO') THEN
            SELECT to_char(sysdate, 'YYYY') INTO anoActual FROM dual;
            anoNacimiento := anoActual-edadDada;
            a1 := CONCAT(inicioAno,anoNacimiento);
            a2 := CONCAT(finAno,anoNacimiento);
            OPEN CursorReporte1 FOR
            SELECT (SELECT p.foto_persona FROM persona p WHERE p.codigo_persona = tabla.codigo) foto, 
                (SELECT p.datos_basicos.primer_nombre FROM persona p WHERE p.codigo_persona = tabla.codigo) primerNombre,
                (SELECT p.datos_basicos.segundo_nombre FROM persona p WHERE p.codigo_persona = tabla.codigo) segundoNombre,
                (SELECT p.datos_basicos.primer_apellido FROM persona p WHERE p.codigo_persona = tabla.codigo) primerApellido,
                (SELECT p.datos_basicos.segundo_apellido FROM persona p WHERE p.codigo_persona = tabla.codigo) segundoApellido,
                (SELECT p.datos_basicos.fecha_nacimiento FROM persona p WHERE p.codigo_persona = tabla.codigo) fechaNacimiento,
                (SELECT p.genero FROM persona p WHERE p.codigo_persona = tabla.codigo) genero,
                (SELECT l.bandera_lugar FROM lugar l WHERE l.codigo_lugar = tabla.pais) bandera,
                (SELECT l.nombre_lugar FROM lugar l WHERE l.codigo_lugar = tabla.estado) estado,
                null patologias          
            FROM (SELECT pe.codigo_persona codigo, pa.codigo_lugar pais, es.codigo_lugar estado                
                    FROM Lugar es, lugar pa, condicion_persona cp, Persona pe
                    WHERE cp.fk_Condicion = 2
                    AND cp.fk_persona = pe.codigo_persona 
                    AND pe.fk_lugar = es.codigo_lugar
                    AND es.codigo_lugar = estadoDado
                    AND es.fk_lugar = pa.codigo_lugar
                    AND pe.datos_basicos.fecha_nacimiento BETWEEN a1 AND a2
                    GROUP BY pe.codigo_persona, pa.codigo_lugar, es.codigo_lugar) tabla
            WHERE tabla.codigo NOT IN (SELECT DISTINCT fk_persona FROM persona_patologia);

        END IF;
    END IF;
END;


-- REPORTE 4
CREATE OR REPLACE PROCEDURE Reporte4(CursorReporte4 out SYS_REFCURSOR, paisDado varchar, estadoDado varchar)
IS  
BEGIN       
    IF (paisDado IS NOT NULL) AND (estadoDado IS NULL) THEN
        OPEN CursorReporte4 FOR
        SELECT pais.bandera_lugar bandera, estado.nombre_lugar estado, pais.poblacion_lugar poblacionPais,
            (SELECT COUNT(p.codigo_persona)FROM Persona p, Condicion_persona cp WHERE cp.FK_Condicion = 2 AND cp.fk_persona = p.codigo_persona AND p.FK_LUGAR = estado.codigo_lugar) infectados,
            ((SELECT COUNT(p.codigo_persona)FROM Persona p, Condicion_persona cp WHERE cp.FK_Condicion = 2 AND cp.fk_persona = p.codigo_persona AND p.FK_LUGAR = estado.codigo_lugar)/pais.poblacion_lugar)*100 porcentajeInfectados,
            (SELECT COUNT(p.codigo_persona)FROM Persona p, Condicion_persona cp WHERE cp.FK_Condicion = 3 AND cp.fk_persona = p.codigo_persona AND p.FK_LUGAR = estado.codigo_lugar) recuperados,
            ((SELECT COUNT(p.codigo_persona)FROM Persona p, Condicion_persona cp WHERE cp.FK_Condicion = 3 AND cp.fk_persona = p.codigo_persona AND p.FK_LUGAR = estado.codigo_lugar)/pais.poblacion_lugar)*100 porcentajeRecuperados,
            (SELECT COUNT(p.codigo_persona)FROM Persona p, Condicion_persona cp WHERE cp.FK_Condicion = 4 AND cp.fk_persona = p.codigo_persona AND p.FK_LUGAR = estado.codigo_lugar) fallecidos,
            ((SELECT COUNT(p.codigo_persona)FROM Persona p, Condicion_persona cp WHERE cp.FK_Condicion = 4 AND cp.fk_persona = p.codigo_persona AND p.FK_LUGAR = estado.codigo_lugar)/pais.poblacion_lugar)*100 porcentajeFallecidos       
        FROM lugar estado, lugar Pais
        WHERE estado.fk_lugar = pais.codigo_lugar
        AND pais.nombre_lugar = paisDado;

    ELSIF (paisDado IS NULL) AND (estadoDado IS NOT NULL) THEN
        OPEN CursorReporte4 FOR
        SELECT pais.bandera_lugar bandera, estado.nombre_lugar estado, pais.poblacion_lugar poblacionPais,
            (SELECT COUNT(p.codigo_persona)FROM Persona p, Condicion_persona cp WHERE cp.FK_Condicion = 2 AND cp.fk_persona = p.codigo_persona AND p.FK_LUGAR = estado.codigo_lugar) infectados,
            ((SELECT COUNT(p.codigo_persona)FROM Persona p, Condicion_persona cp WHERE cp.FK_Condicion = 2 AND cp.fk_persona = p.codigo_persona AND p.FK_LUGAR = estado.codigo_lugar)/pais.poblacion_lugar)*100 porcentajeInfectados,
            (SELECT COUNT(p.codigo_persona)FROM Persona p, Condicion_persona cp WHERE cp.FK_Condicion = 3 AND cp.fk_persona = p.codigo_persona AND p.FK_LUGAR = estado.codigo_lugar) recuperados,
            ((SELECT COUNT(p.codigo_persona)FROM Persona p, Condicion_persona cp WHERE cp.FK_Condicion = 3 AND cp.fk_persona = p.codigo_persona AND p.FK_LUGAR = estado.codigo_lugar)/pais.poblacion_lugar)*100 porcentajeRecuperados,
            (SELECT COUNT(p.codigo_persona)FROM Persona p, Condicion_persona cp WHERE cp.FK_Condicion = 4 AND cp.fk_persona = p.codigo_persona AND p.FK_LUGAR = estado.codigo_lugar) fallecidos,
            ((SELECT COUNT(p.codigo_persona)FROM Persona p, Condicion_persona cp WHERE cp.FK_Condicion = 4 AND cp.fk_persona = p.codigo_persona AND p.FK_LUGAR = estado.codigo_lugar)/pais.poblacion_lugar)*100 porcentajeFallecidos       
        FROM lugar estado, lugar Pais
        WHERE estado.nombre_lugar = estadoDado
        AND estado.fk_lugar = pais.codigo_lugar;

    ELSIF (paisDado IS NOT NULL) AND (estadoDado IS NOT NULL) THEN
        OPEN CursorReporte4 FOR
        SELECT pais.bandera_lugar bandera, estado.nombre_lugar estado, pais.poblacion_lugar poblacionPais,
            (SELECT COUNT(p.codigo_persona)FROM Persona p, Condicion_persona cp WHERE cp.FK_Condicion = 2 AND cp.fk_persona = p.codigo_persona AND p.FK_LUGAR = estado.codigo_lugar) infectados,
            ((SELECT COUNT(p.codigo_persona)FROM Persona p, Condicion_persona cp WHERE cp.FK_Condicion = 2 AND cp.fk_persona = p.codigo_persona AND p.FK_LUGAR = estado.codigo_lugar)/pais.poblacion_lugar)*100 porcentajeInfectados,
            (SELECT COUNT(p.codigo_persona)FROM Persona p, Condicion_persona cp WHERE cp.FK_Condicion = 3 AND cp.fk_persona = p.codigo_persona AND p.FK_LUGAR = estado.codigo_lugar) recuperados,
            ((SELECT COUNT(p.codigo_persona)FROM Persona p, Condicion_persona cp WHERE cp.FK_Condicion = 3 AND cp.fk_persona = p.codigo_persona AND p.FK_LUGAR = estado.codigo_lugar)/pais.poblacion_lugar)*100 porcentajeRecuperados,
            (SELECT COUNT(p.codigo_persona)FROM Persona p, Condicion_persona cp WHERE cp.FK_Condicion = 4 AND cp.fk_persona = p.codigo_persona AND p.FK_LUGAR = estado.codigo_lugar) fallecidos,
            ((SELECT COUNT(p.codigo_persona)FROM Persona p, Condicion_persona cp WHERE cp.FK_Condicion = 4 AND cp.fk_persona = p.codigo_persona AND p.FK_LUGAR = estado.codigo_lugar)/pais.poblacion_lugar)*100 porcentajeFallecidos       
        FROM lugar estado, lugar Pais
        WHERE estado.fk_lugar = pais.codigo_lugar
        AND pais.nombre_lugar = paisDado
        AND estado.nombre_lugar = estadoDado;    
    END IF;
END;


-- REPORTE 5
CREATE OR REPLACE PROCEDURE Reporte5 (cursorReporte5 OUT SYS_REFCURSOR, pais varchar, modeloAplicado varchar)
IS
BEGIN
    IF ((pais IS NOT NULL) AND (modeloAplicado IS NULL)) THEN
        OPEN cursorReporte5 FOR
        SELECT p.Bandera_lugar bandera, lm.Fecha_Lugar_Modelo.fecha_inicio fechaInicio, lm.Fecha_Lugar_Modelo.fecha_fin fechaFin, Modelo.Nombre_Aislamiento nombreModelo
        FROM  Lugar p, Lugar_Modelo lm, Modelo_Aislamiento Modelo
        WHERE p.Codigo_Lugar = lm.FK_Lugar
        AND pais = p.Nombre_lugar
        AND lm.FK_Modelo_Aislamiento = Modelo.Codigo_aislamiento;
    ELSIF ((modeloAplicado IS NOT NULL) AND (pais IS NULL)) THEN
        OPEN cursorReporte5 FOR
        SELECT p.Bandera_lugar bandera, lm.Fecha_Lugar_Modelo.fecha_inicio fechaInicio, lm.Fecha_Lugar_Modelo.fecha_fin fechaFin, Modelo.Nombre_Aislamiento nombreModelo        
        FROM  Lugar p, Lugar_Modelo lm, Modelo_Aislamiento Modelo
        WHERE p.Codigo_Lugar = lm.FK_Lugar
        AND modeloAplicado = Modelo.Nombre_aislamiento
        AND lm.FK_Modelo_Aislamiento = Modelo.Codigo_aislamiento;
    ELSIF ((modeloAplicado IS NOT NULL) AND (pais <> NULL)) THEN
        OPEN cursorReporte5 FOR
        SELECT p.Bandera_lugar bandera, lm.Fecha_Lugar_Modelo.fecha_inicio fechaInicio, lm.Fecha_Lugar_Modelo.fecha_fin fechaFin, Modelo.Nombre_Aislamiento nombreModelo        
        FROM  Lugar p, Lugar_Modelo lm, Modelo_Aislamiento Modelo
        WHERE p.Codigo_Lugar = lm.FK_Lugar
        AND pais = p.Nombre_lugar
        AND modeloAplicado = Modelo.Nombre_aislamiento 
        AND lm.FK_Modelo_Aislamiento = Modelo.Codigo_aislamiento;  
    END IF;
END;
