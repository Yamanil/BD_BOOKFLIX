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
 
 INSERT INTO UBIGEO
      (DEPUBI,PROUBI,DISUBI,CELUBI)
      VALUES
      ("LIMA","CAÑETE","SAN VICENTE",'987654321'),
      ("CUZCO","CAÑETE","IMPERIAL",'980435432'),
      ("LIMA","CAÑETE","LUNAHUANA",'987965432'),
      ("LIMA","CAÑETE","QUILMANA",'954634356'),
      ("LIMA","CAÑETE","NUEVO IMPERIAL",'911234545'),
      ("LIMA","CAÑETE","CALANGO",'932543434'),
      ("LIMA","CAÑETE","SANTA CRUZ",'970654234'),
      ("LIMA","CAÑETE","CERRO AZUL",'966753312'),
      ("LIMA","CAÑETE","ASIA",'909987123'),
      ("LIMA","CAÑETE","TORAS",'944576331');
      SELECT * FROM UBIGEO;
      INSERT INTO persona
      (NOMPER,APEPER,DNIPER,IDUBI,TIPPER,GRADAUL,SECCAUL,SECTAUL,ESTADO)
      VALUES
      ("Julio","quispe sanchez",'77077399',3,'A','3','A','2','A'),
      ("simon Cesar","pelaez chavez",'77077399',3,'A','3','A','2','A'),
      ("joseph Cesar","yamani chavez",'77077399',3,'A','3','A','2','A'),
      ("julio Cesar","salas chavez",'77077399',3,'A','3','A','2','A'),
      ("jesus Cesar"," chavez",'77077399',3,'A','3','A','2','A'),
      ("benja Cesar","quispe chavez",'77077399',3,'A','3','A','2','A'),
      ("boo Cesar","quispe rivera",'77077399',3,'A','3','A','2','A'),
      ("lee Cesar","quispe canales",'77077399',3,'A','3','A','2','A'),
      ("alex Cesar","quispe canales",'77077399',3,'A','3','A','2','A'),
      ("juan Cesar","quispe canaletas",'77077399',3,'A','3','A','2','A');
  
      SELECT * FROM persona;
      
         
INSERT INTO usuario
         (CODPER,NOMUSU,PASSUSU)
VALUES
         (1,'julio','tupapina'),
         (2,'joseph','12345678'),
         (3,'jeferson','elmaslobo'),
         (4,'jordy','elmaslindo'),
         (5,'jesus','julioquispe'),
         (6,'diego','elmasrapido'),
         (3,'yass','persona1234'),
         (7,'sebas','persona234'),
         (8,'sebastian','persona345'),
         (9,'julio','persona455'),
         (9,'jose','peSDSDA455');
         SELECT * FROM USUARIO;
         INSERT INTO prestamo
         (IDBIBLI,IDLECT,IDLIB,FSALPRES,FENTPRES,CANTFALT,ESTADO)
VALUES
         (1,1,1,'01/02/2019','31/02/2019',4,'A'),
         (1,1,1,'01/02/2019','31/02/2019',4,'A'),
        (1,1,1,'01/02/2019','30/02/2019',4,'A'),
         (1,1,1,'01/02/2019','30/02/2019',4,'A'),
         (1,1,1,'01/02/2019','30/02/2019',4,'A'),
         (1,1,1,'01/02/2019','30/02/2019',4,'A'),
        (1,1,1,'01/02/2019','30/02/2019',4,'A'),
         (1,1,1,'01/02/2019','30/02/2019',4,'A'),
          (1,1,1,'01/02/2019','30/02/2019',4,'A'),
         (1,1,1,'01/02/2019','30/02/2019',4,'A');
          SELECT * FROM PRESTAMO;
               INSERT INTO prestamo_detalle
         (IDPRES,CANTDET,FECHENT)
VALUES
         (1,'2019/10/10','A'),
  (1,'2019/10/10','A'),
  (1,'2019/10/10','A'),
  (1,'2019/10/10','A'),
   (1,'2019/10/10','A'),
  (1,'2019/10/10','A'),
   (1,'2019/10/10','A'),
  (1,'2019/10/10','A'),
  (1,'2019/10/10','A'),
   (1,'2019/10/10','A'),
  (1,'2019/10/10','A');
  SELECT * FROM PRESTAMO_DETALLE;
  
 

      
      
      
