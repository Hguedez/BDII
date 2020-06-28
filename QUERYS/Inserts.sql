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
(23,  'Royal Brisbane & Womens Hospital',Complemento_direccion('Brisbane'),125,58);

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
