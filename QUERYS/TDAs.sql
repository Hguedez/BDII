CREATE OR REPLACE TYPE Datos_basicos_personas AS OBJECT(
    primer_nombre varchar(15),
    segundo_nombre varchar(15),
    primer_apellido varchar(15),
    segundo_apellido varchar(15),
    fecha_nacimiento date,
    STATIC FUNCTION validar_primer_nombre(primer_nombre varchar) RETURN varchar,
    STATIC FUNCTION validar_segundo_nombre(segundo_nombre varchar) RETURN varchar,
    STATIC FUNCTION validar_primer_apellido(primer_apellido varchar) RETURN varchar,
    STATIC FUNCTION validar_segundo_apellido(segundo_apellido varchar) RETURN varchar,
    STATIC FUNCTION validar_fecha_nacimiento(fecha_nacimiento date) RETURN date
);

CREATE OR REPLACE TYPE BODY Datos_basicos_personas IS
STATIC FUNCTION validar_primer_nombre(primer_nombre varchar) RETURN varchar
IS
BEGIN 
    IF regexp_like(primer_nombre, '^[[:alpha:]]{0,15}[[:alpha:][:blank:]]+$') THEN
        return (primer_nombre);
    ELSE
        RAISE_APPLICATION_ERROR(-20001, 'Error: El primer nombre debe contener solo letras.');
    END IF;
END;

STATIC FUNCTION validar_segundo_nombre(segundo_nombre varchar) RETURN varchar
IS
BEGIN 
    IF regexp_like(segundo_nombre, '^[[:alpha:]]{0,15}[[:alpha:][:blank:]]+$') THEN
        return (segundo_nombre);
    ELSE
        RAISE_APPLICATION_ERROR(-20001, 'Error: El segundo nombre debe contener solo letras.');
    END IF;
END;

STATIC FUNCTION validar_primer_apellido(primer_apellido varchar) RETURN varchar
IS
BEGIN 
    IF regexp_like(primer_apellido, '^[[:alpha:]]{0,15}[[:alpha:][:blank:]]+$') THEN
        return (primer_apellido);
    ELSE
        RAISE_APPLICATION_ERROR(-20001, 'Error: El primer apellido debe contener solo letras.');
    END IF;
END;

STATIC FUNCTION validar_segundo_apellido(segundo_apellido varchar) RETURN varchar
IS
BEGIN 
    IF regexp_like(segundo_apellido, '^[[:alpha:]]{0,15}[[:alpha:][:blank:]]+$') THEN
        return (segundo_apellido);
    ELSE
        RAISE_APPLICATION_ERROR(-20001, 'Error: El segundo apellido debe contener solo letras.');
    END IF;
END;

STATIC FUNCTION validar_fecha_nacimiento(fecha_nacimiento date) RETURN date
IS
BEGIN 
    IF fecha_nacimiento < CURRENT_DATE THEN
        return (fecha_nacimiento);
    ELSE
        RAISE_APPLICATION_ERROR(-20001, 'Error: La Fecha de Nacimiento debe ser menor o igual a la fecha actual.');
    END IF;
END;
END;

----------------------------------------------------------TDA Fecha Inicio Fin-------------------------------------------
CREATE OR REPLACE TYPE Fecha_inicio_fin AS OBJECT(
    fecha_inicio date,
    fecha_fin date,
    STATIC FUNCTION validar_fecha_inicio(fecha_inicio date, fecha_fin date) RETURN date,
    STATIC FUNCTION validar_fecha_fin(fecha_inicio date, fecha_fin date) RETURN date
);

CREATE OR REPLACE TYPE BODY Fecha_inicio_fin IS
STATIC FUNCTION validar_fecha_inicio(fecha_inicio date, fecha_fin date) RETURN date
IS
BEGIN 
    IF fecha_inicio < fecha_fin THEN
        RETURN fecha_inicio;
    ELSE
        RAISE_APPLICATION_ERROR(-20001, 'Error: La Fecha de inicio debe ser menor a la fecha final');
    END IF;
END;

STATIC FUNCTION validar_fecha_fin(fecha_inicio date, fecha_fin date) RETURN date
IS
BEGIN 
    IF fecha_fin > fecha_inicio THEN
        RETURN fecha_fin;
    ELSE
        RAISE_APPLICATION_ERROR(-20001, 'Error: La Fecha de fin debe ser mayor a la fecha de inicio');
    END IF;
END;
END;

-----------------------------------------------------TDA Complemento direccion------------------------------------------
CREATE OR REPLACE TYPE Complemento_direccion AS OBJECT(
    complemento varchar(500),
);