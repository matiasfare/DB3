--para ejecutar este script, crear la bd dvdrental_dwh
create table film(
	id SERIAL PRIMARY KEY,
	titulo VARCHAR(255) NOT NULL,
	max_renta SMALLINT,
	duracion_film INT,
	lenguaje VARCHAR(20),
	precio_renta INT
);
create table actor(
	id SERIAL PRIMARY KEY,
	nombre VARCHAR(45),
	apellido VARCHAR(45)
);
create table categoria(
	id SERIAL PRIMARY KEY,
	nombre VARCHAR(25)
);
create table ciudad(
        id SERIAL PRIMARY KEY,
        nombre VARCHAR(50),
        pais VARCHAR(50)
);
create table tienda(
	id SERIAL PRIMARY KEY,
	id_empleado INT,
	nombre_empleado VARCHAR(45),
	apellido_empleado VARCHAR(45),
	id_ciudad INT REFERENCES ciudad(id),
	direccion VARCHAR(500)
);
create table tiempo(
	id VARCHAR(20) PRIMARY KEY,
	anho VARCHAR(20),
	semestre VARCHAR(20),
	mes VARCHAR(20),
	dia VARCHAR(20)
);
create table hechos(
	id_categoria INT REFERENCES categoria(id),
	id_tiempo VARCHAR(20) REFERENCES tiempo(id),
	id_film INT REFERENCES film(id),
	id_tienda INT REFERENCES tienda(id),
	cantidad_de_rentas INT,
	monto_recaudado INT
);
