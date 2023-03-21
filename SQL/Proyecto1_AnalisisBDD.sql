/*CREACION DE TABLAS*/
CREATE TABLE "Cliente" (
  "id_cliente" int,
  "nombres" varchar2(50),
  "apellidos" varchar2(50),
  "domicilio" varchar2(80),
  "telefono" int,
  PRIMARY KEY ("id_cliente")
);

CREATE TABLE "Prenda" (
  "id_prenda" int,
  "tipo_prenda" varchar2(20),
  PRIMARY KEY ("id_prenda")
);

CREATE TABLE "Pedido" (
  "id_pedido" int,
  "fecha_pedido" date,
  "fecha_devolucion" date,
  "id_cliente" int,
  "total" float,
  PRIMARY KEY ("id_pedido"),
  CONSTRAINT "FK_Pedido.id_cliente"
    FOREIGN KEY ("id_cliente")
      REFERENCES "Cliente"("id_cliente")
);

CREATE TABLE "Servicio" (
  "id_servicio" int,
  "tipo_servicio" varchar2(20),
  PRIMARY KEY ("id_servicio")
);

CREATE TABLE "pedido_prenda_servicio" (
  "id_prenda_servicio" int,
  "id_pedido" int,
  "id_servicio" int,
  "id_prenda" int,
  "costo_unitario" float,
  "cantidad_prenda" int,
  PRIMARY KEY ("id_prenda_servicio"),
  CONSTRAINT "FK_pedido_prenda_servicio.id_prenda"
    FOREIGN KEY ("id_prenda")
      REFERENCES "Prenda"("id_prenda"),
  CONSTRAINT "FK_pedido_prenda_servicio.id_pedido"
    FOREIGN KEY ("id_pedido")
      REFERENCES "Pedido"("id_pedido"),
  CONSTRAINT "FK_pedido_prenda_servicio.id_servicio"
    FOREIGN KEY ("id_servicio")
      REFERENCES "Servicio"("id_servicio")
);

/*CREACION DE SECUENCIAS*/
/*Secuencia de la tabla cliente*/
create sequence sec_cliente
start with 1000
  increment by 1
    minvalue 999;
  
/*Secuencia para la tabla pedido*/
create sequence sec_pedido
start with 1000
  increment by 1
  minvalue 999;

/*Secuencia para la tabla pedido_prenda_servicio*/
create sequence sec_prenda_servicio
start with 1000
  increment by 1
  minvalue 999;

/*CREACION DE TRIGGERS*/
/*Trigger para id de clientes*/
CREATE TRIGGER TR_ID_CLIENTE
BEFORE INSERT ON "Cliente" 
FOR EACH ROW
BEGIN
SELECT SEC_CLIENTE.NEXTVAL INTO :NEW."id_cliente" FROM DUAL;
END;

/*Trigger para id de pedidos*/
CREATE TRIGGER TR_ID_PEDIDO
BEFORE INSERT ON "Pedido" 
FOR EACH ROW
BEGIN
SELECT SEC_PEDIDO.NEXTVAL INTO :NEW."id_pedido" FROM DUAL;
END;

/*Trigger para id de pedidos*/
CREATE TRIGGER TR_ID_PEDIDO_PRENDA_SERVICIO
BEFORE INSERT ON "pedido_prenda_servicio" 
FOR EACH ROW
BEGIN
SELECT SEC_PRENDA_SERVICIO.NEXTVAL INTO :NEW."id_prenda_servicio" FROM DUAL;
END;


/*INSERCION DE REGISTROS GENERALES*/
/*Insertar los tipos de prenda*/
INSERT INTO "Prenda" ("id_prenda", "tipo_prenda") VALUES(1, 'Blusa');
INSERT INTO "Prenda" ("id_prenda", "tipo_prenda") VALUES(2, 'Camisa');
INSERT INTO "Prenda" ("id_prenda", "tipo_prenda") VALUES(3, 'Sueter');
INSERT INTO "Prenda" ("id_prenda", "tipo_prenda") VALUES(4, 'Pantalon');
INSERT INTO "Prenda" ("id_prenda", "tipo_prenda") VALUES(5, 'Pantaloneta');
INSERT INTO "Prenda" ("id_prenda", "tipo_prenda") VALUES(6, 'Short');
INSERT INTO "Prenda" ("id_prenda", "tipo_prenda") VALUES(7, 'Ropa interior');

/*Insertar los tipos de servicio*/
INSERT INTO "Servicio" ("id_servicio", "tipo_servicio") VALUES(1, 'Lavado a mano');
INSERT INTO "Servicio" ("id_servicio", "tipo_servicio") VALUES(2, 'Lavado a seco');
INSERT INTO "Servicio" ("id_servicio", "tipo_servicio") VALUES(3, 'Maquina lavadora');

/*Insertar los tipos de servicio*/
INSERT INTO "Cliente" VALUES(SEC_CLIENTE.nextval, 'Pablo Rene', 'Garcia Escobar', '7ma Ave A 17-78 col. Reyna Barrios Z13', 47046007);
INSERT INTO "Cliente" VALUES(SEC_CLIENTE.nextval, 'Jeison Dany', 'Roblero Galvez', '8 Calle 6-34 Boca del monte Z1', 56321452);
INSERT INTO "Cliente" VALUES(SEC_CLIENTE.nextval, 'Gerardo Jose Enrique', 'Alvarez Agustin', '8 Calle 6-35 Boca del monte Z1', 85693214);
INSERT INTO "Cliente" VALUES(SEC_CLIENTE.nextval, 'Noe Jonathan', 'Gomez Bolaños', '8 Calle 7-41 Boca del monte Z1', 89652365);
INSERT INTO "Cliente" VALUES(SEC_CLIENTE.nextval, 'Cristhopher Andres', 'Torres Flores', '3 avenida 5-62 zona 1 Villa Canales', 30071815);
INSERT INTO "Cliente" VALUES(SEC_CLIENTE.nextval, 'Maritza Iliana', 'Puluc', '10 calle 4 avenida 5-04 zona 3, ciudad', 85692301);
INSERT INTO "Cliente" VALUES(SEC_CLIENTE.nextval, 'Esther Marisol', 'Galindo Romero', '8 calle 5-63 km 2.5 Barberena', 12603588);

SELECT * FROM "Prenda";
SELECT * FROM "Servicio";
SELECT * FROM "Cliente";

commit;
