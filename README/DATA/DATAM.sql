USE NODOS;
SET FOREIGN_KEY_CHECKS=0;
INSERT INTO PAIS
      (NOMPAIS)
VALUES
       ('peru'),
       ('españa'),
       ('FRANCIA'),
       ('ITALIA'),
       ('COLOMBIA'),
       ('BRASIL'),
       ('ALEMANIA'),
       ('ECUADOR'),
       ('CHILE'),
       ('VENEZUELA');
SELECT * FROM PAIS;
INSERT INTO autor
      (NOMAUT,APEAUT,IDPAIS)
VALUES
       ("joseph","salas",1),
       ("Mario","vargas",3),
       ("Ramon ","valle-inclan",4),
       ("fyodor","dostoyevsky",5),
       ("carlos","soriano",7),
       ("Alba","oliva",8),
       ("Dabid","fecha",2),
       ("Bernues","pilar",8),
       ("Salva","Alemany",9),
       ("Jose Antonio","Gargallo Gascon",5);
SELECT * FROM AUTOR;
 INSERT INTO categoria
      (NOMCAT)
VALUES
       ('Novela de aventura'),
       ('novela de ciencia ficcion'),
       ('los cuentos de hadas'),
       ('novela gotica'),
       ('novela politica'),
       ('El romance paranormal'),
       ('novela distopica'),
       ('novela fantastica'),
       ('Novela de ciencia ficcion'),
       ('Aventura');
       SELECT * FROM CATEGORIA;
       
        INSERT INTO editorial
      (NOMEDI)
VALUES
       ('Acantilado'),
       ('Aguilar'),
       ('Akal'),
       ('Alba'),
       ('Alfaguara'),
       ('Alianza'),
       ('Almadia'),
       ('Anagrama'),
       ('Gallo nero'),
       ('Gustavo Gili');
       SELECT * FROM EDITORIAL;
       
       INSERT INTO libro
      (IDAUT,IDCAT,IDEDI,TITLIB,CANTLIB,ANNLANZLIB,NUMPAGLIB,DESCLIB,ESTLIB)
VALUES
       (1,2,3,'Una historia en la Habana',14,'10/2019',246,'Son los oscuros recodos de la mente , los detalle que mellan u alama hasta convertirla en aasesina','N'),
       (4,5,6,'Los que miran las estrellas',14,'09/2019',360,'los que miran las estrellas es un thriller policial donde acontecen varios casos basados en hechos reales','N'),
       (7,5,6,'America fotografeada',14,'09/2019',160,'libros de fotografia de america del sur y centro america del fotografo leones david fecha','Nuevo'),
       (9,9,6,'Diario de a bordo',14,'09/2019',392,'El naufrago de un pequeño yate, que queda varado deja al descurbierto un escenario macabro y demaciadas preguntas sin respuesta','N'),
       (4,4,6,'Una mirada perdida',14,'09/2019',178,'La desaparicion de un niño chino pone en maarcha una investigacion a cargo de un grupo vapriopinto de personajes queiens adetran en el mundo de la comunidad chin','N'),
       (4,3,6,'La vida prometida',14,'09/2019',184,'En ciudadania un diminuto pueblo de estados unidos un hombre de 45 años job se hace pasar por vidente','N'),
       (3,2,1,'Nacionalismo catalan',14,'10/2019',266,'El nacionalismo catalán durante años ha llevado a cabo un proceso intencional y gradualista de influencia adoctrinadora con fines ideológicos, políticos y lingüísticos','N'),
       (7,8,7,'la confesion del libio',14,'10/2019',146,'Un escritor, extravagante y caprichoso, se encuentra en sequía creativa y decide contar lo que no quiso nunca hacer, la historia de lo ocurrido en 1981 a un amigo apodado El Libio',''),
       (5,4,4,'Cinco dias para matar al Papa',14,'10/2019',264,'En “Cinco días para matar al Papa” el sexo, la religión y la muerte se dan cita en Santiago de Compostela a cinco días de la llegada del Papa.','N'),
       (3,3,4,'Hijos del fuego',14,'10/2019',450,'Editorial Amarante presenta "Hijos del fuego", el culmen de la trilogía de Joaquín Castillo. ','N');
 SELECT * FROM LIBRO;