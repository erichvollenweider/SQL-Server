CREATE TABLE Personal(
	nombre VARCHAR(50) NOT NULL,
    nacionalidad VARCHAR(20) NOT NULL,
    cantidad_peliculas INT NOT NULL,
    CONSTRAINT PK_nombre_p PRIMARY KEY (nombre),
    CONSTRAINT CK_cantidad_pelicula_p CHECK (cantidad_peliculas >= 0)
);

CREATE TABLE Director(
	nombre VARCHAR(50) NOT NULL,
    CONSTRAINT PK_nombre_director FOREIGN KEY (nombre) REFERENCES Personal(nombre)
);

CREATE TABLE Protagonista(
	nombre VARCHAR(50) NOT NULL,
    CONSTRAINT PK_nombre_p FOREIGN KEY (nombre) REFERENCES Personal(nombre)
);

CREATE TABLE Reparto(
	nombre VARCHAR(50) NOT NULL,
    CONSTRAINT PK_nombre_r FOREIGN KEY (nombre) REFERENCES Personal(nombre)
);

CREATE TABLE Pelicula(
	identificador INT NOT NULL,
    titulo_distribucion VARCHAR(50) NOT NULL,
    titulo_original VARCHAR(50) NOT NULL,
    titulo_español VARCHAR(50) NOT NULL,
    genero VARCHAR(20) NOT NULL,
    idioma_original VARCHAR(20) NOT NULL,
    año_produccion INT NOT NULL,
    resumen VARCHAR(1000) NOT NULL,
    fecha_estreno DATE NOT NULL,
    duracion TIME NOT NULL,
    url VARCHAR(100) NOT NULL,
    pais_origen VARCHAR(20) NOT NULL,
    calificacion VARCHAR(20) NOT NULL DEFAULT 'Apta todo público',
    nombre_director VARCHAR(50) NOT NULL,
    CONSTRAINT PK_identificador PRIMARY KEY (identificador),
    CONSTRAINT CK_identificador CHECK (identificador >= 0),
    CONSTRAINT CK_titulo_original CHECK (titulo_original = UPPER(titulo_original)),
    CONSTRAINT CK_año_produccion CHECK (año_produccion >= 0),
    CONSTRAINT FK_nombre_director FOREIGN KEY (nombre_director) REFERENCES Director(nombre),
    CONSTRAINT CK_calificación CHECK (calificacion IN ('+ 13 años', '+ 15 años','+ 18 años'))
);

CREATE TABLE Actuo(
	identificador_pelicula INT NOT NULL,
    nombre_protagonista VARCHAR(50) NOT NULL,
    CONSTRAINT FK_identificador_p_p FOREIGN KEY (identificador_pelicula) REFERENCES Pelicula(identificador),
    CONSTRAINT FK_nombre_protagonista FOREIGN KEY (nombre_protagonista) REFERENCES Protagonista(nombre)
);

CREATE TABLE Participo(
	identificador_pelicula INT NOT NULL,
    nombre_reparto VARCHAR(50) NOT NULL,
    CONSTRAINT FK_identificador_p_r FOREIGN KEY (identificador_pelicula) REFERENCES Pelicula(identificador),
    CONSTRAINT FK_nombre_reparto FOREIGN KEY (nombre_reparto) REFERENCES Reparto(nombre)
);
    
CREATE TABLE Cine(
	nombre VARCHAR(50) NOT NULL,
    direccion VARCHAR(50) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
	CONSTRAINT PK_nombre_cine PRIMARY KEY (nombre)
);

CREATE TABLE Sala(
	numero INT NOT NULL,
    cantidad_butacas INT NOT NULL,
    nombre_cine VARCHAR(50) NOT NULL,
    CONSTRAINT PK_numero PRIMARY KEY (numero),
    CONSTRAINT CK_numero CHECK (numero >= 0),
    CONSTRAINT FK_nombre_cine_s FOREIGN KEY (nombre_cine) REFERENCES Cine(nombre)
);

CREATE TABLE Funcion(
	codigo INT NOT NULL,
    fecha DATE NOT NULL,
    hora_comienzo TIME NOT NULL,
    numero_sala INT NOT NULL,
    CONSTRAINT PK_codigo PRIMARY KEY (codigo),
    CONSTRAINT CK_codigo CHECK (codigo >= 0),
    CONSTRAINT FK_numero FOREIGN KEY (numero_sala) REFERENCES Sala(numero)
);

CREATE TABLE Exhibe(
	identificador_pelicula INT NOT NULL,
    codigo_funcion INT NOT NULL,
    CONSTRAINT FK_identificador_pelicula FOREIGN KEY  (identificador_pelicula) REFERENCES Pelicula(identificador),
    CONSTRAINT FK_codigo_funcion_e FOREIGN KEY (codigo_funcion) REFERENCES Funcion(codigo)
);

INSERT INTO Personal (nombre, nacionalidad, cantidad_peliculas) VALUES
('Justin Lin', 'Taieanés', 6),
('James Wan', 'Malayo', 1),
('Vin Diesel', 'Estadounidense', 5),
('Paul Walker', 'Estadounidense', 6),
('Tyrese Gibson', 'Estadounidense', 5),
('Jordana Brewster', 'Panameño', 5),
('Chad Lindberg', 'Estadounidense', 1),
('Johnny Strong', 'Estadounidense', 4),
('Reggie Lee', 'Filipino', 1);

INSERT INTO Director (nombre) VALUES
('Justin Lin'),
('James Wan');

INSERT INTO Protagonista (nombre) VALUES
('Vin Diesel'),
('Paul Walker'),
('Tyrese Gibson'),
('Jordana Brewster');

INSERT INTO Reparto (nombre) VALUES
('Chad Lindberg'),
('Johnny Strong'),
('Reggie Lee');

INSERT INTO Pelicula (identificador, titulo_distribucion, titulo_original, titulo_español, genero, idioma_original, año_produccion, resumen, fecha_estreno, duracion, url, pais_origen, calificacion, nombre_director) VALUES
(1, 'The Fast and The Furious', 'THE FAST AND THE FURIOUS', 'Rápido y Furioso', 'Acción', 'Inglés', 2001, 'Un policía encubierto se infiltra en una subcultura del inframundo de corredores callejeros de Los Ángeles que buscan reventar una red de secuestros, y pronto comienza a cuestionar sus lealtades.', '2001-06-22', '01:47:00', 'http://www.rapidosyfuriosos.com.ar/franchise.php?id=4', 'Estados Unidos', '+ 13 años', 'Justin Lin'),
(2, '2 Fast 2 Furious', '2 FAST 2 FURIOUS', 'Más Rápidos Más Furiosos', 'Acción', 'Inglés', 2003, 'Cuando el ex policía, Brian O`Conner, es capturado en Miami por su antiguo socio, Bilkins, lo reclutan para acabar con un narcotraficante llamado Carter Verone. O`Connor acepta ayudarlos en los términos de crear su propio equipo. Decide formar equipo con su amigo de la infancia, Roman Pearce.', '2003-06-06', '01:47:00', 'http://www.rapidosyfuriosos.com.ar/franchise.php?id=4', 'Estados Unidos', '+ 13 años', 'Justin Lin'),
(3, 'The Fast and the Furious: Tokyo Drift', 'THE FAST AND THE FURIOUS: TOKYO DRIFT', 'Rápido y furioso: Reto Tokio', 'Acción', 'Inglés', 2006, 'Sean es un chico que no se adapta a ningún grupo, su única conexión con el mundo son las carreras ilegales, lo que lo ha convertido en el perseguido número uno por la policía. Cuando lo amenazan de cárcel, lo mandan a Japón con su padre. Estando en este país es atraído por el último reto automovilístico que desafía la gravedad: las carreras drift, una mezcla peligrosa de alta velocidad en pistas con curvas muy cerradas y en zigzag. Estas carreras lo llevan a involucrase con la mafia japonesa, el hampa de Tokio y a jugarse la vida.', '2006-06-16', '01:44:00', 'http://www.rapidosyfuriosos.com.ar/franchise.php?id=4', 'Estados Unidos', '+ 13 años', 'Justin Lin'),
(4, 'Fast & Furious', 'FAST & FURIOUS', 'Rápidos y Furiosos', 'Acción', 'Inglés', '2009', 'Un asesinato obliga a Don Toretto, un ex convicto huido, y al agente Brian O`Conner a volver a Los Ángeles. donde su pelea se reaviva. Pero al tener que enfrentarse a un enemigo común, se ven obligados a formar una alianza incierta si quieren conseguir desbaratar sus planes.', '2009-04-03', '01:47:00', 'http://www.rapidosyfuriosos.com.ar/franchise.php?id=4', 'Estados Unidos', '+ 13 años', 'Justin Lin'),
(5, 'Fast Five', 'FAST FIVE', 'Rápidos y Furiosos 5in Control', 'Acción', 'Inglés', 2011, 'Luke Hobbs, un duro agente federal acostumbrado a dar caza a todos sus objetivos, debe confiar en su instinto para atraparles y que nadie más se le adelante. De esta forma, él y su equipo se embarcarán en un veloz viaje sin tregua para frenar a los protagonistas de la saga.', '2011-04-29', '02:11:00', 'https://www.imdb.com/title/tt1596343/', 'Estados Unidos', '+ 15 años', 'Justin Lin'),
(6, 'Fast & Furious 6', 'FAST & FURIOUS 6', 'Rápido y Furioso 6', 'Acción', 'Inglés', 2013, 'Desde que Dom y Brian destruyeron el imperio de un mafioso y se hicieron con cien millones de dólares, se encuentran en paradero desconocido; no pueden regresar a casa porque la ley los persigue. Entretanto, Hobbs ha seguido la pista por una docena de países a una banda de letales conductores mercenarios, cuyo cerebro cuenta con la inestimable ayuda de la sexy Letty, un viejo amor de Dom que éste daba por muerta. La única forma de detenerlos es enfrentarse a ellos en las calles, así que Hobbs le pide a Dom que reúna a su equipo en Londres. ¿Qué obtendrán a cambio? Un indulto para que todos puedan volver a casa con sus familias.', '2013-05-24', '02:10:00', 'https://www.imdb.com/title/tt1905041/', 'Estados Unidos', '+ 15 años', 'Justin Lin'),
(7, 'Furious 7', 'FURIOUS 7', 'Rápidos y Furiosos 7', 'Acción', 'Inglés', 2015, 'Luego de haber derrotado al terrorista Owen Shaw, Dominic Toretto y sus amigos creían haber dejado la vida ruda atrás. Sin embargo, Deckard Shaw, el hermano de Owen, aparece de pronto para cobrar venganza. Su intención es eliminar al clan que exterminó a su hermano, uno por uno. ', '2015-04-03', '02:20:00', 'https://www.imdb.com/title/tt2820852/', 'Estados Unidos', '+ 15 años', 'James Wan');

INSERT INTO Actuo (identificador_pelicula, nombre_protagonista) VALUES
(1,'Vin Diesel'),
(4,'Vin Diesel'),
(5,'Vin Diesel'),
(6,'Vin Diesel'),
(7,'Vin Diesel'),
(1, 'Paul Walker'),
(2, 'Paul Walker'),
(4, 'Paul Walker'),
(5, 'Paul Walker'),
(6, 'Paul Walker'),
(7, 'Paul Walker'),
(2, 'Tyrese Gibson'),
(4, 'Tyrese Gibson'),
(5, 'Tyrese Gibson'),
(6, 'Tyrese Gibson'),
(7, 'Tyrese Gibson'),
(1, 'Jordana Brewster'),
(4, 'Jordana Brewster'),
(5, 'Jordana Brewster'),
(6, 'Jordana Brewster'),
(7, 'Jordana Brewster');

INSERT INTO Participo (identificador_pelicula, nombre_reparto) VALUES
(1, 'Chad Lindberg'),
(1, 'Johnny Strong'),
(5, 'Johnny Strong'),
(6, 'Johnny Strong'),
(7, 'Johnny Strong'),
(1, 'Reggie Lee');

INSERT INTO Cine (nombre, direccion, telefono) VALUES
('Cine del Paseo', 'Sobremonte 80, Río Cuarto, Córdoba', '03584621235'),
('Cine Hoyts Patio Olmos', 'Vélez Sarsfield 361, Córdoba', '03514238408');

INSERT INTO Sala (numero, cantidad_butaca, nombre_cine) VALUES
(1, 50, 'Cine del Paseo'),
(2, 75, 'Cine del Paseo'),
(3, 60, 'Cine del Paseo'),
(4, 45, 'Cine del Paseo'),
(5, 100, 'Cine Hoyts Patio Olmos'),
(6, 110, 'Cine Hoyts Patio Olmos'),
(7, 80, 'Cine Hoyts Patio Olmos');

INSERT INTO Funcion (codigo, fecha, hora_comiezo, numero_sala) VALUES
(1, '2024-05-12', '22:30:00', 1),
(2, '2024-05-12', '23:00:00', 2),
(3, '2024-05-13', '20:30:00', 1),
(4, '2024-05-12', '18:30:00', 3),
(5, '2024-05-14', '18:00:00', 3),
(6, '2024-05-10', '14:00:00', 5),
(7, '2024-05-15', '15:30:00', 6);

INSERT INTO Exhibe (identificador_pelicula, codigo_funcion) VALUES
(1, 1),
(2, 3),
(3, 2),
(4, 7),
(1, 4),
(2, 5),
(1, 6);

-- -----------------------INICIO TRIGGER ----------------------------
DELIMITER $$

CREATE TRIGGER insertar_actuo_despues_de_insertar_pelicula
AFTER INSERT ON Pelicula
FOR EACH ROW
BEGIN
    INSERT INTO Actuo (identificador_pelicula) VALUES (NEW.identificador);
END $$

DELIMITER $$

CREATE TRIGGER actualizar_actuo_despues_de_insertar_protagonista
AFTER INSERT ON Protagonista
FOR EACH ROW
BEGIN
    -- Actualizar la tabla Actuo con el identificador_pelicula correspondiente
    UPDATE Actuo SET identificador_pelicula = (SELECT identificador FROM Pelicula) WHERE identificador_pelicula IS NULL;
END $$

DELIMITER ;
-- -----------------------FIN TRIGGER ----------------------------

-- -----------------------INICIO TRIGGER ----------------------------
DELIMITER $$
CREATE TRIGGER insertar_participo_despues_de_insertar_pelicula
AFTER INSERT ON Pelicula
FOR EACH ROW
BEGIN
    INSERT INTO Participo (identificador_pelicula) VALUES (NEW.identificador);
END $$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER insertar_participo_despues_de_insertar_protagonista
AFTER INSERT ON Reparto
FOR EACH ROW
BEGIN
    INSERT INTO Participo (nombre_reparto) VALUES (NEW.nombre);
END $$
DELIMITER ;
-- -----------------------FIN TRIGGER ----------------------------