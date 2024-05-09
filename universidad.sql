CREATE TABLE `alumnos` (
  `id_Alumno` int(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `dni` int(11) UNIQUE NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `fecha_Nacimiento` date NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1
);

CREATE TABLE `materias` (
  `id_Materia` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) UNIQUE NOT NULL,
  `año` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1
);

CREATE TABLE `inscripciones` (
  `id_Inscripto` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nota` int(11),
  `id_Alumno` int(11) UNIQUE NOT NULL,
  `id_Materia` int(11) UNIQUE NOT NULL
);

ALTER TABLE `inscripciones` ADD FOREIGN KEY (`id_Alumno`) REFERENCES `alumnos` (`id_Alumno`);

ALTER TABLE `inscripciones` ADD FOREIGN KEY (`id_Materia`) REFERENCES `materias` (`id_Materia`);
