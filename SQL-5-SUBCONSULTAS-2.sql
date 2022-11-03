CREATE SCHEMA IF NOT EXISTS bd1_ejercicio_5_subconsultas_2;
USE bd1_ejercicio_5_subconsultas_2;

create table Localidad
(IDlocalidad int (20) primary key,
descripcion varchar (30) not null);

create table Plato
(idPlato int (20) primary key auto_increment,
descricipcion varchar (50) not null,
precio int (10) not null);

create table Cliente
(idCliente int (10) primary key,
nombre varchar (20) not null,
apellido varchar (20),
calle varchar (30) ,
nro int (5),
idlocalidad int (20) not null,
foreign key (idlocalidad) references localidad (idlocalidad));

create table pedidoEncabezado 
(idPedido int (10) primary key auto_increment,
idCliente int (10) not null,
fecha date,
foreign key (idCliente) references Cliente (idCliente));

create table pedidoDetalle 
(idDetalle int (10) primary key auto_increment,
idPedido int(10) not null,
idPlato int(20) not null,
cantidad int(5) not null,
foreign key (idPlato) references Plato (idPlato),
foreign key (idPedido) references pedidoEncabezado (idpedido));

insert into localidad(idLocalidad, descripcion)
values
(01, "merlo"),
(02, "ituzaingo"),
(03, "ramos mejia"),
(04, "moron"),
(05, "moreno");

insert into plato ()
values
(1, "pollo a la pomarola" , 450),
(2, "pollo frito con papas", 650),
(3, "carne asada con bbq", 1200);

insert into cliente ()
values
(10, 'Pepe', 'Lopez', 'Pueyrredon', 1320, 01),
(11, 'Claudio', 'Gomez', 'Bolivar', 242, 02),
(12, 'Sergio', 'Rubio', 'Riobamba', 2341, 03),
(13, 'Marcos', 'Quevedo', 'Salar', 153, 04),
(14, 'Matias', 'Salazar', 'Alberdi', 52, 02),
(15, 'Matias', 'Salazar', 'Pichincha', 544, 05);

insert into pedidoEncabezado (idCliente, fecha)
values
(10, '2022-04-12'),
(11, '2022-02-11'),
(12, '2022-01-21'),
(13, '2021-04-16'),
(14, '2021-02-19'),
(14, '2022-05-08');

insert into pedidoDetalle(idPedido, idPlato, cantidad)
values
(01, 1, 3),
(02, 2, 4),
(03, 3, 2),
(04, 1, 1),
(05, 2, 5),
(06, 2, 4);

# 1- Escribir el script de creación de tabla Pedido Detalle con sus restriccione
# c:

# 2- Obtener los datos de todos los clientes, ordenados por Localidad, Nombre y Apellido
SELECT * 
		FROM cliente c
        JOIN localidad l 
        ON c.idLocalidad = l.idLocalidad
        ORDER BY l.idLocalidad, c.nombre, c.apellido;

# 3- Informar: número de Pedido, Cantidad de Platos Distintos, Cantidad de unidades total, Importe 
SELECT pe.



# 4- Mostrar un detalle de los clientes que han realizado pedidos en el mes de Enero y no realizaron ningún pedido en el mes de marzo
# 5- Informar el nombre del plato mas barato de la carta
# 6- informar los datos completos de los clientes, la fecha de última compra y el total gastado. Deben informarse la totalidad de los clientes existentes. 
# 7- Informar los platos que han sido comprados por mas de un cliente
# 8- Mostrar los clientes que han pedido todos los platos del menú 
# 9- Informar la descripción y precio de los platos que no han sido comprados por ningún cliente.

