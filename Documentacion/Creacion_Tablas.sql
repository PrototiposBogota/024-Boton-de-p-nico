
---pOSTGRES
CREATE TABLE Usuarios (
	id_usuario INT NOT NULL PRIMARY KEY,
	nombre varchar(100),
	apellido varchar(100) ,
	genero varchar(100) ,
	direccion varchar(100),
	correo varchar(100) ,
	celular INT,
	rol INT
);

CREATE TABLE Estado (
	id_estado SERIAL PRIMARY KEY,
	nombre varchar(100)
);

CREATE TABLE Localidad (
	id_localidad SERIAL PRIMARY KEY,
	nombre varchar(100)
);

CREATE TABLE Cai (
	id_cai SERIAL PRIMARY KEY,
	nombre varchar(100),
	direccion varchar(100),
	telefono INT,
	longitud decimal(4,1),
	latitud decimal(4,1),
	id_localidad INT REFERENCES Localidad(id_localidad)
);

CREATE TABLE Policia (
	id_placa SERIAL PRIMARY KEY,
	nombre varchar(100),
	apellido varchar(100),
	rango varchar(100),
	telefono INT,
	id_cai INT REFERENCES Cai(id_cai)
);


CREATE TABLE Alerta (
	id_alerta varchar(6) PRIMARY KEY,
	id_usuario INT REFERENCES Usuarios(id_usuario),
	id_estado INT REFERENCES Estado(id_estado),
	id_placa INT REFERENCES Policia(id_placa),
	longitud decimal(4,1),
	latitud decimal(4,1)
);


CREATE TABLE Registro_Incidencias (
	id_registro SERIAL PRIMARY KEY,
	id_alerta varchar(6) REFERENCES Alerta(id_alerta),
	id_usuario INT REFERENCES Usuarios(id_usuario),
	id_placa INT REFERENCES Policia(id_placa),
	fecha date,
	hora time
);
