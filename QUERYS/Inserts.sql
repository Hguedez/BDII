SELECT  pe.codigo_persona, pe.datos_basicos.primer_nombre as PrimerNombre, pe.datos_basicos.segundo_nombre as SegundoNombre, pe.datos_basicos.primer_apellido as PrimerApellido, 
    pe.datos_basicos.segundo_apellido as SegundoApellido,pe.datos_basicos.fecha_nacimiento as FechaNacimiento, pe.fk_lugar, pe.genero, pe.foto_persona FROM Persona pe;


SELECT lm.fecha_lugar_modelo.fecha_inicio, lm.fecha_lugar_modelo.fecha_fin from lugar_modelo lm;


--LUGAR
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('PAIS', 'Estados Unidos', NULL, 1000);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('PAIS', 'Canada', NULL, 1000);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('PAIS', 'Cuba', NULL, 1000);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('PAIS', 'Sudafrica', NULL, 1000);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('PAIS', 'Venezuela', NULL, 1000);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('PAIS', 'China', NULL, 1000);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('PAIS', 'Rusia', NULL, 1000);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('PAIS', 'Alemania', NULL, 1000);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('PAIS', 'España', NULL, 1000);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('PAIS', 'Australia', NULL, 1000);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Florida', 1, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Washington', 1, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'California', 1, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Nueva York', 1, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Texas', 1, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'British Columbia', 2, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Quebec', 2, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Alberta', 2, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Ontario', 2, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Nunavut', 2, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'La Habana', 3, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Guantanamo', 3, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Las Tunas', 3, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Villa Clara', 3, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Cienfuegos', 3, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Mpumalanga', 4, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Limpopo', 4, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Cabo Occidental', 4, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Cabo del Norte', 4, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Cabo Oriental', 4, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Vargas', 5, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Distrito Capital', 5, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Zulia', 5, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Aragua', 5, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Miranda', 5, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Hubei', 6, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Hainan', 6, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Henan', 6, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Sichuan', 6, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Yunnan', 6, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Distrito Central', 7, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Distrito Noroeste', 7, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Ural', 7, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Volga', 7, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Siberia', 7, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Baviera', 8, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Berlin', 8, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Baden-Wurtemberg', 8, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Brandeburgo', 8, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Hesse', 8, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Barcelona', 9, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Madrid', 9, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Malaga', 9, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Valencia', 9, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Sevilla', 9, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'New South Wales', 10, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Queensland', 10, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Victoria', 10, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Western Australia', 10, NULL);
INSERT INTO Lugar (Tipo_Lugar, nombre_lugar, fk_lugar, poblacion_lugar)VALUES('ESTADO', 'Tasmania', 10, NULL);

--CONDICION
INSERT INTO Condicion (codigo_condicion, nombre_condicion) VALUES (1, 'Sano');
INSERT INTO Condicion (codigo_condicion, nombre_condicion) VALUES (2, 'Infectado');
INSERT INTO Condicion (codigo_condicion, nombre_condicion) VALUES (3, 'Recuperado');
INSERT INTO Condicion (codigo_condicion, nombre_condicion) VALUES (4, 'Fallecido');

--MODELO AISLAMIENTO
INSERT INTO Modelo_Aislamiento VALUES (1, '1 de cada 8 se mueve', 'Una(1) de cada ocho(8) personas salen de su casa');
INSERT INTO Modelo_Aislamiento VALUES (2, 'Libre Movilidad', 'Todas las personas de la casa pueden salir');

--LUGAR MODELO
INSERT INTO Lugar_Modelo VALUES (1, Fecha_Inicio_Fin(Fecha_Inicio_Fin.validar_fecha_inicio(TO_DATE('2020-06-25', 'YYYY-MM-DD'), TO_DATE('2020-09-25', 'YYYY-MM-DD')), Fecha_Inicio_Fin.validar_fecha_fin(TO_DATE('2020-06-25', 'YYYY-MM-DD'), TO_DATE('2020-09-25', 'YYYY-MM-DD'))), 1, 1);
INSERT INTO Lugar_Modelo VALUES (2, Fecha_Inicio_Fin(Fecha_Inicio_Fin.validar_fecha_inicio(TO_DATE('2020-06-25', 'YYYY-MM-DD'), TO_DATE('2020-09-25', 'YYYY-MM-DD')), Fecha_Inicio_Fin.validar_fecha_fin(TO_DATE('2020-06-25', 'YYYY-MM-DD'), TO_DATE('2020-09-25', 'YYYY-MM-DD'))), 2, 2);
INSERT INTO Lugar_Modelo VALUES (3, Fecha_Inicio_Fin(Fecha_Inicio_Fin.validar_fecha_inicio(TO_DATE('2020-06-25', 'YYYY-MM-DD'), TO_DATE('2020-09-25', 'YYYY-MM-DD')), Fecha_Inicio_Fin.validar_fecha_fin(TO_DATE('2020-06-25', 'YYYY-MM-DD'), TO_DATE('2020-09-25', 'YYYY-MM-DD'))), 1, 3);
INSERT INTO Lugar_Modelo VALUES (4, Fecha_Inicio_Fin(Fecha_Inicio_Fin.validar_fecha_inicio(TO_DATE('2020-06-25', 'YYYY-MM-DD'), TO_DATE('2020-09-25', 'YYYY-MM-DD')), Fecha_Inicio_Fin.validar_fecha_fin(TO_DATE('2020-06-25', 'YYYY-MM-DD'), TO_DATE('2020-09-25', 'YYYY-MM-DD'))), 2, 4);
INSERT INTO Lugar_Modelo VALUES (5, Fecha_Inicio_Fin(Fecha_Inicio_Fin.validar_fecha_inicio(TO_DATE('2020-06-25', 'YYYY-MM-DD'), TO_DATE('2020-09-25', 'YYYY-MM-DD')), Fecha_Inicio_Fin.validar_fecha_fin(TO_DATE('2020-06-25', 'YYYY-MM-DD'), TO_DATE('2020-09-25', 'YYYY-MM-DD'))), 1, 5);
INSERT INTO Lugar_Modelo VALUES (6, Fecha_Inicio_Fin(Fecha_Inicio_Fin.validar_fecha_inicio(TO_DATE('2020-06-25', 'YYYY-MM-DD'), TO_DATE('2020-09-25', 'YYYY-MM-DD')), Fecha_Inicio_Fin.validar_fecha_fin(TO_DATE('2020-06-25', 'YYYY-MM-DD'), TO_DATE('2020-09-25', 'YYYY-MM-DD'))), 2, 6);
INSERT INTO Lugar_Modelo VALUES (7, Fecha_Inicio_Fin(Fecha_Inicio_Fin.validar_fecha_inicio(TO_DATE('2020-06-25', 'YYYY-MM-DD'), TO_DATE('2020-09-25', 'YYYY-MM-DD')), Fecha_Inicio_Fin.validar_fecha_fin(TO_DATE('2020-06-25', 'YYYY-MM-DD'), TO_DATE('2020-09-25', 'YYYY-MM-DD'))), 1, 7);
INSERT INTO Lugar_Modelo VALUES (8, Fecha_Inicio_Fin(Fecha_Inicio_Fin.validar_fecha_inicio(TO_DATE('2020-06-25', 'YYYY-MM-DD'), TO_DATE('2020-09-25', 'YYYY-MM-DD')), Fecha_Inicio_Fin.validar_fecha_fin(TO_DATE('2020-06-25', 'YYYY-MM-DD'), TO_DATE('2020-09-25', 'YYYY-MM-DD'))), 2, 8);
INSERT INTO Lugar_Modelo VALUES (9, Fecha_Inicio_Fin(Fecha_Inicio_Fin.validar_fecha_inicio(TO_DATE('2020-06-25', 'YYYY-MM-DD'), TO_DATE('2020-09-25', 'YYYY-MM-DD')), Fecha_Inicio_Fin.validar_fecha_fin(TO_DATE('2020-06-25', 'YYYY-MM-DD'), TO_DATE('2020-09-25', 'YYYY-MM-DD'))), 1, 9);
INSERT INTO Lugar_Modelo VALUES (10, Fecha_Inicio_Fin(Fecha_Inicio_Fin.validar_fecha_inicio(TO_DATE('2020-06-25', 'YYYY-MM-DD'), TO_DATE('2020-09-25', 'YYYY-MM-DD')), Fecha_Inicio_Fin.validar_fecha_fin(TO_DATE('2020-06-25', 'YYYY-MM-DD'), TO_DATE('2020-09-25', 'YYYY-MM-DD'))), 2, 10);


--PATOLOGIA
INSERT INTO Patologia VALUES (1, 'Neumonia');
INSERT INTO Patologia VALUES (2, 'Cancer');
INSERT INTO Patologia VALUES (3, 'Obesidad');
INSERT INTO Patologia VALUES (4, 'Diabetes');
INSERT INTO Patologia VALUES (5, 'Edema Pulmonar');
INSERT INTO Patologia VALUES (6, 'Hipertension Arterial');
INSERT INTO Patologia VALUES (7, 'Peritonitis');
INSERT INTO Patologia VALUES (8, 'Asma');
INSERT INTO Patologia VALUES (9, 'VPH');
INSERT INTO Patologia VALUES (10, 'Difteria');
INSERT INTO Patologia VALUES (11, 'Colon Irritable');
INSERT INTO Patologia VALUES (12, 'Arritmia');
INSERT INTO Patologia VALUES (13, 'Lupus');
INSERT INTO Patologia VALUES (14, 'Rubeola');
INSERT INTO Patologia VALUES (15, 'Taquicardia');


--SINTOMA
INSERT INTO Sintoma VALUES (1, 'Fiebre');
INSERT INTO Sintoma VALUES (2, 'Cansancio');
INSERT INTO Sintoma VALUES (3, 'Tos Seca');
INSERT INTO Sintoma VALUES (4, 'Dolores Musculares');
INSERT INTO Sintoma VALUES (5, 'Congestion Nasal');
INSERT INTO Sintoma VALUES (6, 'Dolor de Garganta');
INSERT INTO Sintoma VALUES (7, 'Diarrea');
INSERT INTO Sintoma VALUES (8, 'Fatiga');
INSERT INTO Sintoma VALUES (9, 'Conjuntivitis');
INSERT INTO Sintoma VALUES (10, 'Dolor de Cabeza');
INSERT INTO Sintoma VALUES (11, 'Perdida del sentido del olfato');
INSERT INTO Sintoma VALUES (12, 'Erupciones Cutaneas');
INSERT INTO Sintoma VALUES (13, 'Nauseas');
INSERT INTO Sintoma VALUES (14, 'Presion en el Pecho');
INSERT INTO Sintoma VALUES (15, 'Incapacidad para Hablar');

