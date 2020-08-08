alter session set"_ORACLE_SCRIPT" = true; -- Necesario para crear usuarios. 


------------------USUARIOS-------------
Create user Gerente identified by "1111"
default tablespace "USERS"
temporary tablespace "TEMP";

Alter user Gerente Quota 15M on USERS;

Grant "CONNECT" to Gerente;

Create user Vieira identified by "1111"
default tablespace "USERS"
temporary tablespace "TEMP";

Alter user Vieira Quota 15M on USERS;

Grant "CONNECT" to Vieira;

Create user Teixeira identified by "1111"
default tablespace "USERS"
temporary tablespace "TEMP";

Alter user Teixeira Quota 15M on USERS;

Grant "CONNECT" to Teixeira;

Create user Guedez identified by "1111"
default tablespace "USERS"
temporary tablespace "TEMP";

Alter user Guedez Quota 15M on USERS;

Grant "CONNECT" to Guedez;


--------------------------------------------------------------------------------
------------------------------ROLES--------------------------------------------
create role Administrador;
create role Gobierno;
create role Gerente_de_Servicios_de_Internet;
create role Gerente_de_Clinica;


---------------------------------------------------------------------------------
------------------------Roles asignados----------------------------------------
Grant Administrador to Gerente;
Grant Gobierno to Vieira;
Grant Gerente_de_Servicios_de_Internet to Teixeira;
Grant Gerente_de_Clinica to Guedez;
------------------------------------ Privilegios de Administrador -------------------------------
Grant all on Condicion to Administrador;
Grant all on Condicion_Persona to Administrador;
Grant all on Patologia to Administrador;
Grant all on Persona_Patologia to Administrador;
Grant all on Persona to Administrador;
Grant all on Persona_Clinica to Administrador;
Grant all on Clinica to Administrador;
Grant all on Clinica_Insumo to Administrador;
Grant all on Sintoma to Administrador;
Grant all on Persona_Sintoma to Administrador;
Grant all on Lugar to Administrador;
Grant all on Ayuda_Humanitaria to Administrador;
Grant all on Ayuda_Insumo to Administrador;
Grant all on Insumo to Administrador;
Grant all on Vuelo to Administrador;
Grant all on Vuelo_Persona to Administrador;
Grant all on Lugar_Proveedor to Administrador;
Grant all on Lugar_Modelo to Administrador;
Grant all on Proveedor_Internet to Administrador;
Grant all on Modelo_Aislamiento to Administrador;
Grant all on Frontera to Administrador;
Grant all on Lugar_Viaje to Administrador;  -------- Esta tabla no existe 
Grant all on Viaje to Administrador;
Grant all on Vuelo_Viaje to Administrador; ------- Esta tabla no existe

Grant drop any table to Administrador;
Grant alter any table to Administrador;
Grant create any table to Administrador;

Grant create session to Administrador;
Grant create any procedure to Administrador;
Grant create role to Administrador;
Grant create user to Administrador;
Grant create any sequence to Administrador;
Grant create any view to Administrador;
Grant create any type to Administrador;


----------------------------------- Privilegios de Gobierno --------------------------------------------

Grant insert,select,update,delete on Modelo_Aislamiento to Gobierno;
Grant insert,select,update,delete on Frontera to Gobierno;
Grant select,update,delete on Persona to Gobierno;
Grant select,update,delete on Ayuda_Humanitaria to Gobierno;
Grant select,update,delete on Ayuda_Insumo to Gobierno;
Grant select on Condicion to Gobierno;
Grant select on Condicion_Persona to Gobierno;
Grant select on Patologia to Gobierno;
Grant select on Persona_Patologia to Gobierno;
Grant select on Persona_Clinica to Gobierno;
Grant select on Clinica to Gobierno;
Grant select on Clinica_Insumo to Gobierno;
Grant select on Sintoma to Gobierno;
Grant select on Persona_Sintoma to Gobierno;
Grant select on Vuelo to Gobierno;

Grant create session to Gobierno;


----------------------------------------------- Privilegios de Gerente_de_Servicios_de_Internet -----------------------------------
Grant select,update,delete on Lugar_Proveedor to Gerente_de_Servicios_de_Internet;
Grant select,update,delete on Proveedor_Internet to Gerente_de_Servicios_de_Internet;
Grant select on Lugar to Gerente_de_Servicios_de_Internet;
Grant select on Persona to Gerente_de_Servicios_de_Internet;

Grant create session to Gerente_de_Servicios_de_Internet;

----------------------------------------------------------------------- Privilegios de Gerente de Clinica --------------

Grant insert,select,update,delete on Sintoma to Gerente_de_Clinica;
Grant insert,select,update,delete on Clinica_Insumo to Gerente_de_Clinica;
Grant insert,select,update,delete on Insumo to Gerente_de_Clinica;
Grant select,update,delete on Condicion to Gerente_de_Clinica;
Grant select,update,delete on Condicion_Persona to Gerente_de_Clinica;
Grant select,update,delete on Persona_Clinica to Gerente_de_Clinica;
Grant select,update,delete on Clinica to Gerente_de_Clinica;
Grant select,update,delete on Persona_Sintoma to Gerente_de_Clinica;
Grant select on Patologia to Gerente_de_Clinica;
Grant select on Persona_Patologia to Gerente_de_Clinica;
Grant select on Persona to Gerente_de_Clinica;

Grant create session to Gerente_de_Clinica;
--------------------------------------------------------------------------------------------------------------------------------