-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2019-10-22 11:41:52.104

-- tables
-- Table: AUTOR
CREATE DATABASE NODOS;
USE NODOS;
CREATE TABLE AUTOR (
    IDAUT int NOT NULL AUTO_INCREMENT COMMENT 'Código de autor.',
    NOMAUT varchar(100) NULL COMMENT 'Nombre completo del autor.',
    APEAUT varchar(100) NULL COMMENT 'Apellidos del autor.',
    IDPAIS int NOT NULL COMMENT 'Codigo de país.',
    CONSTRAINT AUTOR_pk PRIMARY KEY (IDAUT)
);

-- Table: CATEGORIA
CREATE TABLE CATEGORIA (
    IDCAT int NOT NULL AUTO_INCREMENT COMMENT 'El codigo de categoría.',
    NOMCAT varchar(100) NULL COMMENT 'Nombre de la categoría al que pertenece al libro.',
    CONSTRAINT CATEGORIA_pk PRIMARY KEY (IDCAT)
);

-- Table: EDITORIAL
CREATE TABLE EDITORIAL (
    IDEDI int NOT NULL AUTO_INCREMENT COMMENT 'El codigo de editorial.',
    NOMEDI varchar(100) NULL COMMENT 'El nombre de editorial.',
    CONSTRAINT EDITORIAL_pk PRIMARY KEY (IDEDI)
);

-- Table: LIBRO
CREATE TABLE LIBRO (
    IDLIB int NOT NULL AUTO_INCREMENT COMMENT 'Codigo por el cual se identifica al libro.',
    IDAUT int NOT NULL COMMENT 'El codigo de autor.',
    IDCAT int NOT NULL COMMENT 'El codigo de categoria.',
    IDEDI int NOT NULL COMMENT 'El codigo de editorial.',
    TITLIB varchar(100) NULL COMMENT 'El titulo del libro.',
    CANTLIB int NULL COMMENT 'Los ejemplares que hay de un libro en la biblioteca.',
    ANNLANZLIB char(4) NOT NULL COMMENT 'El año de lanzamiento del libro.',
    NUMPAGLIB int NOT NULL COMMENT 'El numero de paginas del libro.',
    DESCLIB varchar(500) NOT NULL COMMENT 'Una breve descripción del libro.',
    ESTLIB char(1) NOT NULL COMMENT 'Las condiciones del libro.',
    ESTADO char(1) NOT NULL COMMENT 'Si el libro se encuentra o no.',
    CONSTRAINT LIBRO_pk PRIMARY KEY (IDLIB)
);

-- Table: PAIS
CREATE TABLE PAIS (
    IDPAIS int NOT NULL AUTO_INCREMENT COMMENT 'Codigo de país.',
    NOMPAIS varchar(80) NULL COMMENT 'Nombre del país.',
    CONSTRAINT PAIS_pk PRIMARY KEY (IDPAIS)
);

-- Table: PERSONA
CREATE TABLE PERSONA (
    IDPER int NOT NULL AUTO_INCREMENT COMMENT 'El codigo de la persona.',
    NOMPER varchar(100) NULL COMMENT 'Este campo contiene los nombres d la persona.',
    APEPER varchar(100) NULL COMMENT 'Este campo contiene los apellidos de la persona.',
    DNIPER char(8) NULL COMMENT 'Contiene el Documento de Identidad Nacional',
    IDUBI int NOT NULL COMMENT 'Contiene los datos de donde proviene la persona.',
    TIPPER char(1) NULL COMMENT 'Contiene los tipos de persona:Administrador, bibliotecario o lector.',
    GRADAUL char(1) NOT NULL COMMENT 'Contiene el grado en caso sea un alumno.',
    SECCAUL char(1) NOT NULL COMMENT 'Contiene en que sección se encuentra el alumno.',
    SECTAUL char(1) NOT NULL COMMENT 'Contiene los sectores del colegio.',
    ESTADO char(1) NOT NULL COMMENT 'Si la persona esta activa cuando ingresa al sistema.',
    CONSTRAINT PERSONA_pk PRIMARY KEY (IDPER)
);

-- Table: PRESTAMO
CREATE TABLE PRESTAMO (
    IDPRES int NOT NULL AUTO_INCREMENT COMMENT 'El codigo de prestamo.',
    IDBIBLI int NOT NULL COMMENT 'El codigo del bibliotecario.',
    IDLECT int NOT NULL COMMENT 'El codigo del lector.',
    IDLIB int NOT NULL COMMENT 'El codigo del libro',
    FSALPRES date NULL COMMENT 'Fecha de prestamo del libro.',
    FENTPRES date NULL COMMENT 'Fecha de la devolución del libro.',
    CANTFALT int NULL COMMENT 'Cantidad de libros que falta.',
    ESTADO char(1) NOT NULL COMMENT 'Si los libros estan disponibles o no.',
    CONSTRAINT PRESTAMO_pk PRIMARY KEY (IDPRES)
);

-- Table: PRESTAMO_DETALLE
CREATE TABLE PRESTAMO_DETALLE (
    IDDET int NOT NULL AUTO_INCREMENT COMMENT 'Codigo detalle de los libros.',
    IDPRES int NOT NULL COMMENT 'El codigo de prestamo',
    CANTDET date NULL COMMENT 'En este campo se especificaran que tipo de libro llevara el lector.',
    FECHENT char(1) NULL COMMENT 'FECHA DE ENTREGA DEL LIBRO',
    CONSTRAINT PRESTAMO_DETALLE_pk PRIMARY KEY (IDDET)
);

-- Table: UBIGEO
CREATE TABLE UBIGEO (
    IDUBI int NOT NULL AUTO_INCREMENT COMMENT 'El codigo de ubigeo.',
    DEPUBI varchar(100) NULL COMMENT 'El departamento de donde viene la persona.',
    PROUBI varchar(100) NULL COMMENT 'Provincia de la persona.',
    DISUBI varchar(100) NULL COMMENT 'Distrito en donde vive la persona.',
    CELUBI char(9) NOT NULL COMMENT 'El celular de la persona.',
    CONSTRAINT UBIGEO_pk PRIMARY KEY (IDUBI)
);

-- Table: USUARIO
CREATE TABLE USUARIO (
    IDUSU int NOT NULL AUTO_INCREMENT COMMENT 'Codigo de usuario que es reconocido por la base de datos.',
    CODPER int NULL COMMENT 'Codigo de usuario que se recoge de la tabla persona.',
    NOMUSU varchar(60) NULL COMMENT 'Este campo contiene el nombre de usuario.',
    PASSUSU varchar(60) NULL COMMENT 'Este campo contiene las contraseñas.',
    CONSTRAINT USUARIO_pk PRIMARY KEY (IDUSU)
);

-- foreign keys
-- Reference: AUTOR_PAIS (table: AUTOR)
ALTER TABLE AUTOR ADD CONSTRAINT AUTOR_PAIS FOREIGN KEY AUTOR_PAIS (IDPAIS)
    REFERENCES PAIS (IDPAIS);

-- Reference: LIBRO_AUTOR (table: LIBRO)
ALTER TABLE LIBRO ADD CONSTRAINT LIBRO_AUTOR FOREIGN KEY LIBRO_AUTOR (IDAUT)
    REFERENCES AUTOR (IDAUT);

-- Reference: LIBRO_CATEGORIA (table: LIBRO)
ALTER TABLE LIBRO ADD CONSTRAINT LIBRO_CATEGORIA FOREIGN KEY LIBRO_CATEGORIA (IDCAT)
    REFERENCES CATEGORIA (IDCAT);

-- Reference: LIBRO_EDITORIAL (table: LIBRO)
ALTER TABLE LIBRO ADD CONSTRAINT LIBRO_EDITORIAL FOREIGN KEY LIBRO_EDITORIAL (IDEDI)
    REFERENCES EDITORIAL (IDEDI);

-- Reference: PERSONA_UBIGEO (table: PERSONA)
ALTER TABLE PERSONA ADD CONSTRAINT PERSONA_UBIGEO FOREIGN KEY PERSONA_UBIGEO (IDUBI)
    REFERENCES UBIGEO (IDUBI);

-- Reference: PRESTAMO_DETALLE_PRESTAMO (table: PRESTAMO_DETALLE)
ALTER TABLE PRESTAMO_DETALLE ADD CONSTRAINT PRESTAMO_DETALLE_PRESTAMO FOREIGN KEY PRESTAMO_DETALLE_PRESTAMO (IDPRES)
    REFERENCES PRESTAMO (IDPRES);

-- Reference: PRESTAMO_LIBRO (table: PRESTAMO)
ALTER TABLE PRESTAMO ADD CONSTRAINT PRESTAMO_LIBRO FOREIGN KEY PRESTAMO_LIBRO (IDLIB)
    REFERENCES LIBRO (IDLIB);

-- Reference: PRESTAMO_PERSONA_BIBLIOTECARIO (table: PRESTAMO)
ALTER TABLE PRESTAMO ADD CONSTRAINT PRESTAMO_PERSONA_BIBLIOTECARIO FOREIGN KEY PRESTAMO_PERSONA_BIBLIOTECARIO (IDBIBLI)
    REFERENCES PERSONA (IDPER);

-- Reference: PRESTAMO_PERSONA_LECTOR (table: PRESTAMO)
ALTER TABLE PRESTAMO ADD CONSTRAINT PRESTAMO_PERSONA_LECTOR FOREIGN KEY PRESTAMO_PERSONA_LECTOR (IDLECT)
    REFERENCES PERSONA (IDPER);

-- Reference: USUARIO_PERSONA (table: USUARIO)
ALTER TABLE USUARIO ADD CONSTRAINT USUARIO_PERSONA FOREIGN KEY USUARIO_PERSONA (CODPER)
    REFERENCES PERSONA (IDPER);

-- End of file.

