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
INSERT INTO Lugar_Modelo VALUES (11, Fecha_Inicio_Fin(Fecha_Inicio_Fin.validar_fecha_inicio(TO_DATE('2020-07-25', 'YYYY-MM-DD'), TO_DATE('2020-08-25', 'YYYY-MM-DD')), Fecha_Inicio_Fin.validar_fecha_fin(TO_DATE('2020-07-25', 'YYYY-MM-DD'), TO_DATE('2020-08-25', 'YYYY-MM-DD'))), 1, 2);
INSERT INTO Lugar_Modelo VALUES (12, Fecha_Inicio_Fin(Fecha_Inicio_Fin.validar_fecha_inicio(TO_DATE('2020-07-26', 'YYYY-MM-DD'), TO_DATE('2020-08-26', 'YYYY-MM-DD')), Fecha_Inicio_Fin.validar_fecha_fin(TO_DATE('2020-07-26', 'YYYY-MM-DD'), TO_DATE('2020-08-26', 'YYYY-MM-DD'))), 2, 3);
INSERT INTO Lugar_Modelo VALUES (13, Fecha_Inicio_Fin(Fecha_Inicio_Fin.validar_fecha_inicio(TO_DATE('2020-07-27', 'YYYY-MM-DD'), TO_DATE('2020-08-27', 'YYYY-MM-DD')), Fecha_Inicio_Fin.validar_fecha_fin(TO_DATE('2020-07-27', 'YYYY-MM-DD'), TO_DATE('2020-08-27', 'YYYY-MM-DD'))), 1, 6);
INSERT INTO Lugar_Modelo VALUES (14, Fecha_Inicio_Fin(Fecha_Inicio_Fin.validar_fecha_inicio(TO_DATE('2020-07-28', 'YYYY-MM-DD'), TO_DATE('2020-08-28', 'YYYY-MM-DD')), Fecha_Inicio_Fin.validar_fecha_fin(TO_DATE('2020-07-28', 'YYYY-MM-DD'), TO_DATE('2020-08-28', 'YYYY-MM-DD'))), 2, 7);
INSERT INTO Lugar_Modelo VALUES (15, Fecha_Inicio_Fin(Fecha_Inicio_Fin.validar_fecha_inicio(TO_DATE('2020-07-29', 'YYYY-MM-DD'), TO_DATE('2020-08-29', 'YYYY-MM-DD')), Fecha_Inicio_Fin.validar_fecha_fin(TO_DATE('2020-07-29', 'YYYY-MM-DD'), TO_DATE('2020-08-29', 'YYYY-MM-DD'))), 1, 10);

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

--Clinicas
INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(1, 'Hospital Provincial Saturnino Lora',Complemento_direccion('Avenida de los Libertadores Calle 7, Santiago de Cuba '),125,21);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(2, 'Hospital Hermanos Ameijeiras',Complemento_direccion('Calle San Lázaro # 701 esq. a, Padre Varela, 10400'),125,22);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(3, 'Hospital Universitario Clínico Quirúrgico',Complemento_direccion('La Habana'),125,23);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(4, 'Hospital Infantil Norte',Complemento_direccion('Matanzas, Santiago de Cuba'),125,24);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(5, 'Hospital Oncológico',Complemento_direccion('Carretera Central Esq. a Martí, Av de Los Libertadores, Santiago de Cuba 90400 '),125,25);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(6, 'Universitätsklinikum Hamburg-Eppendorf',Complemento_direccion('Hamburg'),125,46);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(7, 'Klinikum der Universität München',Complemento_direccion('Hanover'),125,47);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(8, 'Medizinische Hochschule Hannover',Complemento_direccion('Hamburg'),125,48);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(9, 'Charité Universitätsmedizin Berlin',Complemento_direccion('Berlin'),125,49);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(10, 'Universitätsklinikum Heidelberg',Complemento_direccion('Heidelberg'),125,50);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(11 ,'University of Colorado Hospital ',Complemento_direccion('Aurora, CO'),125,11);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(12,  'The Mount Sinai Hospital',Complemento_direccion('Washington'),125,12);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(13,  'Langone Hospitals',Complemento_direccion('California LA'),125,13);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(14,  'Mayo Clinic - Rochester',Complemento_direccion('Rochester, MN'),125,14);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(15,  'Cleveland Clinic',Complemento_direccion('Cleveland, OH '),125,15);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(16,  'Toronto General (University Health Network)',Complemento_direccion('Toronto'),125,16);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(17,  'Sunnybrook Health Sciences Centre ',Complemento_direccion('Toronto'),125,17);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(18,  'Mount Sinai Hospital',Complemento_direccion('Toronto'),125,18);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(19,  'North York General Hospital',Complemento_direccion('Toronto'),125,19);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(20,  'Shriners Hospitals for Children',Complemento_direccion('Montreal, Quebec'),125,20);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(21,  'Royal Melbourne Hospital - Parkville',Complemento_direccion('Melbourne'),125,56);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(22,  'The Alfred',Complemento_direccion('Melbourne'),125,57);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(23,  'Royal Brisbane Womens Hospital',Complemento_direccion('Brisbane'),125,58);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(24,  'Royal Prince Alfred Hospital',Complemento_direccion('Sydney'),125,59);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(25,  'Calvary Hospital',Complemento_direccion('Bruce'),125,60);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(26,  'Hospital Conde S. Januário',Complemento_direccion('Macao'),125,36);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(27,  'Huoshanshen',Complemento_direccion('Wuhan '),125,37);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(28,  'Bayley and Jackson Medical',Complemento_direccion('Beijing'),125,38);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(29,  'Beijing International (SOS)',Complemento_direccion('Beijing'),125,39);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(30,  'Beijing United Family Clinic',Complemento_direccion(' Beijing'),125,40);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(31,  'Hospital Groote Schuur ',Complemento_direccion('Cape Town'),125,26);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(32,  'Chris Hani Baragwanath Academic Hospital',Complemento_direccion('Johannesburg'),125,27);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(33,  'Somerset Hospital',Complemento_direccion('Cape Town'),125,28);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(34,  'The Red Cross War Memorial Children’s Hospital',Complemento_direccion('Cape Town'),125,29);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(35,  'Netcare N1 City Hospital',Complemento_direccion('Cape Town'),125,30);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(36,  'Hospital Universitario Fundación Jiménez Díaz',Complemento_direccion('Madrid'),125,51);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(37,  'Hospital Universitario La Paz',Complemento_direccion('Madrid'),125,52);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(38,  'Hospital Universitario Central de Asturias',Complemento_direccion('Asturias'),125,53);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(39,  'Hospital Universitario Virgen del Rocío',Complemento_direccion('Sevilla'),125,54);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(40,  'Hospital Psiquiátrico ',Complemento_direccion(' Madrid'),125,55);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(41,  'Cleveland Clinic',Complemento_direccion('Cleveland, OH '),125,41);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(42,  'Hospital clínico central',Complemento_direccion('Moscú'),125,42);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(43,  'Oymyakonskaya Tsentralnaya Rayonnaya Bol nitsa',Complemento_direccion('Sakha Republic'),125,43);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(44,  'Klinicheskiy Gospital Mediko-Sanitarnoy Chasti Mvd Po Respublike Tatarstan',Complemento_direccion('Kazan'),125,44);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(45,  'St Petersburg Psychiatric Hospital of Specialized Type with Intense Observation ',Complemento_direccion('St Petersburg'),125,45);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(46,  'Hospital José María Vargas ',Complemento_direccion('Vargas'),125,31);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(47,  'Hospital Universitario de Caracas',Complemento_direccion('Distrito Capital'),125,32);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(48,  'Hospital de Niños Dr. J. M. de los Ríos ',Complemento_direccion('Zulia'),125,33);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(49,  'Hospital San Juan de Dios',Complemento_direccion('Aragua'),125,34);

INSERT INTO Clinica(Codigo_clinica,Nombre_clinica,Direccion_clinica,Numero_camas,FK_Lugar_Clinica) VALUES 
(50,  'Hospital San José de las Hermanitas de los Pobres',Complemento_direccion('Miranda'),125,35);



-- VUELO

INSERT INTO Vuelo VALUES (1,'Aerolineas Argentinas',TO_DATE('2020-05-01', 'YYYY-MM-DD'),1,2);
INSERT INTO Vuelo VALUES (2,'LATAM',TO_DATE('2020-05-02', 'YYYY-MM-DD'),1,3);
INSERT INTO Vuelo VALUES (3,'Avianca',TO_DATE('2020-05-03', 'YYYY-MM-DD'),1,4);
INSERT INTO Vuelo VALUES (4,'Copa Airlines',TO_DATE('2020-05-04', 'YYYY-MM-DD'),1,5);
INSERT INTO Vuelo VALUES (5,'American Airlines',TO_DATE('2020-05-05', 'YYYY-MM-DD'),1,6);
INSERT INTO Vuelo VALUES (6,'Delta',TO_DATE('2020-05-06', 'YYYY-MM-DD'),1,7);
INSERT INTO Vuelo VALUES (7,'United Airlines',TO_DATE('2020-05-07', 'YYYY-MM-DD'),1,8);
INSERT INTO Vuelo VALUES (8,'Norwegian',TO_DATE('2020-05-08', 'YYYY-MM-DD'),1,9);
INSERT INTO Vuelo VALUES (9,'FlyBondi',TO_DATE('2020-05-09', 'YYYY-MM-DD'),1,10);
INSERT INTO Vuelo VALUES (10,'Lufthansa',TO_DATE('2020-05-10', 'YYYY-MM-DD'),2,1);
INSERT INTO Vuelo VALUES (11,'Aerolineas Argentinas',TO_DATE('2020-05-11', 'YYYY-MM-DD'),2,3);
INSERT INTO Vuelo VALUES (12,'LATAM',TO_DATE('2020-05-12', 'YYYY-MM-DD'),2,4);
INSERT INTO Vuelo VALUES (13,'Avianca',TO_DATE('2020-05-13', 'YYYY-MM-DD'),2,5);
INSERT INTO Vuelo VALUES (14,'Copa Airlines',TO_DATE('2020-05-14', 'YYYY-MM-DD'),2,6);
INSERT INTO Vuelo VALUES (15,'American Airlines',TO_DATE('2020-05-15', 'YYYY-MM-DD'),2,7);
INSERT INTO Vuelo VALUES (16,'Delta',TO_DATE('2020-05-16', 'YYYY-MM-DD'),2,8);
INSERT INTO Vuelo VALUES (17,'United Airlines',TO_DATE('2020-05-17', 'YYYY-MM-DD'),2,9);
INSERT INTO Vuelo VALUES (18,'Norwegian',TO_DATE('2020-05-18', 'YYYY-MM-DD'),2,10);
INSERT INTO Vuelo VALUES (19,'FlyBondi',TO_DATE('2020-05-19', 'YYYY-MM-DD'),3,1);
INSERT INTO Vuelo VALUES (20,'Lufthansa',TO_DATE('2020-05-20', 'YYYY-MM-DD'),3,2);
INSERT INTO Vuelo VALUES (21,'Aerolineas Argentinas',TO_DATE('2020-05-21', 'YYYY-MM-DD'),3,4);
INSERT INTO Vuelo VALUES (22,'LATAM',TO_DATE('2020-05-22', 'YYYY-MM-DD'),3,5);
INSERT INTO Vuelo VALUES (23,'Avianca',TO_DATE('2020-05-23', 'YYYY-MM-DD'),3,6);
INSERT INTO Vuelo VALUES (24,'Copa Airlines',TO_DATE('2020-05-24', 'YYYY-MM-DD'),3,7);
INSERT INTO Vuelo VALUES (25,'American Airlines',TO_DATE('2020-05-25', 'YYYY-MM-DD'),3,8);
INSERT INTO Vuelo VALUES (26,'Delta',TO_DATE('2020-05-26', 'YYYY-MM-DD'),3,9);
INSERT INTO Vuelo VALUES (27,'United Airlines',TO_DATE('2020-05-27', 'YYYY-MM-DD'),3,10);
INSERT INTO Vuelo VALUES (28,'Norwegian',TO_DATE('2020-05-28', 'YYYY-MM-DD'),4,1);
INSERT INTO Vuelo VALUES (29,'FlyBondi',TO_DATE('2020-05-29', 'YYYY-MM-DD'),4,2);
INSERT INTO Vuelo VALUES (30,'Lufthansa',TO_DATE('2020-05-30', 'YYYY-MM-DD'),4,3);
INSERT INTO Vuelo VALUES (31,'Aerolineas Argentinas',TO_DATE('2020-05-31', 'YYYY-MM-DD'),4,5);
INSERT INTO Vuelo VALUES (32,'LATAM',TO_DATE('2020-05-01', 'YYYY-MM-DD'),4,6);
INSERT INTO Vuelo VALUES (33,'Avianca',TO_DATE('2020-05-02', 'YYYY-MM-DD'),4,7);
INSERT INTO Vuelo VALUES (34,'Copa Airlines',TO_DATE('2020-05-03', 'YYYY-MM-DD'),4,8);
INSERT INTO Vuelo VALUES (35,'American Airlines',TO_DATE('2020-05-04', 'YYYY-MM-DD'),4,9);
INSERT INTO Vuelo VALUES (36,'Delta',TO_DATE('2020-05-05', 'YYYY-MM-DD'),4,10);
INSERT INTO Vuelo VALUES (37,'United Airlines',TO_DATE('2020-05-06', 'YYYY-MM-DD'),5,1);
INSERT INTO Vuelo VALUES (38,'Norwegian',TO_DATE('2020-05-07', 'YYYY-MM-DD'),5,2);
INSERT INTO Vuelo VALUES (39,'FlyBondi',TO_DATE('2020-05-08', 'YYYY-MM-DD'),5,3);
INSERT INTO Vuelo VALUES (40,'Lufthansa',TO_DATE('2020-05-09', 'YYYY-MM-DD'),5,4);
INSERT INTO Vuelo VALUES (41,'Aerolineas Argentinas',TO_DATE('2020-05-10', 'YYYY-MM-DD'),5,6);
INSERT INTO Vuelo VALUES (42,'LATAM',TO_DATE('2020-05-11', 'YYYY-MM-DD'),5,7);
INSERT INTO Vuelo VALUES (43,'Avianca',TO_DATE('2020-05-12', 'YYYY-MM-DD'),5,8);
INSERT INTO Vuelo VALUES (44,'Copa Airlines',TO_DATE('2020-05-13', 'YYYY-MM-DD'),5,9);
INSERT INTO Vuelo VALUES (45,'American Airlines',TO_DATE('2020-05-14', 'YYYY-MM-DD'),5,10);
INSERT INTO Vuelo VALUES (46,'Delta',TO_DATE('2020-05-15', 'YYYY-MM-DD'),6,1);
INSERT INTO Vuelo VALUES (47,'United Airlines',TO_DATE('2020-05-16', 'YYYY-MM-DD'),6,2);
INSERT INTO Vuelo VALUES (48,'Norwegian',TO_DATE('2020-05-17', 'YYYY-MM-DD'),6,3);
INSERT INTO Vuelo VALUES (49,'FlyBondi',TO_DATE('2020-05-18', 'YYYY-MM-DD'),6,4);
INSERT INTO Vuelo VALUES (50,'Lufthansa',TO_DATE('2020-05-19', 'YYYY-MM-DD'),6,5);
INSERT INTO Vuelo VALUES (51,'Aerolineas Argentinas',TO_DATE('2020-05-20', 'YYYY-MM-DD'),6,7);
INSERT INTO Vuelo VALUES (52,'LATAM',TO_DATE('2020-05-21', 'YYYY-MM-DD'),6,8);
INSERT INTO Vuelo VALUES (53,'Avianca',TO_DATE('2020-05-22', 'YYYY-MM-DD'),6,9);
INSERT INTO Vuelo VALUES (54,'Copa Airlines',TO_DATE('2020-05-23', 'YYYY-MM-DD'),6,10);
INSERT INTO Vuelo VALUES (55,'American Airlines',TO_DATE('2020-05-24', 'YYYY-MM-DD'),7,1);
INSERT INTO Vuelo VALUES (56,'Delta',TO_DATE('2020-05-25', 'YYYY-MM-DD'),7,2);
INSERT INTO Vuelo VALUES (57,'United Airlines',TO_DATE('2020-05-26', 'YYYY-MM-DD'),7,3);
INSERT INTO Vuelo VALUES (58,'Norwegian',TO_DATE('2020-05-27', 'YYYY-MM-DD'),7,4);
INSERT INTO Vuelo VALUES (59,'FlyBondi',TO_DATE('2020-05-28', 'YYYY-MM-DD'),7,5);
INSERT INTO Vuelo VALUES (60,'Lufthansa',TO_DATE('2020-05-29', 'YYYY-MM-DD'),7,6);
INSERT INTO Vuelo VALUES (61,'Aerolineas Argentinas',TO_DATE('2020-05-30', 'YYYY-MM-DD'),7,8);
INSERT INTO Vuelo VALUES (62,'LATAM',TO_DATE('2020-05-31', 'YYYY-MM-DD'),7,9);
INSERT INTO Vuelo VALUES (63,'Avianca',TO_DATE('2020-05-01', 'YYYY-MM-DD'),7,10);
INSERT INTO Vuelo VALUES (64,'Copa Airlines',TO_DATE('2020-05-02', 'YYYY-MM-DD'),8,1);
INSERT INTO Vuelo VALUES (65,'American Airlines',TO_DATE('2020-05-03', 'YYYY-MM-DD'),8,2);
INSERT INTO Vuelo VALUES (66,'Delta',TO_DATE('2020-05-04', 'YYYY-MM-DD'),8,3);
INSERT INTO Vuelo VALUES (67,'United Airlines',TO_DATE('2020-05-05', 'YYYY-MM-DD'),8,4);
INSERT INTO Vuelo VALUES (68,'Norwegian',TO_DATE('2020-05-06', 'YYYY-MM-DD'),8,5);
INSERT INTO Vuelo VALUES (69,'FlyBondi',TO_DATE('2020-05-07', 'YYYY-MM-DD'),8,6);
INSERT INTO Vuelo VALUES (70,'AirFrance',TO_DATE('2020-05-08', 'YYYY-MM-DD'),8,7);
INSERT INTO Vuelo VALUES (71,'Aerolineas Argentinas',TO_DATE('2020-05-09', 'YYYY-MM-DD'),8,9);
INSERT INTO Vuelo VALUES (72,'LATAM',TO_DATE('2020-05-10', 'YYYY-MM-DD'),8,10);
INSERT INTO Vuelo VALUES (73,'Avianca',TO_DATE('2020-05-11', 'YYYY-MM-DD'),9,1);
INSERT INTO Vuelo VALUES (74,'Copa Airlines',TO_DATE('2020-05-12', 'YYYY-MM-DD'),9,2);
INSERT INTO Vuelo VALUES (75,'American Airlines',TO_DATE('2020-05-13', 'YYYY-MM-DD'),9,3);
INSERT INTO Vuelo VALUES (76,'Delta',TO_DATE('2020-05-14', 'YYYY-MM-DD'),9,4);
INSERT INTO Vuelo VALUES (77,'United Airlines',TO_DATE('2020-05-15', 'YYYY-MM-DD'),9,5);
INSERT INTO Vuelo VALUES (78,'Norwegian',TO_DATE('2020-05-16', 'YYYY-MM-DD'),9,6);
INSERT INTO Vuelo VALUES (79,'FlyBondi',TO_DATE('2020-05-17', 'YYYY-MM-DD'),9,7);
INSERT INTO Vuelo VALUES (80,'AirFrance',TO_DATE('2020-05-18', 'YYYY-MM-DD'),9,8);
INSERT INTO Vuelo VALUES (81,'Aerolineas Argentinas',TO_DATE('2020-05-19', 'YYYY-MM-DD'),9,10);
INSERT INTO Vuelo VALUES (82,'LATAM',TO_DATE('2020-05-20', 'YYYY-MM-DD'),10,1);
INSERT INTO Vuelo VALUES (83,'Avianca',TO_DATE('2020-05-21', 'YYYY-MM-DD'),10,2);
INSERT INTO Vuelo VALUES (84,'Copa Airlines',TO_DATE('2020-05-22', 'YYYY-MM-DD'),10,3);
INSERT INTO Vuelo VALUES (85,'American Airlines',TO_DATE('2020-05-23', 'YYYY-MM-DD'),10,4);
INSERT INTO Vuelo VALUES (86,'Delta',TO_DATE('2020-05-24', 'YYYY-MM-DD'),10,5);
INSERT INTO Vuelo VALUES (87,'United Airlines',TO_DATE('2020-05-25', 'YYYY-MM-DD'),10,6);
INSERT INTO Vuelo VALUES (88,'Norwegian',TO_DATE('2020-05-26', 'YYYY-MM-DD'),10,7);
INSERT INTO Vuelo VALUES (89,'FlyBondi',TO_DATE('2020-05-27', 'YYYY-MM-DD'),10,8);
INSERT INTO Vuelo VALUES (90,'AirFrance',TO_DATE('2020-05-28', 'YYYY-MM-DD'),10,9);


---------------------------------------------------------------------------Insumo-------------------------------------------------------------------
INSERT into Insumo(Nombre_insumo,Descripcion_insumo) VALUES('Tapa boca','El tapabocas debe cubrir nariz y boca. Este debe quedar ajustado a la cara. La parte con color debe ponerse hacia afuera, puesto que es impermeable y es la barrera para los agentes externos. Colocárselo con el impermeable hacia adentro dificulta respirar y favorece la absorción de partículas.');
INSERT into Insumo(Nombre_insumo,Descripcion_insumo) VALUES('Jabon Antibacterial','El Jabón Líquido para Manos está diseñado para la limpieza y humectación de las manos, sin provocar
resequedad después de su aplicación. Disponible en diferentes aromas y neutro');
INSERT into Insumo(Nombre_insumo,Descripcion_insumo) VALUES('Vitamina C','La vitamina C (ácido ascórbico) es una vitamina que el cuerpo necesita para formar los vasos sanguíneos, los cartílagos, los músculos y el colágeno en los huesos. También es vital en el proceso de curación del cuerpo.');
INSERT into Insumo(Nombre_insumo,Descripcion_insumo) VALUES('Alcohol','se usa en el secado de oídos para evitar la otitis externa. Diluido, se utiliza como desinfectante de manos. También es posible emplearlo como antiséptico o alcohol para frotar (de la misma manera que se emplearía el alcohol etílico desnaturalizado).');
INSERT into Insumo(Nombre_insumo,Descripcion_insumo) VALUES('Base De Pared Con Ruedas','Base para colocar bolsas de Suero');
INSERT into Insumo(Nombre_insumo,Descripcion_insumo) VALUES('Concentrador De Oxigeno Nebulizador','Este equipo se encarga de suministrar oxígeno de elevada pureza, libre de aditivos y agentes contaminantes, fresco y natural. Tiene un asa superior para facilitar su transporte.');
INSERT into Insumo(Nombre_insumo,Descripcion_insumo) VALUES('Guantes quirúrgicos','son guantes desechables utilizados durante procedimientos médicos que impiden la contaminación cruzada entre el personal de la salud y los pacientes.​');
INSERT into Insumo(Nombre_insumo,Descripcion_insumo) VALUES('Tanques de oxígeno','Un cilindro de oxígeno es un recipiente de almacenaje de dioxígeno, tanto bajo presión en cilindros de gas o como oxígeno líquido en tanques de almacenaje criogénicos.');
INSERT into Insumo(Nombre_insumo,Descripcion_insumo) VALUES('Jeringa','Consiste en un émbolo insertado en un tubo que tiene una pequeña apertura en uno de sus extremos por donde se expulsa el contenido de dicho tubo.');
INSERT into Insumo(Nombre_insumo,Descripcion_insumo) VALUES('Vendas','Consiste en paños de lino o de lana unidas entre sí y colocadas en un orden racional.');
INSERT into Insumo(Nombre_insumo,Descripcion_insumo) VALUES('Cateter','Un catéter es, en medicina, un dispositivo con forma de tubo estrecho y alargado que puede ser introducido dentro de un tejido o vena.');
INSERT into Insumo(Nombre_insumo,Descripcion_insumo) VALUES('Kit de Despistaje','Kit para detectar casos de Covid-19');
INSERT into Insumo(Nombre_insumo,Descripcion_insumo) VALUES('Bolsas respiratorias','Bolsa de reanimación 500 ml, autoinflable con válvula paciente,
válvula de peep, válvula de admisión, válvula reservorio, con máscara pediátrica transparente, anatómica, siliconizada con tubo de
conexión a oxígeno sin rosca');
INSERT into Insumo(Nombre_insumo,Descripcion_insumo) VALUES('Careta de Proteccion Visual','Destinado a proteger los ojos y la cara del trabajador ante riesgos externos tales como la proyección de partículas o cuerpos sólidos.');
INSERT into Insumo(Nombre_insumo,Descripcion_insumo) VALUES('Antivirales','Los antivirales son un tipo de fármaco usado para el tratamiento de infecciones producidas por virus.');

------------------------------------------------------- Proveedor_Internet------------------------------------
INSERT INTO Proveedor_Internet(Nombre_proveedor,Direccion_proveedor) values ('Level 3',Complemento_direccion('794 Maywood Center'));
INSERT INTO Proveedor_Internet(Nombre_proveedor,Direccion_proveedor) values ('GTT',Complemento_direccion('59 Oxford Plaza'));
INSERT INTO Proveedor_Internet(Nombre_proveedor,Direccion_proveedor) values ('T-Mobile',Complemento_direccion('184 Redwing Parkway'));
INSERT INTO Proveedor_Internet(Nombre_proveedor,Direccion_proveedor) values ('Verizon Business',Complemento_direccion('14629 Lien Park'));
INSERT INTO Proveedor_Internet(Nombre_proveedor,Direccion_proveedor) values ('KPN International',Complemento_direccion('6390 Acker Circle'));
INSERT INTO Proveedor_Internet(Nombre_proveedor,Direccion_proveedor) values ('NTT Communications',Complemento_direccion('47 Saint Paul Alley'));
INSERT INTO Proveedor_Internet(Nombre_proveedor,Direccion_proveedor) values ('Qwest',Complemento_direccion('31464 Carioca Trail'));
INSERT INTO Proveedor_Internet(Nombre_proveedor,Direccion_proveedor) values ('Congent',Complemento_direccion('5535 Wayridge Court'));
INSERT INTO Proveedor_Internet(Nombre_proveedor,Direccion_proveedor) values ('Orange',Complemento_direccion('84933 Anniversary Road'));
INSERT INTO Proveedor_Internet(Nombre_proveedor,Direccion_proveedor) values ('Sprint',Complemento_direccion('47 Macpherson Lane'));
INSERT INTO Proveedor_Internet(Nombre_proveedor,Direccion_proveedor) values ('Global Telecom',Complemento_direccion('00960 Larry Lane'));
INSERT INTO Proveedor_Internet(Nombre_proveedor,Direccion_proveedor) values ('Teleglobe',Complemento_direccion('79716 Blaine Avenue'));
INSERT INTO Proveedor_Internet(Nombre_proveedor,Direccion_proveedor) values ('Deutsche Telekom',Complemento_direccion('3547 Cherokee Place'));
INSERT INTO Proveedor_Internet(Nombre_proveedor,Direccion_proveedor) values ('Telecom Italia',Complemento_direccion('5158 Meadow Valley Center'));
INSERT INTO Proveedor_Internet(Nombre_proveedor,Direccion_proveedor) values ('CANTV',Complemento_direccion('69 Hollow Ridge Drive'));

-- Lugar_Proveedor --
INSERT INTO Lugar_Proveedor VALUES (1,TO_DATE('2020-05-01','YYYY-MM-DD'),'2 MB','4 MB',3,1,1);
INSERT INTO Lugar_Proveedor VALUES (2,TO_DATE('2020-05-02','YYYY-MM-DD'),'1 MB','1.5 MB',1,2,2);
INSERT INTO Lugar_Proveedor VALUES (3,TO_DATE('2020-05-03','YYYY-MM-DD'),'0.5 MB','1 MB',10,3,3);
INSERT INTO Lugar_Proveedor VALUES (4,TO_DATE('2020-05-04','YYYY-MM-DD'),'0.2 MB','0.4 MB',5,4,4);
INSERT INTO Lugar_Proveedor VALUES (5,TO_DATE('2020-05-05','YYYY-MM-DD'),'6 MB','12 MB',4,5,5);
INSERT INTO Lugar_Proveedor VALUES (6,TO_DATE('2020-05-06','YYYY-MM-DD'),'10 MB','15 MB',6,6,6);
INSERT INTO Lugar_Proveedor VALUES (7,TO_DATE('2020-05-07','YYYY-MM-DD'),'12 MB','20 MB',2,7,7);
INSERT INTO Lugar_Proveedor VALUES (8,TO_DATE('2020-05-08','YYYY-MM-DD'),'8 MB','16 MB',7,8,7);
INSERT INTO Lugar_Proveedor VALUES (9,TO_DATE('2020-05-09','YYYY-MM-DD'),'9 MB','17 MB',9,9,8);
INSERT INTO Lugar_Proveedor VALUES (10,TO_DATE('2020-05-10','YYYY-MM-DD'),'10 MB','19 MB',11,10,9);
INSERT INTO Lugar_Proveedor VALUES (11,TO_DATE('2020-05-11','YYYY-MM-DD'),'10 MB','22 MB',12,11,10);
INSERT INTO Lugar_Proveedor VALUES (12,TO_DATE('2020-05-12','YYYY-MM-DD'),'3.5 MB','7 MB',15,12,1);
INSERT INTO Lugar_Proveedor VALUES (13,TO_DATE('2020-05-13','YYYY-MM-DD'),'4.5 MB','9 MB',17,13,2);
INSERT INTO Lugar_Proveedor VALUES (14,TO_DATE('2020-05-14','YYYY-MM-DD'),'25 MB','50 MB',1,14,5);
INSERT INTO Lugar_Proveedor VALUES (15,TO_DATE('2020-05-15','YYYY-MM-DD'),'5 MB','11 MB',7,15,8);

