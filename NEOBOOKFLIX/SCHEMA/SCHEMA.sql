create database neobookflix;
USE neobookflix;
CREATE TABLE AUTOR (
    IDAUT int NOT NULL AUTO_INCREMENT COMMENT 'Código de autor.',
    IDPAIS int NOT NULL COMMENT 'Codigo de país.',
    NOMAUT varchar(100) NULL COMMENT 'Nombre completo del autor.',
    APEAUT varchar(100) NULL COMMENT 'Apellidos del autor.',
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
    ANNLANZLIB char(4) NOT NULL COMMENT 'El año de lanzamiento del libro.',
    NUMPAGLIB int NOT NULL COMMENT 'El numero de paginas del libro.',
    DESCLIB varchar(500) NOT NULL COMMENT 'Una breve descripción del libro.',
    ESTLIB char(1) NOT NULL COMMENT 'Las condiciones del libro.',
    ESTUS char(1) NOT NULL COMMENT 'Si el libro se encuentra en uso o no.',
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
    ESTPER char(1) NOT NULL COMMENT 'Si la persona esta activa cuando ingresa al sistema.',
    USUPER varchar(15) NOT NULL COMMENT 'Este campo contiene el usuario de la persona.',
    CONTPER varchar(15) NOT NULL COMMENT 'Este campo contiene la contraseña del usuario',
    CONSTRAINT PERSONA_pk PRIMARY KEY (IDPER)
);

-- Table: PRESTAMO_CABECERA
CREATE TABLE PRESTAMO_CABECERA (
    IDPRES int NOT NULL AUTO_INCREMENT COMMENT 'El codigo de prestamo.',
    IDBIBLI int NOT NULL COMMENT 'El codigo del bibliotecario.',
    IDLECT int NOT NULL COMMENT 'El codigo del lector.',
    FSALPRES date NULL COMMENT 'Fecha de prestamo del libro.',
    FENTPRES date NULL COMMENT 'Fecha de la devolución del libro.',
    ESTPRES char(1) NULL COMMENT 'Referente al préstamo del libro.',
    CONSTRAINT PRESTAMO_CABECERA_pk PRIMARY KEY (IDPRES)
);

-- Table: PRESTAMO_DETALLE
CREATE TABLE PRESTAMO_DETALLE (
    IDDET int NOT NULL AUTO_INCREMENT COMMENT 'Codigo detalle de los libros.',
    IDPRES int NOT NULL COMMENT 'El codigo de prestamo',
    IDLIB int NOT NULL,
    CONSTRAINT PRESTAMO_DETALLE_pk PRIMARY KEY (IDDET)
);

-- Table: UBIGEO
CREATE TABLE UBIGEO (
    IDUBI int NOT NULL AUTO_INCREMENT COMMENT 'El codigo de ubigeo.',
    DEPUBI varchar(100) NULL COMMENT 'El departamento de donde viene la persona.',
    PROUBI varchar(100) NULL COMMENT 'Provincia de la persona.',
    DISUBI varchar(100) NULL COMMENT 'Distrito en donde vive la persona.',
    CONSTRAINT UBIGEO_pk PRIMARY KEY (IDUBI)
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

-- Reference: PRESTAMO_DETALLE_LIBRO (table: PRESTAMO_DETALLE)
ALTER TABLE PRESTAMO_DETALLE ADD CONSTRAINT PRESTAMO_DETALLE_LIBRO FOREIGN KEY PRESTAMO_DETALLE_LIBRO (IDLIB)
    REFERENCES LIBRO (IDLIB);

-- Reference: PRESTAMO_DETALLE_PRESTAMO (table: PRESTAMO_DETALLE)
ALTER TABLE PRESTAMO_DETALLE ADD CONSTRAINT PRESTAMO_DETALLE_PRESTAMO FOREIGN KEY PRESTAMO_DETALLE_PRESTAMO (IDPRES)
    REFERENCES PRESTAMO_CABECERA (IDPRES);

-- Reference: PRESTAMO_PERSONA_BIBLIOTECARIO (table: PRESTAMO_CABECERA)
ALTER TABLE PRESTAMO_CABECERA ADD CONSTRAINT PRESTAMO_PERSONA_BIBLIOTECARIO FOREIGN KEY PRESTAMO_PERSONA_BIBLIOTECARIO (IDBIBLI)
    REFERENCES PERSONA (IDPER);

-- Reference: PRESTAMO_PERSONA_LECTOR (table: PRESTAMO_CABECERA)
ALTER TABLE PRESTAMO_CABECERA ADD CONSTRAINT PRESTAMO_PERSONA_LECTOR FOREIGN KEY PRESTAMO_PERSONA_LECTOR (IDLECT)
    REFERENCES PERSONA (IDPER);




