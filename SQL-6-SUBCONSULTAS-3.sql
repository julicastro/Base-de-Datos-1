CREATE SCHEMA IF NOT EXISTS bd1_ejercicio_6_subconsultas_3;
USE bd1_ejercicio_6_subconsultas_3;

CREATE TABLE Marca(
IdMarca INT(5) PRIMARY KEY AUTO_INCREMENT,
Descripcion VARCHAR(20) NOT NULL);

CREATE TABLE Vehiculo(
Patente VARCHAR(10) PRIMARY KEY,
Color VARCHAR(20) NOT NULL,
Anio INT (5) NOT NULL,
Capacidad INT(5),
Puertas INT (5),
IdMarca INT(5),
FOREIGN KEY (IdMarca) REFERENCES Marca(IdMarca));

CREATE TABLE Cliente(
Legajo INT(5) PRIMARY KEY,
Nombre VARCHAR (50) NOT NULL,
Apellido VARCHAR (50) NOT NULL,
Telefono VARCHAR(50));

CREATE TABLE Alquiler 
(Id INT(5) NOT NULL PRIMARY KEY AUTO_INCREMENT, 
Patente VARCHAR(10) NOT NULL, 
legCliente INT(5) NOT NULL, 
FechaAlquiler DATE NOT NULL,
Importe DOUBLE NOT NULL,
CantDias INT(5),
FOREIGN KEY (Patente) references Vehiculo (Patente),
FOREIGN KEY (legCliente) references Cliente (Legajo)); 

INSERT INTO Cliente (Legajo, Nombre, Apellido, Telefono)
VALUES (1, 'Juan', 'Pepe', '1530111222339'),
(2, 'Santiago', 'Molinos', '1530222333448'),
(3, 'Ricardo', 'Marolio', '1530333444557'),
(4, 'Roberto', 'Ledesma', '1530444555666'),
(5, 'Alberto', 'Johnson', '1530555666775');

INSERT INTO Marca (Descripcion)
VALUES ('Nissan'),
('Renault'),
('Ford'),
('Volkswagen'),
('Fiat');

INSERT INTO Vehiculo(Patente, Color, Anio, Capacidad, Puertas, IdMarca)
VALUES ('AAA111', 'Azul', 2021, 2, 3, 1),
('AAA112', 'Rojo', 2010, 10, 5, 2),
('AAA113', 'Violeta', 2022, 11, 3, 3),
('AAA114', 'Naranja', 1990, 5, 5, 1),
('AAA115', 'Verde', 1994, 6, 3, 4),
('AAA116', 'Azul', 2020, 11, 2, 2),
('AAA117', 'Blanco', 1998, 9, 3, 5),
('FFF555', 'Negro' , 2019, 4, 5, 1);

INSERT INTO Alquiler(Patente, legCliente, FechaAlquiler, Importe, CantDias)
VALUES ('AAA111', 1, '2020-01-01', 300.00, 5),
('AAA111', 2, '2020-02-01', 700.00, 6),
('AAA112', 1, '2020-03-01', 100.00, 1),
('AAA111', 3, '2020-03-01', 3000.00, 15),
('AAA112', 3, '2020-03-01', 200.00, 2),
('AAA113', 3, '2021-10-01', 1000.00, 6), 
('AAA115', 1, '2021-07-01', 15000.00, 31),
('FFF555', 3, '2022-01-31', 500.00, 9),
('AAA114', 5, '2020-02-20', 4000.00, 8);

# 2. Obtener los datos de todos los vehículos, ordenados por marca (descripción) y patente


# 3. Para cada marca, informar la cantidad de vehículos total y máxima capacidad, únicamente para aquellos vehículos con más de 4 puertas.
# 4. Informar: Legajo, Nombre y apellido del cliente, patente, color del auto, fecha de alquiler, importe, impuestos (15% del importe del alquiler), de todos los alquileres registrados en el mes de febrero
# 5. Generar el script para agregar el siguiente Auto: ABC234, Rojo, 2021, 5, 4, 7.
# 6. Escribir la sentencia para modificar el color del auto FFF555 ya que el mismo es gris
# 7. Detallar la patente de todos los autos que tienen la máxima capacidad
# 8. Mostrar los datos de los clientes que han alquilado algún vehículo de Marca Nissan pero nunca han alquilado un Ford.
# 9. Listar la patente, importe total de alquiler, cantidad de alquiler por auto, únicamente para los vehículos que hayan sido alquilados más de una vez
# 10. Informar los datos de los clientes que han alquilado más de una vez en la agencia en el último trimestre (enero, febrero y marzo 2020)