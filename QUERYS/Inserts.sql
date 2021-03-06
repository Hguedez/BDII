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


--CLINICA
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
(23,  'Royal Brisbane y Womens Hospital',Complemento_direccion('Brisbane'),125,58);

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

--FECHA ACTUAL
insert into fecha_actual (fecha_actual) values (TO_DATE('2020-06-29', 'YYYY-MM-DD'));




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

-- Frontera 
INSERT INTO Frontera VALUES (1,Fecha_Inicio_Fin(Fecha_Inicio_Fin.validar_fecha_inicio(TO_DATE('2020-05-01', 'YYYY-MM-DD'), TO_DATE('2020-06-01', 'YYYY-MM-DD')), Fecha_Inicio_Fin.validar_fecha_fin(TO_DATE('2020-05-01', 'YYYY-MM-DD'), TO_DATE('2020-06-01', 'YYYY-MM-DD'))),1);
INSERT INTO Frontera VALUES (2,Fecha_Inicio_Fin(Fecha_Inicio_Fin.validar_fecha_inicio(TO_DATE('2020-05-12', 'YYYY-MM-DD'), TO_DATE('2020-06-08', 'YYYY-MM-DD')), Fecha_Inicio_Fin.validar_fecha_fin(TO_DATE('2020-05-12', 'YYYY-MM-DD'), TO_DATE('2020-06-08', 'YYYY-MM-DD'))),2);
INSERT INTO Frontera VALUES (3,Fecha_Inicio_Fin(Fecha_Inicio_Fin.validar_fecha_inicio(TO_DATE('2020-05-05', 'YYYY-MM-DD'), TO_DATE('2020-06-02', 'YYYY-MM-DD')), Fecha_Inicio_Fin.validar_fecha_fin(TO_DATE('2020-05-05', 'YYYY-MM-DD'), TO_DATE('2020-06-02', 'YYYY-MM-DD'))),3);
INSERT INTO Frontera VALUES (4,Fecha_Inicio_Fin(Fecha_Inicio_Fin.validar_fecha_inicio(TO_DATE('2020-05-06', 'YYYY-MM-DD'), TO_DATE('2020-06-06', 'YYYY-MM-DD')), Fecha_Inicio_Fin.validar_fecha_fin(TO_DATE('2020-05-06', 'YYYY-MM-DD'), TO_DATE('2020-06-06', 'YYYY-MM-DD'))),4);
INSERT INTO Frontera VALUES (5,Fecha_Inicio_Fin(Fecha_Inicio_Fin.validar_fecha_inicio(TO_DATE('2020-05-11', 'YYYY-MM-DD'), TO_DATE('2020-06-12', 'YYYY-MM-DD')), Fecha_Inicio_Fin.validar_fecha_fin(TO_DATE('2020-05-11', 'YYYY-MM-DD'), TO_DATE('2020-06-12', 'YYYY-MM-DD'))),5);
INSERT INTO Frontera VALUES (6,Fecha_Inicio_Fin(Fecha_Inicio_Fin.validar_fecha_inicio(TO_DATE('2020-05-14', 'YYYY-MM-DD'), TO_DATE('2020-06-12', 'YYYY-MM-DD')), Fecha_Inicio_Fin.validar_fecha_fin(TO_DATE('2020-05-14', 'YYYY-MM-DD'), TO_DATE('2020-06-12', 'YYYY-MM-DD'))),6);
INSERT INTO Frontera VALUES (7,Fecha_Inicio_Fin(Fecha_Inicio_Fin.validar_fecha_inicio(TO_DATE('2020-05-16', 'YYYY-MM-DD'), TO_DATE('2020-06-18', 'YYYY-MM-DD')), Fecha_Inicio_Fin.validar_fecha_fin(TO_DATE('2020-05-16', 'YYYY-MM-DD'), TO_DATE('2020-06-18', 'YYYY-MM-DD'))),7);
INSERT INTO Frontera VALUES (8,Fecha_Inicio_Fin(Fecha_Inicio_Fin.validar_fecha_inicio(TO_DATE('2020-05-19', 'YYYY-MM-DD'), TO_DATE('2020-06-19', 'YYYY-MM-DD')), Fecha_Inicio_Fin.validar_fecha_fin(TO_DATE('2020-05-19', 'YYYY-MM-DD'), TO_DATE('2020-06-19', 'YYYY-MM-DD'))),8);
INSERT INTO Frontera VALUES (9,Fecha_Inicio_Fin(Fecha_Inicio_Fin.validar_fecha_inicio(TO_DATE('2020-05-22', 'YYYY-MM-DD'), TO_DATE('2020-06-23', 'YYYY-MM-DD')), Fecha_Inicio_Fin.validar_fecha_fin(TO_DATE('2020-05-22', 'YYYY-MM-DD'), TO_DATE('2020-06-23', 'YYYY-MM-DD'))),9);
INSERT INTO Frontera VALUES (10,Fecha_Inicio_Fin(Fecha_Inicio_Fin.validar_fecha_inicio(TO_DATE('2020-05-12', 'YYYY-MM-DD'), TO_DATE('2020-06-12', 'YYYY-MM-DD')), Fecha_Inicio_Fin.validar_fecha_fin(TO_DATE('2020-05-12', 'YYYY-MM-DD'), TO_DATE('2020-06-12', 'YYYY-MM-DD'))),10);
INSERT INTO Frontera VALUES (11,Fecha_Inicio_Fin(Fecha_Inicio_Fin.validar_fecha_inicio(TO_DATE('2020-05-11', 'YYYY-MM-DD'), TO_DATE('2020-06-15', 'YYYY-MM-DD')), Fecha_Inicio_Fin.validar_fecha_fin(TO_DATE('2020-05-11', 'YYYY-MM-DD'), TO_DATE('2020-06-15', 'YYYY-MM-DD'))),1);
INSERT INTO Frontera VALUES (12,Fecha_Inicio_Fin(Fecha_Inicio_Fin.validar_fecha_inicio(TO_DATE('2020-05-23', 'YYYY-MM-DD'), TO_DATE('2020-06-26', 'YYYY-MM-DD')), Fecha_Inicio_Fin.validar_fecha_fin(TO_DATE('2020-05-23', 'YYYY-MM-DD'), TO_DATE('2020-06-26', 'YYYY-MM-DD'))),3);
INSERT INTO Frontera VALUES (13,Fecha_Inicio_Fin(Fecha_Inicio_Fin.validar_fecha_inicio(TO_DATE('2020-05-22', 'YYYY-MM-DD'), TO_DATE('2020-06-21', 'YYYY-MM-DD')), Fecha_Inicio_Fin.validar_fecha_fin(TO_DATE('2020-05-22', 'YYYY-MM-DD'), TO_DATE('2020-06-21', 'YYYY-MM-DD'))),5);
INSERT INTO Frontera VALUES (14,Fecha_Inicio_Fin(Fecha_Inicio_Fin.validar_fecha_inicio(TO_DATE('2020-05-09', 'YYYY-MM-DD'), TO_DATE('2020-06-06', 'YYYY-MM-DD')), Fecha_Inicio_Fin.validar_fecha_fin(TO_DATE('2020-05-09', 'YYYY-MM-DD'), TO_DATE('2020-06-06', 'YYYY-MM-DD'))),8);
INSERT INTO Frontera VALUES (15,Fecha_Inicio_Fin(Fecha_Inicio_Fin.validar_fecha_inicio(TO_DATE('2020-05-05', 'YYYY-MM-DD'), TO_DATE('2020-06-04', 'YYYY-MM-DD')), Fecha_Inicio_Fin.validar_fecha_fin(TO_DATE('2020-05-05', 'YYYY-MM-DD'), TO_DATE('2020-06-04', 'YYYY-MM-DD'))),9);

-- Ayuda_Humanitaria 
INSERT INTO Ayuda_Humanitaria VALUES (1,TO_DATE('2020-05-01', 'YYYY-MM-DD'), 100000,1,10);
INSERT INTO Ayuda_Humanitaria VALUES (2,TO_DATE('2020-05-01', 'YYYY-MM-DD'), 56700,2,9);
INSERT INTO Ayuda_Humanitaria VALUES (3,TO_DATE('2020-05-01', 'YYYY-MM-DD'), 186700,3,8);
INSERT INTO Ayuda_Humanitaria VALUES (4,TO_DATE('2020-05-01', 'YYYY-MM-DD'), 1000,4,7);
INSERT INTO Ayuda_Humanitaria VALUES (5,TO_DATE('2020-05-01', 'YYYY-MM-DD'), 1000000,5,6);
INSERT INTO Ayuda_Humanitaria VALUES (6,TO_DATE('2020-05-01', 'YYYY-MM-DD'), 245000,10,9);
INSERT INTO Ayuda_Humanitaria VALUES (7,TO_DATE('2020-05-01', 'YYYY-MM-DD'), 112445,8,2);
INSERT INTO Ayuda_Humanitaria VALUES (8,TO_DATE('2020-05-01', 'YYYY-MM-DD'), 345600,7,3);
INSERT INTO Ayuda_Humanitaria VALUES (9,TO_DATE('2020-05-01', 'YYYY-MM-DD'), 347899,4,9);
INSERT INTO Ayuda_Humanitaria VALUES (10,TO_DATE('2020-05-01', 'YYYY-MM-DD'), 98745,2,6);
INSERT INTO Ayuda_Humanitaria VALUES (11,TO_DATE('2020-05-01', 'YYYY-MM-DD'), 86540,3,7);
INSERT INTO Ayuda_Humanitaria VALUES (12,TO_DATE('2020-05-01', 'YYYY-MM-DD'), 643000,4,8);
INSERT INTO Ayuda_Humanitaria VALUES (13,TO_DATE('2020-05-01', 'YYYY-MM-DD'), 123400,5,1);
INSERT INTO Ayuda_Humanitaria VALUES (14,TO_DATE('2020-05-01', 'YYYY-MM-DD'), 12000,7,4);
INSERT INTO Ayuda_Humanitaria VALUES (15,TO_DATE('2020-05-01', 'YYYY-MM-DD'), 674932,9,2);



-- Ayuda_insumo 

INSERT INTO Ayuda_Insumo VALUES (1,15,1,1);
INSERT INTO Ayuda_Insumo VALUES (2,26,2,2);
INSERT INTO Ayuda_Insumo VALUES (3,116,3,3);
INSERT INTO Ayuda_Insumo VALUES (4,245,4,4);
INSERT INTO Ayuda_Insumo VALUES (5,432,5,5);
INSERT INTO Ayuda_Insumo VALUES (6,543,6,6);
INSERT INTO Ayuda_Insumo VALUES (7,112,7,7);
INSERT INTO Ayuda_Insumo VALUES (8,189,8,8);
INSERT INTO Ayuda_Insumo VALUES (9,768,9,9);
INSERT INTO Ayuda_Insumo VALUES (10,1000,10,10);
INSERT INTO Ayuda_Insumo VALUES (11,567,11,11);
INSERT INTO Ayuda_Insumo VALUES (12,345,12,12);
INSERT INTO Ayuda_Insumo VALUES (13,2334,13,13);
INSERT INTO Ayuda_Insumo VALUES (14,1356,14,14);
INSERT INTO Ayuda_Insumo VALUES (15,564,15,15);


--Clinica_insumo 
INSERT INTO Clinica_insumo values (1,1,1);
INSERT INTO Clinica_insumo values (2,2,7);
INSERT INTO Clinica_insumo values (3,3,11);
INSERT INTO Clinica_insumo values (4,4,13);
INSERT INTO Clinica_insumo values (5,5,15);
INSERT INTO Clinica_insumo values (6,6,2);
INSERT INTO Clinica_insumo values (7,7,2);
INSERT INTO Clinica_insumo values (8,8,3);
INSERT INTO Clinica_insumo values (9,9,4);
INSERT INTO Clinica_insumo values (10,10,5);
INSERT INTO Clinica_insumo values (11,11,6);
INSERT INTO Clinica_insumo values (12,12,7);
INSERT INTO Clinica_insumo values (13,13,8);
INSERT INTO Clinica_insumo values (14,14,9);
INSERT INTO Clinica_insumo values (15,15,10);
INSERT INTO Clinica_insumo values (16,16,11);
INSERT INTO Clinica_insumo values (17,17,12);
INSERT INTO Clinica_insumo values (18,18,13);
INSERT INTO Clinica_insumo values (19,19,14);
INSERT INTO Clinica_insumo values (20,20,15);
INSERT INTO Clinica_insumo values (21,21,1);
INSERT INTO Clinica_insumo values (22,22,2);
INSERT INTO Clinica_insumo values (23,23,3);
INSERT INTO Clinica_insumo values (24,24,4);
INSERT INTO Clinica_insumo values (25,25,5);
INSERT INTO Clinica_insumo values (26,26,6);
INSERT INTO Clinica_insumo values (27,27,7);
INSERT INTO Clinica_insumo values (28,28,8);
INSERT INTO Clinica_insumo values (29,29,9);
INSERT INTO Clinica_insumo values (30,30,10);
INSERT INTO Clinica_insumo values (31,31,11);
INSERT INTO Clinica_insumo values (32,32,12);
INSERT INTO Clinica_insumo values (33,33,13);
INSERT INTO Clinica_insumo values (34,34,14);
INSERT INTO Clinica_insumo values (35,35,15);
INSERT INTO Clinica_insumo values (36,36,1);
INSERT INTO Clinica_insumo values (37,37,2);
INSERT INTO Clinica_insumo values (38,38,3);
INSERT INTO Clinica_insumo values (39,39,4);
INSERT INTO Clinica_insumo values (40,40,5);
INSERT INTO Clinica_insumo values (41,41,6);
INSERT INTO Clinica_insumo values (42,42,7);
INSERT INTO Clinica_insumo values (43,43,8);
INSERT INTO Clinica_insumo values (44,44,9);
INSERT INTO Clinica_insumo values (45,45,10);
INSERT INTO Clinica_insumo values (46,46,11);
INSERT INTO Clinica_insumo values (47,47,12);
INSERT INTO Clinica_insumo values (48,48,13);
INSERT INTO Clinica_insumo values (49,49,14);
INSERT INTO Clinica_insumo values (50,50,15);

-- Aerolinea
INSERT INTO Aerolinea (nombre_aerolinea) values ('American Airlines');
INSERT INTO Aerolinea (nombre_aerolinea) values ('Air Canada');
INSERT INTO Aerolinea (nombre_aerolinea) values ('Cubana de Aviacion');
INSERT INTO Aerolinea (nombre_aerolinea) values ('South African Airways');
INSERT INTO Aerolinea (nombre_aerolinea) values ('Conviasa');
INSERT INTO Aerolinea (nombre_aerolinea) values ('Air China');
INSERT INTO Aerolinea (nombre_aerolinea) values ('Aeroflot Russian Airlines');
INSERT INTO Aerolinea (nombre_aerolinea) values ('Lufthansa');
INSERT INTO Aerolinea (nombre_aerolinea) values ('Iberia');
INSERT INTO Aerolinea (nombre_aerolinea) values ('Qantas Airways');
INSERT INTO Aerolinea (nombre_aerolinea) values ('Delta Airlines');
INSERT INTO Aerolinea (nombre_aerolinea) values ('WestJet');
INSERT INTO Aerolinea (nombre_aerolinea) values ('Venezolana');
INSERT INTO Aerolinea (nombre_aerolinea) values ('Air Berlin');
INSERT INTO Aerolinea (nombre_aerolinea) values ('JetStar Airways');


-- Vuelo

INSERT INTO Vuelo VALUES (1,TO_DATE('2020-05-01', 'YYYY-MM-DD'),11,16,1);
INSERT INTO Vuelo VALUES (2,TO_DATE('2020-05-02', 'YYYY-MM-DD'),12,21,2);
INSERT INTO Vuelo VALUES (3,TO_DATE('2020-05-03', 'YYYY-MM-DD'),13,26,3);
INSERT INTO Vuelo VALUES (4,TO_DATE('2020-05-04', 'YYYY-MM-DD'),14,31,4);
INSERT INTO Vuelo VALUES (5,TO_DATE('2020-05-05', 'YYYY-MM-DD'),15,36,5);
INSERT INTO Vuelo VALUES (6,TO_DATE('2020-05-06', 'YYYY-MM-DD'),11,41,6);
INSERT INTO Vuelo VALUES (7,TO_DATE('2020-05-07', 'YYYY-MM-DD'),12,46,7);
INSERT INTO Vuelo VALUES (8,TO_DATE('2020-05-08', 'YYYY-MM-DD'),13,51,8);
INSERT INTO Vuelo VALUES (9,TO_DATE('2020-05-09', 'YYYY-MM-DD'),14,56,9);
INSERT INTO Vuelo VALUES (10,TO_DATE('2020-05-10', 'YYYY-MM-DD'),16,11,10);
INSERT INTO Vuelo VALUES (11,TO_DATE('2020-05-11', 'YYYY-MM-DD'),17,22,11);
INSERT INTO Vuelo VALUES (12,TO_DATE('2020-05-12', 'YYYY-MM-DD'),18,27,12);
INSERT INTO Vuelo VALUES (13,TO_DATE('2020-05-13', 'YYYY-MM-DD'),19,32,13);
INSERT INTO Vuelo VALUES (14,TO_DATE('2020-05-14', 'YYYY-MM-DD'),20,37,14);
INSERT INTO Vuelo VALUES (15,TO_DATE('2020-05-15', 'YYYY-MM-DD'),16,42,15);
INSERT INTO Vuelo VALUES (16,TO_DATE('2020-05-16', 'YYYY-MM-DD'),17,47,1);
INSERT INTO Vuelo VALUES (17,TO_DATE('2020-05-17', 'YYYY-MM-DD'),18,52,2);
INSERT INTO Vuelo VALUES (18,TO_DATE('2020-05-18', 'YYYY-MM-DD'),19,57,3);
INSERT INTO Vuelo VALUES (19,TO_DATE('2020-05-19', 'YYYY-MM-DD'),21,12,4);
INSERT INTO Vuelo VALUES (20,TO_DATE('2020-05-20', 'YYYY-MM-DD'),22,17,5);
INSERT INTO Vuelo VALUES (21,TO_DATE('2020-05-21', 'YYYY-MM-DD'),23,28,6);
INSERT INTO Vuelo VALUES (22,TO_DATE('2020-05-22', 'YYYY-MM-DD'),24,33,7);
INSERT INTO Vuelo VALUES (23,TO_DATE('2020-05-23', 'YYYY-MM-DD'),25,38,8);
INSERT INTO Vuelo VALUES (24,TO_DATE('2020-05-24', 'YYYY-MM-DD'),21,43,9);
INSERT INTO Vuelo VALUES (25,TO_DATE('2020-05-25', 'YYYY-MM-DD'),22,48,10);
INSERT INTO Vuelo VALUES (26,TO_DATE('2020-05-26', 'YYYY-MM-DD'),23,53,11);
INSERT INTO Vuelo VALUES (27,TO_DATE('2020-05-27', 'YYYY-MM-DD'),24,58,12);
INSERT INTO Vuelo VALUES (28,TO_DATE('2020-05-28', 'YYYY-MM-DD'),26,13,13);
INSERT INTO Vuelo VALUES (29,TO_DATE('2020-05-29', 'YYYY-MM-DD'),27,18,14);
INSERT INTO Vuelo VALUES (30,TO_DATE('2020-05-30', 'YYYY-MM-DD'),28,23,15);
INSERT INTO Vuelo VALUES (31,TO_DATE('2020-05-31', 'YYYY-MM-DD'),29,34,1);
INSERT INTO Vuelo VALUES (32,TO_DATE('2020-05-01', 'YYYY-MM-DD'),30,39,2);
INSERT INTO Vuelo VALUES (33,TO_DATE('2020-05-02', 'YYYY-MM-DD'),26,44,3);
INSERT INTO Vuelo VALUES (34,TO_DATE('2020-05-03', 'YYYY-MM-DD'),27,49,4);
INSERT INTO Vuelo VALUES (35,TO_DATE('2020-05-04', 'YYYY-MM-DD'),28,54,5);
INSERT INTO Vuelo VALUES (36,TO_DATE('2020-05-05', 'YYYY-MM-DD'),29,59,6);
INSERT INTO Vuelo VALUES (37,TO_DATE('2020-05-06', 'YYYY-MM-DD'),31,14,7);
INSERT INTO Vuelo VALUES (38,TO_DATE('2020-05-07', 'YYYY-MM-DD'),32,19,8);
INSERT INTO Vuelo VALUES (39,TO_DATE('2020-05-08', 'YYYY-MM-DD'),33,24,9);
INSERT INTO Vuelo VALUES (40,TO_DATE('2020-05-09', 'YYYY-MM-DD'),34,29,10);
INSERT INTO Vuelo VALUES (41,TO_DATE('2020-05-10', 'YYYY-MM-DD'),35,35,11);
INSERT INTO Vuelo VALUES (42,TO_DATE('2020-05-11', 'YYYY-MM-DD'),31,40,12);
INSERT INTO Vuelo VALUES (43,TO_DATE('2020-05-12', 'YYYY-MM-DD'),32,45,13);
INSERT INTO Vuelo VALUES (44,TO_DATE('2020-05-13', 'YYYY-MM-DD'),33,50,14);
INSERT INTO Vuelo VALUES (45,TO_DATE('2020-05-14', 'YYYY-MM-DD'),34,55,15);
INSERT INTO Vuelo VALUES (46,TO_DATE('2020-05-15', 'YYYY-MM-DD'),36,14,1);
INSERT INTO Vuelo VALUES (47,TO_DATE('2020-05-16', 'YYYY-MM-DD'),37,20,2);
INSERT INTO Vuelo VALUES (48,TO_DATE('2020-05-17', 'YYYY-MM-DD'),38,25,3);
INSERT INTO Vuelo VALUES (49,TO_DATE('2020-05-18', 'YYYY-MM-DD'),39,30,4);
INSERT INTO Vuelo VALUES (50,TO_DATE('2020-05-19', 'YYYY-MM-DD'),40,35,5);
INSERT INTO Vuelo VALUES (51,TO_DATE('2020-05-20', 'YYYY-MM-DD'),36,45,6);
INSERT INTO Vuelo VALUES (52,TO_DATE('2020-05-21', 'YYYY-MM-DD'),37,50,7);
INSERT INTO Vuelo VALUES (53,TO_DATE('2020-05-22', 'YYYY-MM-DD'),38,55,8);
INSERT INTO Vuelo VALUES (54,TO_DATE('2020-05-23', 'YYYY-MM-DD'),39,60,9);
INSERT INTO Vuelo VALUES (55,TO_DATE('2020-05-24', 'YYYY-MM-DD'),41,11,10);
INSERT INTO Vuelo VALUES (56,TO_DATE('2020-05-25', 'YYYY-MM-DD'),42,16,11);
INSERT INTO Vuelo VALUES (57,TO_DATE('2020-05-26', 'YYYY-MM-DD'),43,21,12);
INSERT INTO Vuelo VALUES (58,TO_DATE('2020-05-27', 'YYYY-MM-DD'),44,26,13);
INSERT INTO Vuelo VALUES (59,TO_DATE('2020-05-28', 'YYYY-MM-DD'),45,31,14);
INSERT INTO Vuelo VALUES (60,TO_DATE('2020-05-29', 'YYYY-MM-DD'),41,36,15);
INSERT INTO Vuelo VALUES (61,TO_DATE('2020-05-30', 'YYYY-MM-DD'),42,46,1);
INSERT INTO Vuelo VALUES (62,TO_DATE('2020-05-30', 'YYYY-MM-DD'),43,51,2);
INSERT INTO Vuelo VALUES (63,TO_DATE('2020-05-01', 'YYYY-MM-DD'),44,56,3);
INSERT INTO Vuelo VALUES (64,TO_DATE('2020-05-02', 'YYYY-MM-DD'),46,12,4);
INSERT INTO Vuelo VALUES (65,TO_DATE('2020-05-03', 'YYYY-MM-DD'),47,17,5);
INSERT INTO Vuelo VALUES (66,TO_DATE('2020-05-04', 'YYYY-MM-DD'),48,22,6);
INSERT INTO Vuelo VALUES (67,TO_DATE('2020-05-05', 'YYYY-MM-DD'),49,27,7);
INSERT INTO Vuelo VALUES (68,TO_DATE('2020-05-05', 'YYYY-MM-DD'),50,32,8);
INSERT INTO Vuelo VALUES (69,TO_DATE('2020-05-05', 'YYYY-MM-DD'),46,37,9);
INSERT INTO Vuelo VALUES (70,TO_DATE('2020-05-08', 'YYYY-MM-DD'),47,42,10);
INSERT INTO Vuelo VALUES (71,TO_DATE('2020-05-09', 'YYYY-MM-DD'),48,52,11);
INSERT INTO Vuelo VALUES (72,TO_DATE('2020-05-10', 'YYYY-MM-DD'),49,57,12);
INSERT INTO Vuelo VALUES (73,TO_DATE('2020-05-11', 'YYYY-MM-DD'),51,13,13);
INSERT INTO Vuelo VALUES (74,TO_DATE('2020-05-12', 'YYYY-MM-DD'),52,18,14);
INSERT INTO Vuelo VALUES (75,TO_DATE('2020-05-13', 'YYYY-MM-DD'),53,23,15);
INSERT INTO Vuelo VALUES (76,TO_DATE('2020-05-14', 'YYYY-MM-DD'),54,28,1);
INSERT INTO Vuelo VALUES (77,TO_DATE('2020-05-15', 'YYYY-MM-DD'),55,33,2);
INSERT INTO Vuelo VALUES (78,TO_DATE('2020-05-16', 'YYYY-MM-DD'),51,38,3);
INSERT INTO Vuelo VALUES (79,TO_DATE('2020-05-17', 'YYYY-MM-DD'),52,43,4);
INSERT INTO Vuelo VALUES (80,TO_DATE('2020-05-18', 'YYYY-MM-DD'),53,48,5);
INSERT INTO Vuelo VALUES (81,TO_DATE('2020-05-19', 'YYYY-MM-DD'),54,58,6);
INSERT INTO Vuelo VALUES (82,TO_DATE('2020-05-20', 'YYYY-MM-DD'),56,14,7);
INSERT INTO Vuelo VALUES (83,TO_DATE('2020-05-21', 'YYYY-MM-DD'),57,19,8);
INSERT INTO Vuelo VALUES (84,TO_DATE('2020-05-22', 'YYYY-MM-DD'),58,24,9);
INSERT INTO Vuelo VALUES (85,TO_DATE('2020-05-23', 'YYYY-MM-DD'),59,29,10);
INSERT INTO Vuelo VALUES (86,TO_DATE('2020-05-24', 'YYYY-MM-DD'),60,34,11);
INSERT INTO Vuelo VALUES (87,TO_DATE('2020-05-25', 'YYYY-MM-DD'),56,39,12);
INSERT INTO Vuelo VALUES (88,TO_DATE('2020-05-26', 'YYYY-MM-DD'),57,44,13);
INSERT INTO Vuelo VALUES (89,TO_DATE('2020-05-27', 'YYYY-MM-DD'),58,49,14);
INSERT INTO Vuelo VALUES (90,TO_DATE('2020-05-28', 'YYYY-MM-DD'),59,54,15);