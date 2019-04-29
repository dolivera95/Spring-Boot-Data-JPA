/* Populate tables */
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Andres', 'Guzman', 'profesor@bolsadeideas.com', '2017-08-28', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Jhon', 'Doe', 'jhon.doe@gmail.com', '2017-08-28', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Daniel', 'Olivera', 'daniel@bolsadeideas.com', '2017-08-28', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Eduardo', 'Calderon', 'eduardo.doe@gmail.com', '2017-08-28', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Rodrigo', 'Melgarejo', 'rodrigo@bolsadeideas.com', '2017-08-28', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Susan', 'Vilches', 'susan@gmail.com', '2017-08-28', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Giuliana', 'Guerrero', 'giuliana@bolsadeideas.com', '2017-08-28', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Maristel', 'Jaime', 'maristel@gmail.com', '2017-08-28', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Flor', 'Corderon', 'flor@bolsadeideas.com', '2017-08-28', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Jorge', 'Rivero', 'jorge@bolsadeideas.com', '2017-08-28', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('George', 'Reyna', 'george@gmail.com', '2017-08-28', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Hector', 'Lama', 'hector@bolsadeideas.com', '2017-08-28', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Edwin', 'Lara', 'edwin@gmail.com', '2017-08-28', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Angel', 'Herrera', 'angel@gmail.com', '2017-08-28', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Diego', 'Merino', 'diego@bolsadeideas.com', '2017-08-28', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Eva', 'Alvarez', 'eva@gmail.com', '2017-08-28', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Kevyn', 'Franco', 'kevyn@bolsadeideas.com', '2017-08-28', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Stefanny', 'Poma', 'stefanny@gmail.com', '2017-08-28', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Jocelyn', 'Becerra', 'jocelyn@bolsadeideas.com', '2017-08-28', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Enrique', 'Villareal', 'enrique@gmail.com', '2017-08-28', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Walter', 'Perez', 'walter@bolsadeideas.com', '2017-08-28', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Ximena', 'Chumpitaz', 'ximena@gmail.com', '2017-08-28', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Daniela', 'Ajinomoto', 'daniela@bolsadeideas.com', '2017-08-28', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Brenda', 'Kinomoto', 'brenda@bolsadeideas.com', '2017-08-28', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Carla', 'Asakura', 'carla@gmail.com', '2017-08-28', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Samanta', 'Tokugawa', 'samanta@bolsadeideas.com', '2017-08-28', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Paola', 'Kamiya', 'paola@gmail.com', '2017-08-28', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Fernanda', 'Ketchum', 'fernanda@gmail.com', '2017-08-28', '');


/* Populate table productos*/
INSERT INTO productos (nombre, precio, create_at) VALUES('Panasonic Pantalla LCD', 259990 ,NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Sony Camara Digital DSC-W320B', 123490 ,NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Apple Ipod Shuffle', 1499990 ,NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Sony Notebook Z110', 37990 ,NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Hewlet Packard Multifuncional F2280', 69990 ,NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Bianchi Bicicleta Aro 26', 69990 ,NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Mica Comoda 5 Cajones', 299990 ,NOW());

/* Populate algunas facturas */
INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES('Factura equipos de oficina ', null, 1, NOW()); 
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(1,1,1);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(2,1,4);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(1,1,5);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(1,1,7);
INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES('Factura Bicicleta', 'Alguna nota importante', 1, NOW()); 
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(3, 2, 6);


/* Creamos algunos usuarios con roles */
INSERT INTO users (username, password, enabled) VALUES ('andres','$2a$10$mdK9pJ0FYuzqZE2vtX/luu3RjGW6CvjA7qh7.ljsojQxqszvhIdAy', true);
INSERT INTO users (username, password, enabled) VALUES ('admin','$2a$10$JXqE3LQgXLI8inXLNGBgq.pUQdL5H2c.EbrA19zGuZA98cujkP6LW', true);

INSERT INTO authorities (user_id, authority) VALUES (1,'ROLE_USER');
INSERT INTO authorities (user_id, authority) VALUES (2,'ROLE_ADMIN');
INSERT INTO authorities (user_id, authority) VALUES (2,'ROLE_USER');
