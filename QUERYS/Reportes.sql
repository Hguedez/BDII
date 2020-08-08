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

    END IF;
END;


--REPORTE 2
CREATE OR REPLACE PROCEDURE Reporte2(CursorReporte2 out SYS_REFCURSOR, paisDado varchar, estadoDado varchar, edadDada number)
IS  
    anoActual varchar(20);
    anoNacimiento varchar(20);
    inicioAno varchar(20) :='01/01/';
    finAno varchar(20) :='31/12/';
    a1 varchar(20);
    a2 varchar(20);
BEGIN 
    IF (paisDado IS NOT NULL) AND (estadoDado IS NULL) AND (edadDada IS NULL) THEN        
        OPEN CursorReporte2 FOR
        SELECT tabla.codigo codigoPersona,
                (SELECT p.foto_persona FROM persona p WHERE p.codigo_persona = tabla.codigo) foto, 
                (SELECT p.datos_basicos.primer_nombre FROM persona p WHERE p.codigo_persona = tabla.codigo) primerNombre,
                (SELECT p.datos_basicos.segundo_nombre FROM persona p WHERE p.codigo_persona = tabla.codigo) segundoNombre,
                (SELECT p.datos_basicos.primer_apellido FROM persona p WHERE p.codigo_persona = tabla.codigo) primerApellido,
                (SELECT p.datos_basicos.segundo_apellido FROM persona p WHERE p.codigo_persona = tabla.codigo) segundoApellido,
                (SELECT (Extract(YEAR from sysdate)-Extract(YEAR from p.datos_basicos.fecha_nacimiento)) FROM persona p WHERE p.codigo_persona = tabla.codigo) Edad,
                (SELECT p.genero FROM persona p WHERE p.codigo_persona = tabla.codigo) genero,
                (SELECT l.bandera_lugar FROM lugar l WHERE l.codigo_lugar = tabla.pais) bandera,
                (SELECT l.nombre_lugar FROM lugar l WHERE l.codigo_lugar = tabla.estado) estado,
                (SELECT pc.Tratado_persona_clinica from Persona_clinica pc where pc.FK_persona = tabla.codigo) tratado,
                    tabla.patologias patologias,
                    tabla2.sintomas sintomas,
                    tabla2.fecha fecha              
            FROM (SELECT pe.codigo_persona codigo, pa.codigo_lugar pais, es.codigo_lugar estado, listagg( pat.nombre_patologia, ',') WITHIN GROUP (ORDER BY pat.nombre_patologia) patologias              
                    FROM Lugar es, Lugar pa,
                    Persona pe LEFT OUTER JOIN persona_patologia ppa ON ppa.fk_persona = pe.codigo_persona LEFT OUTER JOIN patologia pat ON ppa.fk_patologia = pat.codigo_patologia
                    WHERE  pe.fk_lugar = es.codigo_lugar 
                    AND es.fk_lugar = pa.codigo_lugar
                    AND pa.nombre_lugar = paisDado
                    GROUP BY pe.codigo_persona, pa.codigo_lugar, es.codigo_lugar) tabla,
                (SELECT pe.codigo_persona codigo, es.codigo_lugar estado, min(ps.fecha_sintoma) fecha, listagg( s.Nombre_sintoma, ',') WITHIN GROUP (ORDER BY s.Nombre_sintoma) sintomas
                    FROM Lugar es, Lugar pa, Persona_sintoma ps, Sintoma s, Persona pe
                    WHERE pe.FK_lugar = es.codigo_lugar
                    AND es.fk_lugar = pa.codigo_lugar
                    AND pa.nombre_lugar = paisDado
                    AND ps.FK_Persona = Pe.codigo_persona
                    AND ps.FK_Sintoma = s.Codigo_sintoma
                    GROUP BY pe.codigo_persona, es.codigo_lugar) tabla2, condicion_persona cp
            WHERE tabla.codigo = tabla2.codigo
            AND(cp.fk_Condicion = 2 OR cp.fk_Condicion = 1)
            AND cp.fk_persona = tabla.codigo
            AND tabla.estado = tabla2.estado;

        ELSIF (paisDado IS NULL) AND (estadoDado IS NOT NULL) AND (edadDada IS NULL) THEN
            OPEN CursorReporte2 FOR
            SELECT tabla.codigo codigoPersona,
                (SELECT p.foto_persona FROM persona p WHERE p.codigo_persona = tabla.codigo) foto, 
                (SELECT p.datos_basicos.primer_nombre FROM persona p WHERE p.codigo_persona = tabla.codigo) primerNombre,
                (SELECT p.datos_basicos.segundo_nombre FROM persona p WHERE p.codigo_persona = tabla.codigo) segundoNombre,
                (SELECT p.datos_basicos.primer_apellido FROM persona p WHERE p.codigo_persona = tabla.codigo) primerApellido,
                (SELECT p.datos_basicos.segundo_apellido FROM persona p WHERE p.codigo_persona = tabla.codigo) segundoApellido,
                (SELECT (Extract(YEAR from sysdate)-Extract(YEAR from p.datos_basicos.fecha_nacimiento)) FROM persona p WHERE p.codigo_persona = tabla.codigo) Edad,
                (SELECT p.genero FROM persona p WHERE p.codigo_persona = tabla.codigo) genero,
                (SELECT l.bandera_lugar FROM lugar l WHERE l.codigo_lugar = tabla.pais) bandera,
                (SELECT l.nombre_lugar FROM lugar l WHERE l.codigo_lugar = tabla.estado) estado,
                (SELECT pc.Tratado_persona_clinica from Persona_clinica pc where pc.FK_persona = tabla.codigo) tratado,
                    tabla.patologias patologias,
                    tabla2.sintomas sintomas,
                    tabla2.fecha fecha               
            FROM (SELECT pe.codigo_persona codigo, pa.codigo_lugar pais, es.codigo_lugar estado, listagg( pat.nombre_patologia, ',') WITHIN GROUP (ORDER BY pat.nombre_patologia) patologias              
                    FROM Lugar es, Lugar pa,
                    Persona pe LEFT OUTER JOIN persona_patologia ppa ON ppa.fk_persona = pe.codigo_persona LEFT OUTER JOIN patologia pat ON ppa.fk_patologia = pat.codigo_patologia
                    WHERE  pe.fk_lugar = es.codigo_lugar 
                    AND es.nombre_lugar = estadoDado
                    AND es.fk_lugar = pa.codigo_lugar
                    GROUP BY pe.codigo_persona, pa.codigo_lugar, es.codigo_lugar) tabla,
                (SELECT pe.codigo_persona codigo, es.codigo_lugar estado, min(ps.fecha_sintoma) fecha, listagg( s.Nombre_sintoma, ',') WITHIN GROUP (ORDER BY s.Nombre_sintoma) sintomas
                    FROM Lugar es, Lugar pa, Persona_sintoma ps, Sintoma s, Persona pe
                    WHERE pe.FK_lugar = es.codigo_lugar
                    AND es.nombre_lugar = estadoDado
                    AND es.fk_lugar = pa.codigo_lugar
                    AND ps.FK_Persona = Pe.codigo_persona
                    AND ps.FK_Sintoma = s.Codigo_sintoma
                    GROUP BY pe.codigo_persona, es.codigo_lugar) tabla2, condicion_persona cp
            WHERE tabla.codigo = tabla2.codigo
            AND(cp.fk_Condicion = 2 OR cp.fk_Condicion = 1)
            AND cp.fk_persona = tabla.codigo
            AND tabla.estado = tabla2.estado;
            
        ELSIF (paisDado IS NULL) AND (estadoDado IS NULL) AND (edadDada IS NOT NULL) THEN
            SELECT to_char(sysdate, 'YYYY') INTO anoActual FROM dual;
            anoNacimiento := anoActual-edadDada;
            a1 := CONCAT(inicioAno,anoNacimiento);
            a2 := CONCAT(finAno,anoNacimiento);
            OPEN CursorReporte2 FOR
            SELECT tabla.codigo codigoPersona,
                (SELECT p.foto_persona FROM persona p WHERE p.codigo_persona = tabla.codigo) foto, 
                (SELECT p.datos_basicos.primer_nombre FROM persona p WHERE p.codigo_persona = tabla.codigo) primerNombre,
                (SELECT p.datos_basicos.segundo_nombre FROM persona p WHERE p.codigo_persona = tabla.codigo) segundoNombre,
                (SELECT p.datos_basicos.primer_apellido FROM persona p WHERE p.codigo_persona = tabla.codigo) primerApellido,
                (SELECT p.datos_basicos.segundo_apellido FROM persona p WHERE p.codigo_persona = tabla.codigo) segundoApellido,
                (SELECT (Extract(YEAR from sysdate)-Extract(YEAR from p.datos_basicos.fecha_nacimiento)) FROM persona p WHERE p.codigo_persona = tabla.codigo) Edad,
                (SELECT p.genero FROM persona p WHERE p.codigo_persona = tabla.codigo) genero,
                (SELECT l.bandera_lugar FROM lugar l WHERE l.codigo_lugar = tabla.pais) bandera,
                (SELECT l.nombre_lugar FROM lugar l WHERE l.codigo_lugar = tabla.estado) estado,
                (SELECT pc.Tratado_persona_clinica from Persona_clinica pc where pc.FK_persona = tabla.codigo) tratado,
                    tabla.patologias patologias,
                    tabla2.sintomas sintomas,
                    tabla2.fecha fecha               
            FROM (SELECT pe.codigo_persona codigo, pa.codigo_lugar pais, es.codigo_lugar estado, listagg( pat.nombre_patologia, ',') WITHIN GROUP (ORDER BY pat.nombre_patologia) patologias              
                    FROM Lugar es, Lugar pa,
                    Persona pe LEFT OUTER JOIN persona_patologia ppa ON ppa.fk_persona = pe.codigo_persona LEFT OUTER JOIN patologia pat ON ppa.fk_patologia = pat.codigo_patologia
                    WHERE pe.fk_lugar = es.codigo_lugar
                    AND es.fk_lugar = pa.codigo_lugar
                    AND pe.datos_basicos.fecha_nacimiento BETWEEN a1 AND a2
                    GROUP BY pe.codigo_persona, pa.codigo_lugar, es.codigo_lugar) tabla,
                (SELECT pe.codigo_persona codigo, es.codigo_lugar estado, min(ps.fecha_sintoma) fecha, listagg( s.Nombre_sintoma, ',') WITHIN GROUP (ORDER BY s.Nombre_sintoma) sintomas
                    FROM Lugar es, Lugar pa, Persona_sintoma ps, Sintoma s, Persona pe
                    WHERE pe.fk_lugar = es.codigo_lugar
                    AND es.fk_lugar = pa.codigo_lugar
                    AND pe.datos_basicos.fecha_nacimiento BETWEEN a1 AND a2
                    AND ps.FK_Persona = Pe.codigo_persona
                    AND ps.FK_Sintoma = s.Codigo_sintoma
                    GROUP BY pe.codigo_persona, es.codigo_lugar) tabla2, condicion_persona cp
            WHERE tabla.codigo = tabla2.codigo
            AND(cp.fk_Condicion = 2 OR cp.fk_Condicion = 1)
            AND cp.fk_persona = tabla.codigo
            AND tabla.estado = tabla2.estado;

        ELSIF (paisDado IS NOT NULL) AND (estadoDado IS NOT NULL) AND (edadDada IS NULL) THEN
            OPEN CursorReporte2 FOR
            SELECT tabla.codigo codigoPersona,
                (SELECT p.foto_persona FROM persona p WHERE p.codigo_persona = tabla.codigo) foto, 
                (SELECT p.datos_basicos.primer_nombre FROM persona p WHERE p.codigo_persona = tabla.codigo) primerNombre,
                (SELECT p.datos_basicos.segundo_nombre FROM persona p WHERE p.codigo_persona = tabla.codigo) segundoNombre,
                (SELECT p.datos_basicos.primer_apellido FROM persona p WHERE p.codigo_persona = tabla.codigo) primerApellido,
                (SELECT p.datos_basicos.segundo_apellido FROM persona p WHERE p.codigo_persona = tabla.codigo) segundoApellido,
                (SELECT (Extract(YEAR from sysdate)-Extract(YEAR from p.datos_basicos.fecha_nacimiento)) FROM persona p WHERE p.codigo_persona = tabla.codigo) Edad,
                (SELECT p.genero FROM persona p WHERE p.codigo_persona = tabla.codigo) genero,
                (SELECT l.bandera_lugar FROM lugar l WHERE l.codigo_lugar = tabla.pais) bandera,
                (SELECT l.nombre_lugar FROM lugar l WHERE l.codigo_lugar = tabla.estado) estado,
                (SELECT pc.Tratado_persona_clinica from Persona_clinica pc where pc.FK_persona = tabla.codigo) tratado,
                    tabla.patologias patologias,
                    tabla2.sintomas sintomas,
                    tabla2.fecha fecha               
            FROM (SELECT pe.codigo_persona codigo, pa.codigo_lugar pais, es.codigo_lugar estado, listagg( pat.nombre_patologia, ',') WITHIN GROUP (ORDER BY pat.nombre_patologia) patologias              
                    FROM Lugar es, Lugar pa,
                    Persona pe LEFT OUTER JOIN persona_patologia ppa ON ppa.fk_persona = pe.codigo_persona LEFT OUTER JOIN patologia pat ON ppa.fk_patologia = pat.codigo_patologia
                    WHERE  pe.fk_lugar = es.codigo_lugar 
                    AND es.fk_lugar = pa.codigo_lugar
                    AND es.nombre_lugar = estadoDado
                    AND pa.nombre_lugar = paisDado
                    GROUP BY pe.codigo_persona, pa.codigo_lugar, es.codigo_lugar) tabla,
                (SELECT pe.codigo_persona codigo, es.codigo_lugar estado, min(ps.fecha_sintoma) fecha, listagg( s.Nombre_sintoma, ',') WITHIN GROUP (ORDER BY s.Nombre_sintoma) sintomas
                    FROM Lugar es, Lugar pa, Persona_sintoma ps, Sintoma s, Persona pe
                    WHERE pe.FK_lugar = es.codigo_lugar
                    AND es.fk_lugar = pa.codigo_lugar
                    AND es.nombre_lugar = estadoDado
                    AND pa.nombre_lugar = paisDado
                    AND ps.FK_Persona = Pe.codigo_persona
                    AND ps.FK_Sintoma = s.Codigo_sintoma
                    GROUP BY pe.codigo_persona, es.codigo_lugar) tabla2, condicion_persona cp
            WHERE tabla.codigo = tabla2.codigo
            AND(cp.fk_Condicion = 2 OR cp.fk_Condicion = 1)
            AND cp.fk_persona = tabla.codigo
            AND tabla.estado = tabla2.estado;

        ELSIF (paisDado IS NULL) AND (estadoDado IS NOT NULL) AND (edadDada IS NOT NULL) THEN
            SELECT to_char(sysdate, 'YYYY') INTO anoActual FROM dual;
            anoNacimiento := anoActual-edadDada;
            a1 := CONCAT(inicioAno,anoNacimiento);
            a2 := CONCAT(finAno,anoNacimiento);
            OPEN CursorReporte2 FOR
            SELECT tabla.codigo codigoPersona,
                (SELECT p.foto_persona FROM persona p WHERE p.codigo_persona = tabla.codigo) foto, 
                (SELECT p.datos_basicos.primer_nombre FROM persona p WHERE p.codigo_persona = tabla.codigo) primerNombre,
                (SELECT p.datos_basicos.segundo_nombre FROM persona p WHERE p.codigo_persona = tabla.codigo) segundoNombre,
                (SELECT p.datos_basicos.primer_apellido FROM persona p WHERE p.codigo_persona = tabla.codigo) primerApellido,
                (SELECT p.datos_basicos.segundo_apellido FROM persona p WHERE p.codigo_persona = tabla.codigo) segundoApellido,
                (SELECT (Extract(YEAR from sysdate)-Extract(YEAR from p.datos_basicos.fecha_nacimiento)) FROM persona p WHERE p.codigo_persona = tabla.codigo) Edad,
                (SELECT p.genero FROM persona p WHERE p.codigo_persona = tabla.codigo) genero,
                (SELECT l.bandera_lugar FROM lugar l WHERE l.codigo_lugar = tabla.pais) bandera,
                (SELECT l.nombre_lugar FROM lugar l WHERE l.codigo_lugar = tabla.estado) estado,
                (SELECT pc.Tratado_persona_clinica from Persona_clinica pc where pc.FK_persona = tabla.codigo) tratado,
                    tabla.patologias patologias,
                    tabla2.sintomas sintomas, 
                    tabla2.fecha fecha               
            FROM (SELECT pe.codigo_persona codigo, pa.codigo_lugar pais, es.codigo_lugar estado, listagg( pat.nombre_patologia, ',') WITHIN GROUP (ORDER BY pat.nombre_patologia) patologias              
                    FROM Lugar es, Lugar pa,
                    Persona pe LEFT OUTER JOIN persona_patologia ppa ON ppa.fk_persona = pe.codigo_persona LEFT OUTER JOIN patologia pat ON ppa.fk_patologia = pat.codigo_patologia
                    WHERE  pe.fk_lugar = es.codigo_lugar 
                    AND es.nombre_lugar = estadoDado
                    AND es.fk_lugar = pa.codigo_lugar
                    AND pe.datos_basicos.fecha_nacimiento BETWEEN a1 AND a2
                    GROUP BY pe.codigo_persona, pa.codigo_lugar, es.codigo_lugar) tabla,
                (SELECT pe.codigo_persona codigo, es.codigo_lugar estado, min(ps.fecha_sintoma) fecha, listagg( s.Nombre_sintoma, ',') WITHIN GROUP (ORDER BY s.Nombre_sintoma) sintomas
                    FROM Lugar es, Lugar pa, Persona_sintoma ps, Sintoma s, Persona pe
                    WHERE  pe.fk_lugar = es.codigo_lugar 
                    AND es.nombre_lugar = estadoDado
                    AND es.fk_lugar = pa.codigo_lugar
                    AND pe.datos_basicos.fecha_nacimiento BETWEEN a1 AND a2
                    AND ps.FK_Persona = Pe.codigo_persona
                    AND ps.FK_Sintoma = s.Codigo_sintoma
                    GROUP BY pe.codigo_persona, es.codigo_lugar) tabla2, condicion_persona cp
            WHERE tabla.codigo = tabla2.codigo
            AND(cp.fk_Condicion = 2 OR cp.fk_Condicion = 1)
            AND cp.fk_persona = tabla.codigo
            AND tabla.estado = tabla2.estado;

        ELSIF (paisDado IS NOT NULL) AND (estadoDado IS NULL) AND (edadDada IS NOT NULL) THEN
            SELECT to_char(sysdate, 'YYYY') INTO anoActual FROM dual;
            anoNacimiento := anoActual-edadDada;
            a1 := CONCAT(inicioAno,anoNacimiento);
            a2 := CONCAT(finAno,anoNacimiento);
            OPEN CursorReporte2 FOR
            SELECT tabla.codigo codigoPersona,
                (SELECT p.foto_persona FROM persona p WHERE p.codigo_persona = tabla.codigo) foto, 
                (SELECT p.datos_basicos.primer_nombre FROM persona p WHERE p.codigo_persona = tabla.codigo) primerNombre,
                (SELECT p.datos_basicos.segundo_nombre FROM persona p WHERE p.codigo_persona = tabla.codigo) segundoNombre,
                (SELECT p.datos_basicos.primer_apellido FROM persona p WHERE p.codigo_persona = tabla.codigo) primerApellido,
                (SELECT p.datos_basicos.segundo_apellido FROM persona p WHERE p.codigo_persona = tabla.codigo) segundoApellido,
                (SELECT (Extract(YEAR from sysdate)-Extract(YEAR from p.datos_basicos.fecha_nacimiento)) FROM persona p WHERE p.codigo_persona = tabla.codigo) Edad,
                (SELECT p.genero FROM persona p WHERE p.codigo_persona = tabla.codigo) genero,
                (SELECT l.bandera_lugar FROM lugar l WHERE l.codigo_lugar = tabla.pais) bandera,
                (SELECT l.nombre_lugar FROM lugar l WHERE l.codigo_lugar = tabla.estado) estado,
                (SELECT pc.Tratado_persona_clinica from Persona_clinica pc where pc.FK_persona = tabla.codigo) tratado,
                    tabla.patologias patologias,
                    tabla2.sintomas sintomas,
                    tabla2.fecha fecha               
            FROM (SELECT pe.codigo_persona codigo, pa.codigo_lugar pais, es.codigo_lugar estado, listagg( pat.nombre_patologia, ',') WITHIN GROUP (ORDER BY pat.nombre_patologia) patologias              
                    FROM Lugar es, Lugar pa,
                    Persona pe LEFT OUTER JOIN persona_patologia ppa ON ppa.fk_persona = pe.codigo_persona LEFT OUTER JOIN patologia pat ON ppa.fk_patologia = pat.codigo_patologia
                    WHERE  pe.fk_lugar = es.codigo_lugar 
                    AND es.fk_lugar = pa.codigo_lugar
                    AND pa.nombre_lugar = paisDado
                    AND pe.datos_basicos.fecha_nacimiento BETWEEN a1 AND a2
                    GROUP BY pe.codigo_persona, pa.codigo_lugar, es.codigo_lugar) tabla,
                (SELECT pe.codigo_persona codigo, es.codigo_lugar estado, min(ps.fecha_sintoma) fecha, listagg( s.Nombre_sintoma, ',') WITHIN GROUP (ORDER BY s.Nombre_sintoma) sintomas
                    FROM Lugar es, Lugar pa, Persona_sintoma ps, Sintoma s, Persona pe
                    WHERE  pe.fk_lugar = es.codigo_lugar 
                    AND es.fk_lugar = pa.codigo_lugar
                    AND pa.nombre_lugar = paisDado
                    AND pe.datos_basicos.fecha_nacimiento BETWEEN a1 AND a2
                    AND ps.FK_Persona = Pe.codigo_persona
                    AND ps.FK_Sintoma = s.Codigo_sintoma
                    GROUP BY pe.codigo_persona, es.codigo_lugar) tabla2, condicion_persona cp
            WHERE tabla.codigo = tabla2.codigo
            AND(cp.fk_Condicion = 2 OR cp.fk_Condicion = 1)
            AND cp.fk_persona = tabla.codigo
            AND tabla.estado = tabla2.estado;
        
        ELSIF (paisDado IS NOT NULL) AND (estadoDado IS NOT NULL) AND (edadDada IS NOT NULL) THEN
            SELECT to_char(sysdate, 'YYYY') INTO anoActual FROM dual;
            anoNacimiento := anoActual-edadDada;
            a1 := CONCAT(inicioAno,anoNacimiento);
            a2 := CONCAT(finAno,anoNacimiento);
            OPEN CursorReporte2 FOR
            SELECT tabla.codigo codigoPersona,
                (SELECT p.foto_persona FROM persona p WHERE p.codigo_persona = tabla.codigo) foto, 
                (SELECT p.datos_basicos.primer_nombre FROM persona p WHERE p.codigo_persona = tabla.codigo) primerNombre,
                (SELECT p.datos_basicos.segundo_nombre FROM persona p WHERE p.codigo_persona = tabla.codigo) segundoNombre,
                (SELECT p.datos_basicos.primer_apellido FROM persona p WHERE p.codigo_persona = tabla.codigo) primerApellido,
                (SELECT p.datos_basicos.segundo_apellido FROM persona p WHERE p.codigo_persona = tabla.codigo) segundoApellido,
                (SELECT (Extract(YEAR from sysdate)-Extract(YEAR from p.datos_basicos.fecha_nacimiento)) FROM persona p WHERE p.codigo_persona = tabla.codigo) Edad,
                (SELECT p.genero FROM persona p WHERE p.codigo_persona = tabla.codigo) genero,
                (SELECT l.bandera_lugar FROM lugar l WHERE l.codigo_lugar = tabla.pais) bandera,
                (SELECT l.nombre_lugar FROM lugar l WHERE l.codigo_lugar = tabla.estado) estado,
                (SELECT pc.Tratado_persona_clinica from Persona_clinica pc where pc.FK_persona = tabla.codigo) tratado,
                    tabla.patologias patologias,
                    tabla2.sintomas sintomas,
                    tabla2.fecha fecha               
            FROM (SELECT pe.codigo_persona codigo, pa.codigo_lugar pais, es.codigo_lugar estado, listagg( pat.nombre_patologia, ',') WITHIN GROUP (ORDER BY pat.nombre_patologia) patologias              
                    FROM Lugar es, Lugar pa,
                    Persona pe LEFT OUTER JOIN persona_patologia ppa ON ppa.fk_persona = pe.codigo_persona LEFT OUTER JOIN patologia pat ON ppa.fk_patologia = pat.codigo_patologia
                    WHERE  pe.fk_lugar = es.codigo_lugar 
                    AND es.fk_lugar = pa.codigo_lugar
                    AND es.nombre_lugar = estadoDado
                    AND pa.nombre_lugar = paisDado
                    AND pe.datos_basicos.fecha_nacimiento BETWEEN a1 AND a2
                    GROUP BY pe.codigo_persona, pa.codigo_lugar, es.codigo_lugar) tabla,
                (SELECT pe.codigo_persona codigo, es.codigo_lugar estado, min(ps.fecha_sintoma) fecha, listagg( s.Nombre_sintoma, ',') WITHIN GROUP (ORDER BY s.Nombre_sintoma) sintomas
                    FROM Lugar es, Lugar pa, Persona_sintoma ps, Sintoma s, Persona pe
                    WHERE  pe.fk_lugar = es.codigo_lugar 
                    AND es.fk_lugar = pa.codigo_lugar
                    AND es.nombre_lugar = estadoDado
                    AND pa.nombre_lugar = paisDado
                    AND pe.datos_basicos.fecha_nacimiento BETWEEN a1 AND a2
                    AND ps.FK_Persona = Pe.codigo_persona
                    AND ps.FK_Sintoma = s.Codigo_sintoma
                    GROUP BY pe.codigo_persona, es.codigo_lugar) tabla2, condicion_persona cp
            WHERE tabla.codigo = tabla2.codigo
            AND(cp.fk_Condicion = 2 OR cp.fk_Condicion = 1)
            AND cp.fk_persona = tabla.codigo
            AND tabla.estado = tabla2.estado;
        END IF;

END;


-- REPORTE 3
CREATE OR REPLACE PROCEDURE Reporte3(CursorReporte3 out SYS_REFCURSOR, fechaInicio date, fechaFin date)
IS  
BEGIN
    OPEN CursorReporte3 FOR
    SELECT tabla.codigo codigoPersona,
            (SELECT p.foto_persona FROM persona p WHERE p.codigo_persona = tabla.codigo) foto, 
            (SELECT p.datos_basicos.primer_nombre FROM persona p WHERE p.codigo_persona = tabla.codigo) primerNombre,
            (SELECT p.datos_basicos.segundo_nombre FROM persona p WHERE p.codigo_persona = tabla.codigo) segundoNombre,
            (SELECT p.datos_basicos.primer_apellido FROM persona p WHERE p.codigo_persona = tabla.codigo) primerApellido,
            (SELECT p.datos_basicos.segundo_apellido FROM persona p WHERE p.codigo_persona = tabla.codigo) segundoApellido,
            (SELECT (Extract(YEAR from sysdate)-Extract(YEAR from p.datos_basicos.fecha_nacimiento)) FROM persona p WHERE p.codigo_persona = tabla.codigo) Edad,
            (SELECT l.bandera_lugar FROM lugar l WHERE l.codigo_lugar = tabla.pais1) banderaOrigen,
            (SELECT l.bandera_lugar FROM lugar l WHERE l.codigo_lugar = tabla.pais) banderaDestino,
            tabla.estados, 
            tabla.fechaI,
            tabla.fechaF
    FROM (SELECT p.codigo_persona codigo, pais.codigo_lugar pais, vp.fecha_inicio fechaI, vp.fecha_fin fechaF, pais1.codigo_lugar pais1, listagg(estado.nombre_lugar, ',') WITHIN GROUP (ORDER BY estado.nombre_lugar) estados
            FROM vuelo_persona vp, viaje v, persona p, lugar estado, lugar pais, lugar estado1, lugar pais1
            WHERE v.fk_vuelo_persona = vp.codigo_vuelo_persona            
            AND vp.fk_persona = p.codigo_persona           
            AND vp.fecha_inicio BETWEEN fechaInicio AND fechaFin
            AND vp.fecha_fin BETWEEN fechaInicio AND fechaFin
            AND estado.codigo_lugar = v.fk_lugar
            AND estado.fk_lugar = pais.codigo_lugar
            AND p.fk_lugar = estado1.codigo_lugar
            AND estado1.fk_lugar = pais1.codigo_lugar
            GROUP BY p.codigo_persona, pais.codigo_lugar, vp.fecha_inicio, vp.fecha_fin, pais1.codigo_lugar) tabla;

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
    ELSIF ((modeloAplicado IS NOT NULL) AND (pais IS NOT NULL)) THEN
        OPEN cursorReporte5 FOR
        SELECT p.Bandera_lugar bandera, lm.Fecha_Lugar_Modelo.fecha_inicio fechaInicio, lm.Fecha_Lugar_Modelo.fecha_fin fechaFin, Modelo.Nombre_Aislamiento nombreModelo        
        FROM  Lugar p, Lugar_Modelo lm, Modelo_Aislamiento Modelo
        WHERE p.Codigo_Lugar = lm.FK_Lugar
        AND pais = p.Nombre_lugar
        AND modeloAplicado = Modelo.Nombre_aislamiento 
        AND lm.FK_Modelo_Aislamiento = Modelo.Codigo_aislamiento;  
    END IF;
END;


-- REPORTE 6
CREATE OR REPLACE PROCEDURE Reporte6 (cursorReporte6 OUT SYS_REFCURSOR, paisDado varchar, fechaInicio date, fechaFin date)
IS
BEGIN
    OPEN cursorReporte6 FOR
    SELECT pais.bandera_lugar, ni.fecha fechaInfectado, ni.cantidad cantidadInfectado
    FROM Numero_Infectados ni, lugar pais
    WHERE ni.fecha BETWEEN fechaInicio AND fechaFin
    AND ni.fk_lugar = pais.codigo_lugar
    AND pais.nombre_lugar = paisDado;
END;


-- REPORTE 7
CREATE OR REPLACE PROCEDURE Reporte7 (cursorReporte7 OUT SYS_REFCURSOR, paisDado varchar, fechaInicio date, fechaFin date)
IS
BEGIN  
    OPEN cursorReporte7 FOR
    SELECT a.nombre_aerolinea nombreAerolinea, a.logo_aerolinea logo, v.numero_vuelo numeroVuelo, pais1.bandera_lugar paisOrigen, pais.bandera_lugar paisDestino, estado1.nombre_lugar estadoOrigen, estado.nombre_lugar estadoDestino, p.codigo_persona codigoPersona, p.foto_persona foto, p.datos_basicos.primer_nombre primerNombre, p.datos_basicos.segundo_nombre segundoNombre, p.datos_basicos.primer_apellido primerApellido, p.datos_basicos.segundo_apellido segundoApellido
    FROM Persona p, Vuelo v, Vuelo_persona vp, lugar estado, lugar pais, aerolinea a, lugar pais1, lugar estado1
    WHERE estado.fk_lugar = pais.codigo_lugar
    AND pais.nombre_lugar = paisDado
    AND vp.fk_persona = p.codigo_persona
    AND vp.fk_vuelo = v.numero_vuelo
    AND v.fk_aerolinea = a.codigo_aerolinea
    AND v.fk_lugar_destino = estado.codigo_lugar
    AND v.fecha_hora_llegada BETWEEN fechaInicio AND fechaFin
    AND v.fk_lugar_origen = estado1.codigo_lugar
    AND pais1.codigo_lugar = estado1.fk_lugar;
END;


-- REPORTE 8
CREATE OR REPLACE PROCEDURE Reporte8 (cursorReporte8 OUT SYS_REFCURSOR, paisDado varchar)
IS
BEGIN
    IF (paisDado IS NULL) THEN
        OPEN cursorReporte8 FOR
        SELECT tabla.complementoDireccion, tabla.nombreClinica, tabla.numeroCamas, 
            (SELECT listagg( i.nombre_insumo, ',') WITHIN GROUP (ORDER BY i.nombre_insumo) FROM Clinica_insumo ci, insumo i WHERE ci.fk_clinica = tabla.codigoClinica AND i.codigo_insumo = ci.fk_insumo) insumos,
            tabla.cantidadTratados,
            (SELECT count(pc.tratado_persona_clinica) FROM persona_clinica pc, persona p, condicion_persona cp WHERE cp.fk_condicion = 4 AND cp.fk_persona = p.codigo_persona AND pc.fk_persona = p.codigo_persona  AND pc.tratado_persona_clinica = 'SI' AND pc.fk_clinica = tabla.codigoClinica) fallecidos,
            (SELECT count(pc.tratado_persona_clinica) FROM persona_clinica pc, persona p, condicion_persona cp WHERE cp.fk_condicion = 3 AND cp.fk_persona = p.codigo_persona AND pc.fk_persona = p.codigo_persona  AND pc.tratado_persona_clinica = 'SI' AND pc.fk_clinica = tabla.codigoClinica) recuperados
        FROM (SELECT c.direccion_clinica.complemento complementoDireccion, c.codigo_clinica codigoClinica, c.nombre_clinica nombreClinica, c.numero_camas numeroCamas, count(pc.tratado_persona_clinica) cantidadTratados
                FROM persona_clinica pc, clinica c
                WHERE pc.tratado_persona_clinica = 'SI'
                AND pc.fk_clinica = c.codigo_clinica
                GROUP BY c.direccion_clinica.complemento, c.codigo_clinica ,c.nombre_clinica ,c.numero_camas) tabla;
    ELSIF (paisDado IS NOT NULL) THEN
        OPEN cursorReporte8 FOR
        SELECT tabla.complementoDireccion, tabla.nombreClinica, tabla.numeroCamas, 
            (SELECT listagg( i.nombre_insumo, ',') WITHIN GROUP (ORDER BY i.nombre_insumo) FROM Clinica_insumo ci, insumo i WHERE ci.fk_clinica = tabla.codigoClinica AND i.codigo_insumo = ci.fk_insumo) insumos,
            tabla.cantidadTratados,
            (SELECT count(pc.tratado_persona_clinica) FROM persona_clinica pc, persona p, condicion_persona cp WHERE cp.fk_condicion = 4 AND cp.fk_persona = p.codigo_persona AND pc.fk_persona = p.codigo_persona  AND pc.tratado_persona_clinica = 'SI' AND pc.fk_clinica = tabla.codigoClinica) fallecidos,
            (SELECT count(pc.tratado_persona_clinica) FROM persona_clinica pc, persona p, condicion_persona cp WHERE cp.fk_condicion = 3 AND cp.fk_persona = p.codigo_persona AND pc.fk_persona = p.codigo_persona  AND pc.tratado_persona_clinica = 'SI' AND pc.fk_clinica = tabla.codigoClinica) recuperados
        FROM (SELECT c.direccion_clinica.complemento complementoDireccion, c.codigo_clinica codigoClinica, c.nombre_clinica nombreClinica, c.numero_camas numeroCamas, count(pc.tratado_persona_clinica) cantidadTratados
                FROM persona_clinica pc, clinica c, lugar pais, lugar estado
                WHERE pc.tratado_persona_clinica = 'SI'
                AND pc.fk_clinica = c.codigo_clinica
                AND c.fk_lugar_clinica = estado.codigo_lugar 
                AND estado.fk_lugar = pais.codigo_lugar
                AND pais.nombre_lugar = paisDado
                GROUP BY c.direccion_clinica.complemento, c.codigo_clinica ,c.nombre_clinica ,c.numero_camas) tabla;
    END IF;    
END;


--  REPORTE 9
CREATE OR REPLACE PROCEDURE Reporte9 (cursorReporte9 OUT SYS_REFCURSOR, paisDado varchar)
IS
BEGIN
    OPEN cursorReporte9 FOR
    SELECT (SELECT lu.bandera_lugar FROM lugar lu WHERE lu.codigo_lugar = ah.fk_lugar_ofrece_ayuda) paisOrigen,
        l.bandera_lugar paisDestino, ah.fecha_ayuda fechaAyuda, 
        (SELECT ai.cantidad_donada FROM ayuda_insumo ai, insumo i WHERE  ah.codigo_ayuda = ai.fk_ayuda_humanitaria AND ai.fk_insumo = i.codigo_insumo) cantidadDonada,
        (SELECT i.nombre_insumo FROM ayuda_insumo ai, insumo i WHERE  ah.codigo_ayuda = ai.fk_ayuda_humanitaria AND ai.fk_insumo = i.codigo_insumo) insumo,
        ah.dinero_donado dineroDonado
    FROM ayuda_humanitaria ah, lugar l
    WHERE l.nombre_lugar = paisDado
    AND l.codigo_lugar = ah.fk_lugar_recibe_ayuda;
END;


--  REPORTE 10
CREATE OR REPLACE PROCEDURE Reporte10 (cursorReporte10 OUT SYS_REFCURSOR, paisDado varchar)
IS
BEGIN
    OPEN cursorReporte10 FOR
    SELECT pais.bandera_lugar bandera, m.nombre_aislamiento nombreModelo, lm.fecha_lugar_modelo.fecha_inicio fechaInicio,
        (((SELECT COUNT(p.codigo_persona)FROM Persona p, Condicion_persona cp, lugar es WHERE cp.FK_Condicion = 3 AND cp.fk_persona = p.codigo_persona AND p.FK_LUGAR = es.codigo_lugar AND es.fk_lugar = pais.codigo_lugar)
        /(SELECT COUNT(p.codigo_persona)FROM Persona p, Condicion_persona cp, lugar es WHERE cp.FK_Condicion = 2 AND cp.fk_persona = p.codigo_persona AND p.FK_LUGAR = es.codigo_lugar AND es.fk_lugar = pais.codigo_lugar))
        -((SELECT COUNT(p.codigo_persona)FROM Persona p, Condicion_persona cp, lugar es WHERE cp.FK_Condicion = 4 AND cp.fk_persona = p.codigo_persona AND p.FK_LUGAR = es.codigo_lugar AND es.fk_lugar = pais.codigo_lugar)
        /(SELECT COUNT(p.codigo_persona)FROM Persona p, Condicion_persona cp, lugar es WHERE cp.FK_Condicion = 2 AND cp.fk_persona = p.codigo_persona AND p.FK_LUGAR = es.codigo_lugar AND es.fk_lugar = pais.codigo_lugar)))
        *100 porcentaje
    FROM lugar Pais, modelo_aislamiento m, lugar_modelo lm
    WHERE pais.nombre_lugar = paisDado
    AND lm.fk_lugar = pais.codigo_lugar
    AND m.codigo_aislamiento = lm.fk_modelo_aislamiento;
END;


-- REPORTE 11
CREATE OR REPLACE PROCEDURE Reporte11 (cursorReporte11 OUT SYS_REFCURSOR, fechaDada date)
IS
BEGIN
    OPEN cursorReporte11 FOR
    SELECT SUM(ni.cantidad) infectados, 
        SUM(ni.cantidadrecuperado) recuperados, 
        SUM(ni.cantidadfallecido) fallecidos, 
        (SUM(ni.cantidad)/10000)*100 porcentajeInfectados,
        (SUM(ni.cantidadrecuperado)/10000)*100 porcentajeRecuperados,
        (SUM(ni.cantidadfallecido)/10000)*100 porcentajeFallecidos
    FROM numero_infectados ni
    WHERE TO_DATE(ni.fecha,'DD/MM/YYYY') >= TO_DATE(fechaDada,'DD/MM/YYYY');
END;

--  REPORTE 12
CREATE OR REPLACE PROCEDURE Reporte12 (cursorReporte12 OUT SYS_REFCURSOR, paisDado varchar, fechaDada date)
IS
BEGIN
    IF ((paisDado IS NOT NULL) AND (fechaDada IS NOT NULL)) THEN
        OPEN cursorReporte12 FOR
        SELECT l.bandera_lugar bandera, p.logo_proveedor logo, lp.fecha fecha, lp.velocidad_subida subida, lp.velocidad_descarga descarga, lp.horas_interrupcion interrupcion
        FROM lugar_proveedor lp, proveedor_internet p, lugar l
        WHERE l.nombre_lugar = paisDado
        AND lp.fk_lugar = l.codigo_lugar
        AND TO_DATE(lp.fecha,'DD/MM/YYYY') = TO_DATE(fechaDada,'DD/MM/YYYY')
        AND lp.fk_proveedor_internet = p.codigo_proveedor;
    ELSIF ((paisDado IS NOT NULL) AND (fechaDada IS NULL)) THEN
        OPEN cursorReporte12 FOR
        SELECT l.bandera_lugar bandera, p.logo_proveedor logo, lp.fecha fecha, lp.velocidad_subida subida, lp.velocidad_descarga descarga, lp.horas_interrupcion interrupcion
        FROM lugar_proveedor lp, proveedor_internet p, lugar l
        WHERE l.nombre_lugar = paisDado
        AND lp.fk_lugar = l.codigo_lugar
        AND lp.fk_proveedor_internet = p.codigo_proveedor;
    ELSIF ((paisDado IS NULL) AND (fechaDada IS NOT NULL)) THEN
        OPEN cursorReporte12 FOR
        SELECT l.bandera_lugar bandera, p.logo_proveedor logo, lp.fecha fecha, lp.velocidad_subida subida, lp.velocidad_descarga descarga, lp.horas_interrupcion interrupcion
        FROM lugar_proveedor lp, proveedor_internet p, lugar l
        WHERE lp.fk_lugar = l.codigo_lugar
        AND TO_DATE(lp.fecha,'DD/MM/YYYY') = TO_DATE(fechaDada,'DD/MM/YYYY')
        AND lp.fk_proveedor_internet = p.codigo_proveedor;
    END IF; 
END;


-- REPORTE 13
CREATE OR REPLACE PROCEDURE Reporte13 (cursorReporte13 OUT SYS_REFCURSOR, paisDado varchar, fechaInicio date, fechaFin date)
IS
BEGIN
    IF ((paisDado IS NOT NULL) AND (fechaInicio IS NOT NULL) AND (fechaFin IS NOT NULL)) THEN
        OPEN cursorReporte13 FOR
        SELECT l.bandera_lugar bandera, f.fecha_frontera.fecha_inicio fechaInicio, f.fecha_frontera.fecha_fin fechaFin
        FROM frontera f, lugar l
        WHERE l.nombre_lugar = paisDado
        AND f.fk_lugar = l.codigo_lugar
        AND f.fecha_frontera.fecha_inicio >= fechaInicio 
        AND  f.fecha_frontera.fecha_fin <= fechaFin;
    ELSIF ((paisDado IS NULL) AND (fechaInicio IS NOT NULL) AND (fechaFin IS NOT NULL)) THEN
        OPEN cursorReporte13 FOR
        SELECT l.bandera_lugar bandera, f.fecha_frontera.fecha_inicio fechaInicio, f.fecha_frontera.fecha_fin fechaFin
        FROM frontera f, lugar l
        WHERE f.fk_lugar = l.codigo_lugar
        AND f.fecha_frontera.fecha_inicio >= fechaInicio 
        AND  f.fecha_frontera.fecha_fin <= fechaFin;
    ELSIF ((paisDado IS NOT NULL) AND (fechaInicio IS NULL) AND (fechaFin IS NULL)) THEN
        OPEN cursorReporte13 FOR
        SELECT l.bandera_lugar bandera, f.fecha_frontera.fecha_inicio fechaInicio, f.fecha_frontera.fecha_fin fechaFin
        FROM frontera f, lugar l
        WHERE l.nombre_lugar = paisDado
        AND f.fk_lugar = l.codigo_lugar;
    END IF; 
END;






CREATE OR REPLACE PROCEDURE ReportePrueba (cursorReportePrueba OUT SYS_REFCURSOR, fechaDada date)
IS
BEGIN
     OPEN cursorReportePrueba FOR
    SELECT l.bandera_lugar bandera, p.logo_proveedor logo, lp.fecha fecha, lp.velocidad_subida subida, lp.velocidad_descarga descarga, lp.horas_interrupcion interrupcion
    FROM lugar_proveedor lp, proveedor_internet p, lugar l
    WHERE lp.fk_lugar = l.codigo_lugar
    AND lp.fecha = fechaDada
    AND lp.fk_proveedor_internet = p.codigo_proveedor;
END;