-- phpMyAdmin SQL Dump
-- version 3.3.7deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 02, 2010 at 05:55 PM
-- Server version: 5.1.49
-- PHP Version: 5.3.3-1ubuntu9.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `siec`
--

-- --------------------------------------------------------

--
-- Table structure for table `tc_carrera`
--

CREATE TABLE IF NOT EXISTS `tc_carrera` (
  `CARRERA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DES_CARRERA` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CARRERA_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tc_carrera`
--

INSERT INTO `tc_carrera` (`CARRERA_ID`, `DES_CARRERA`) VALUES
(1, 'ISEI'),
(2, 'MECATRONICA'),
(3, 'ELECTRONICA'),
(4, 'ENERGIAS'),
(5, 'LANI'),
(6, 'INDUSTRIAL'),
(7, 'MECANICA');

-- --------------------------------------------------------

--
-- Table structure for table `tc_categorias`
--

CREATE TABLE IF NOT EXISTS `tc_categorias` (
  `CATEGORIA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DES_CATEGORIA` varchar(45) DEFAULT NULL,
  `DESCRIPCION` varchar(255) DEFAULT NULL,
  `ORDEN` int(11) DEFAULT NULL,
  PRIMARY KEY (`CATEGORIA_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tc_categorias`
--

INSERT INTO `tc_categorias` (`CATEGORIA_ID`, `DES_CATEGORIA`, `DESCRIPCION`, `ORDEN`) VALUES
(1, 'TEORIA', 'SE EVALUA LA PARTE TEORICA', 1),
(2, 'PRACTICA', 'SE EVALUA LA APLICACION DE LA TEORIA', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tc_competencias`
--

CREATE TABLE IF NOT EXISTS `tc_competencias` (
  `COMPETENCIA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DES_COMPETENCIA` varchar(45) DEFAULT NULL,
  `DESCRIPCION` varchar(255) DEFAULT NULL,
  `CATEGORIA_ID` int(11) NOT NULL,
  PRIMARY KEY (`COMPETENCIA_ID`),
  KEY `fk_TC_COMPETENCIAS_CATEGORIAS` (`CATEGORIA_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tc_competencias`
--

INSERT INTO `tc_competencias` (`COMPETENCIA_ID`, `DES_COMPETENCIA`, `DESCRIPCION`, `CATEGORIA_ID`) VALUES
(1, 'PROGRAMACIO ESTRUCTURADA', 'EL ALUMNO APRENDERA A REALIZAR CODIGOS CON UNA ESTRUCTURA ORDENADA Y LIMPIA', 2),
(2, 'MANEJO DE CISCO', 'EL ALIMNO APRENDERA A REALIZAR REDES EN LA HERRAMIENTA CISCO ', 2),
(3, 'APRENDER ESTRATEGIAS DE DOCUMENTACION', 'EL ALUMNO APRENDERA A REALIZAR LA DOCUMENTACION NECESARIA PARA EL DESARROLLO DEL SOFTWARE', 1),
(4, 'SOLUCION DE ECUACIONES', 'EL ALUMNO APRENDERA A RESOLVER ECUACIONES MEDIANTE DIFERENTES TIPOS DE SOLUCION', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tc_criterios`
--

CREATE TABLE IF NOT EXISTS `tc_criterios` (
  `CRITERIO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DES_CRITERIO` varchar(50) DEFAULT NULL,
  `DESCRIPCION` varchar(255) DEFAULT NULL,
  `Ponderacion` int(11) NOT NULL,
  PRIMARY KEY (`CRITERIO_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tc_criterios`
--

INSERT INTO `tc_criterios` (`CRITERIO_ID`, `DES_CRITERIO`, `DESCRIPCION`, `Ponderacion`) VALUES
(1, 'REALIZAR METODS', 'EL ALUMNO APRENDERA A REALIZAR METODOS QUE PERMITAN COMPRENDER MAS UNCODIGO', 0),
(2, 'CREACION DE CLASES', 'EL ALUMNO APRENDERA A REALIZAR CLASESY METODOS BASICOS PARA EL DESARROLLO DE SOFTWARE', 0),
(3, 'PUNTUALIDAD', 'REALIZAR EN TIEMPO Y FORMA LAS ACTIVIDADES DE LA MATERIA', 0),
(4, 'REALIZAR VLANS', 'EL ALUMNO APRENDERA EL CONCEPTO Y ELABORACION DE VLANS', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tc_departamentos`
--

CREATE TABLE IF NOT EXISTS `tc_departamentos` (
  `DEPARTAMENTO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DES_DEPARTAMENTO` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DEPARTAMENTO_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tc_departamentos`
--

INSERT INTO `tc_departamentos` (`DEPARTAMENTO_ID`, `DES_DEPARTAMENTO`) VALUES
(1, 'MATEMATICAS'),
(2, 'IDIOMAS'),
(3, 'ISEI');

-- --------------------------------------------------------

--
-- Table structure for table `tc_evaluacion_nivel`
--

CREATE TABLE IF NOT EXISTS `tc_evaluacion_nivel` (
  `EVALUACION_NIVEL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DES_EVALUACION` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`EVALUACION_NIVEL_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tc_evaluacion_nivel`
--

INSERT INTO `tc_evaluacion_nivel` (`EVALUACION_NIVEL_ID`, `DES_EVALUACION`) VALUES
(1, 'COMPETENTE'),
(2, 'BASICO'),
(3, 'INDEPENDIENTE'),
(4, 'AVANZADO'),
(5, 'INCOMPETENTE');

-- --------------------------------------------------------

--
-- Table structure for table `tc_grupo`
--

CREATE TABLE IF NOT EXISTS `tc_grupo` (
  `GRUPO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DES_GRUPO` varchar(45) DEFAULT NULL,
  `CARRERA_ID` int(11) NOT NULL,
  `CUATRIMESTRE` varchar(45) DEFAULT NULL,
  `LETRA` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`GRUPO_ID`),
  KEY `fk_TC_GRUPO_TC_CARRERA1` (`CARRERA_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tc_grupo`
--

INSERT INTO `tc_grupo` (`GRUPO_ID`, `DES_GRUPO`, `CARRERA_ID`, `CUATRIMESTRE`, `LETRA`) VALUES
(1, 'ISEI_6A_2010', 1, '6', 'A'),
(2, 'INDUSTRILA_1B_2010', 6, '1', 'B'),
(3, 'ISEI_3A_2010', 1, '3', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `tc_materias`
--

CREATE TABLE IF NOT EXISTS `tc_materias` (
  `MATERIAS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DES_MATERIAS` varchar(45) DEFAULT NULL,
  `DEPARTAMENTO_ID` int(11) NOT NULL,
  PRIMARY KEY (`MATERIAS_ID`),
  KEY `fk_MATERIAS_TC_DEPARTAMENTOS1` (`DEPARTAMENTO_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tc_materias`
--

INSERT INTO `tc_materias` (`MATERIAS_ID`, `DES_MATERIAS`, `DEPARTAMENTO_ID`) VALUES
(1, 'PROGRAMACION II', 3),
(2, 'CALCULO INTEGRAL', 1),
(3, 'INGLES VI', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tc_perfil`
--

CREATE TABLE IF NOT EXISTS `tc_perfil` (
  `PERFIL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DES_PERFIL` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PERFIL_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tc_perfil`
--

INSERT INTO `tc_perfil` (`PERFIL_ID`, `DES_PERFIL`) VALUES
(1, 'alumno'),
(2, 'maestro'),
(3, 'tutor'),
(4, 'DPA'),
(5, 'jefe de carrera');

-- --------------------------------------------------------

--
-- Table structure for table `tc_reportes`
--

CREATE TABLE IF NOT EXISTS `tc_reportes` (
  `REPORTES_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DES_REPORTES` varchar(45) DEFAULT NULL,
  `PERFIL_ID` int(11) NOT NULL,
  PRIMARY KEY (`REPORTES_ID`),
  KEY `fk_TC_REPORTES_TC_PERFIL1` (`PERFIL_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tc_reportes`
--

INSERT INTO `tc_reportes` (`REPORTES_ID`, `DES_REPORTES`, `PERFIL_ID`) VALUES
(1, 'semanal', 1),
(2, 'informal', 2),
(3, 'informal', 3),
(4, 'parcial', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tc_tipo_evaluacion`
--

CREATE TABLE IF NOT EXISTS `tc_tipo_evaluacion` (
  `TIPO_EVALUACION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DES_TIPO_EVALUACION` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`TIPO_EVALUACION_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tc_tipo_evaluacion`
--

INSERT INTO `tc_tipo_evaluacion` (`TIPO_EVALUACION_ID`, `DES_TIPO_EVALUACION`) VALUES
(1, 'FORMATIVA'),
(2, 'ACUMULATIVA'),
(3, 'PARCIAL');

-- --------------------------------------------------------

--
-- Table structure for table `tr_alumnos`
--

CREATE TABLE IF NOT EXISTS `tr_alumnos` (
  `ALUMNOS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MATRICULA` varchar(45) DEFAULT NULL,
  `USUARIO_ID` int(11) NOT NULL,
  `GRUPO_ID` int(11) NOT NULL,
  `CARRERA_ID` int(11) NOT NULL,
  PRIMARY KEY (`ALUMNOS_ID`),
  KEY `fk_TC_ALUMNOS_TC_USUARIO1` (`USUARIO_ID`),
  KEY `fk_TR_ALUMNOS_TC_GRUPO1` (`GRUPO_ID`),
  KEY `fk_TR_ALUMNOS_TC_CARRERA1` (`CARRERA_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tr_alumnos`
--

INSERT INTO `tr_alumnos` (`ALUMNOS_ID`, `MATRICULA`, `USUARIO_ID`, `GRUPO_ID`, `CARRERA_ID`) VALUES
(2, 'UP080605', 2, 2, 2),
(3, 'UP080704', 3, 3, 3),
(6, 'UP010101', 4, 1, 2),
(9, 'UP999999', 5, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tr_comentario_dpa_estrategia`
--

CREATE TABLE IF NOT EXISTS `tr_comentario_dpa_estrategia` (
  `COMENT_ESTRA_DPA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ESTRATEGIA_ID` int(11) NOT NULL,
  PRIMARY KEY (`COMENT_ESTRA_DPA_ID`),
  KEY `fk_TR_COMENTARIO_DPA_ESTRATEGIA_TR_ESTRATEGIAS1` (`ESTRATEGIA_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tr_comentario_dpa_estrategia`
--

INSERT INTO `tr_comentario_dpa_estrategia` (`COMENT_ESTRA_DPA_ID`, `ESTRATEGIA_ID`) VALUES
(1, 12),
(2, 13),
(4, 14),
(5, 15);

-- --------------------------------------------------------

--
-- Table structure for table `tr_criterio_competencia`
--

CREATE TABLE IF NOT EXISTS `tr_criterio_competencia` (
  `CRITERIO_COMPETENCIA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PONDERACION_CRITERIO` varchar(45) DEFAULT NULL,
  `CRITERIO_ID` int(11) NOT NULL,
  `COMPETENCIA_ID` int(11) NOT NULL,
  PRIMARY KEY (`CRITERIO_COMPETENCIA_ID`),
  KEY `fk_TR_CRITERIO_COMPETENCIA_TC_CRITERIOS1` (`CRITERIO_ID`),
  KEY `fk_TR_CRITERIO_COMPETENCIA_TC_COMPETENCIAS1` (`COMPETENCIA_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tr_criterio_competencia`
--

INSERT INTO `tr_criterio_competencia` (`CRITERIO_COMPETENCIA_ID`, `PONDERACION_CRITERIO`, `CRITERIO_ID`, `COMPETENCIA_ID`) VALUES
(2, '9', 1, 1),
(3, '10', 2, 2),
(4, '9', 3, 3),
(5, '8', 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tr_estrategias`
--

CREATE TABLE IF NOT EXISTS `tr_estrategias` (
  `ESTRATEGIA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FECHA_INICIO_REGISTRO` date DEFAULT NULL,
  `MENSAJE` varchar(45) DEFAULT NULL,
  `MAESTROS_MAESTRO_ID` int(11) NOT NULL,
  PRIMARY KEY (`ESTRATEGIA_ID`),
  KEY `fk_TR_ESTRATEGIAS_MAESTROS1` (`MAESTROS_MAESTRO_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `tr_estrategias`
--

INSERT INTO `tr_estrategias` (`ESTRATEGIA_ID`, `FECHA_INICIO_REGISTRO`, `MENSAJE`, `MAESTROS_MAESTRO_ID`) VALUES
(12, '2010-10-10', 'exitoso', 1),
(13, '2010-09-09', 'esfuerzate', 2),
(14, '2010-11-11', 'tu puedes', 1),
(15, '2011-01-01', 'mediocre', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tr_evaluacion_acumulativa`
--

CREATE TABLE IF NOT EXISTS `tr_evaluacion_acumulativa` (
  `EVALUACION_ACUMULATIVA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PARCIAL` int(11) DEFAULT NULL,
  `CALIFICACION` int(11) DEFAULT NULL,
  PRIMARY KEY (`EVALUACION_ACUMULATIVA_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tr_evaluacion_acumulativa`
--

INSERT INTO `tr_evaluacion_acumulativa` (`EVALUACION_ACUMULATIVA_ID`, `PARCIAL`, `CALIFICACION`) VALUES
(1, 1, 9),
(2, 2, 10),
(3, 3, 8),
(4, 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tr_evaluacion_parcial`
--

CREATE TABLE IF NOT EXISTS `tr_evaluacion_parcial` (
  `EVALUACION_PARCIAL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CALIFICACION` int(11) DEFAULT NULL,
  `PARCIAL` int(11) DEFAULT NULL,
  `EVALUACION_NIVEL_ID` int(11) NOT NULL,
  `TIPO_EVALUACION_ID` int(11) NOT NULL,
  `SESION_ID` int(11) NOT NULL,
  `ALUMNOS_ID` int(11) NOT NULL,
  PRIMARY KEY (`EVALUACION_PARCIAL_ID`),
  KEY `fk_TR_EVALUACION_PARCIAL_TC_EVALUACION_NIVEL1` (`EVALUACION_NIVEL_ID`),
  KEY `fk_TR_EVALUACION_PARCIAL_TC_TIPO_EVALUACION1` (`TIPO_EVALUACION_ID`),
  KEY `fk_TR_EVALUACION_PARCIAL_TR_MAESTRO_MATERIA_GRUPO_SESION1` (`SESION_ID`),
  KEY `fk_TR_EVALUACION_PARCIAL_TR_ALUMNOS1` (`ALUMNOS_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tr_evaluacion_parcial`
--

INSERT INTO `tr_evaluacion_parcial` (`EVALUACION_PARCIAL_ID`, `CALIFICACION`, `PARCIAL`, `EVALUACION_NIVEL_ID`, `TIPO_EVALUACION_ID`, `SESION_ID`, `ALUMNOS_ID`) VALUES
(2, 9, 9, 1, 1, 1, 2),
(3, 10, 2, 2, 2, 2, 3),
(7, 8, 2, 3, 3, 3, 2),
(9, 7, 3, 2, 2, 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tr_evaluacion_parcial_acumulativa`
--

CREATE TABLE IF NOT EXISTS `tr_evaluacion_parcial_acumulativa` (
  `EVALUACION_PARCIAL_ACUMULATIVA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `EVALUACION_PARCIAL_ID` int(11) NOT NULL,
  `EVALUACION_ACUMULATIVA_ID` int(11) NOT NULL,
  PRIMARY KEY (`EVALUACION_PARCIAL_ACUMULATIVA_ID`),
  KEY `fk_TR_EVALUACION_PARCIAL_ACUMULATIVA_TR_EVALUACION_PARCIAL1` (`EVALUACION_PARCIAL_ID`),
  KEY `fk_TR_EVALUACION_PARCIAL_ACUMULATIVA_TR_EVALUACION_ACUMULATIVA1` (`EVALUACION_ACUMULATIVA_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tr_evaluacion_parcial_acumulativa`
--

INSERT INTO `tr_evaluacion_parcial_acumulativa` (`EVALUACION_PARCIAL_ACUMULATIVA_ID`, `EVALUACION_PARCIAL_ID`, `EVALUACION_ACUMULATIVA_ID`) VALUES
(2, 2, 2),
(3, 3, 3),
(11, 7, 2),
(13, 9, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tr_maestros`
--

CREATE TABLE IF NOT EXISTS `tr_maestros` (
  `MAESTRO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODIGO` varchar(45) DEFAULT NULL,
  `USUARIO_ID` int(11) NOT NULL,
  PRIMARY KEY (`MAESTRO_ID`),
  KEY `fk_MAESTROS_TR_USUARIO1` (`USUARIO_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tr_maestros`
--

INSERT INTO `tr_maestros` (`MAESTRO_ID`, `CODIGO`, `USUARIO_ID`) VALUES
(1, 'Progra', 3),
(2, 'Admin', 6),
(3, 'Desarrollo', 6),
(4, 'ingles', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tr_maestro_materia_grupo`
--

CREATE TABLE IF NOT EXISTS `tr_maestro_materia_grupo` (
  `MAESTRO_MATERIA_GRUPO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GRUPO_GRUPO_ID` int(11) NOT NULL,
  `Maestro_ID` int(11) NOT NULL,
  `Materia_ID` int(11) NOT NULL,
  PRIMARY KEY (`MAESTRO_MATERIA_GRUPO_ID`),
  KEY `fk_TR_MAESTRO_MATERIA_GRUPO_TC_GRUPO1` (`GRUPO_GRUPO_ID`),
  KEY `Maestro_ID` (`Maestro_ID`,`Materia_ID`),
  KEY `Materia_ID` (`Materia_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tr_maestro_materia_grupo`
--

INSERT INTO `tr_maestro_materia_grupo` (`MAESTRO_MATERIA_GRUPO_ID`, `GRUPO_GRUPO_ID`, `Maestro_ID`, `Materia_ID`) VALUES
(1, 1, 2, 2),
(2, 2, 1, 1),
(3, 3, 3, 3),
(4, 2, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tr_presesion`
--

CREATE TABLE IF NOT EXISTS `tr_presesion` (
  `PRESESION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MENSAJE` varchar(255) DEFAULT NULL,
  `ESTADO` int(11) DEFAULT NULL,
  `CRITERIO_COMPETENCIA_CRITERIO_COMPETENCIA_ID` int(11) NOT NULL,
  `PONDERACION` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PRESESION_ID`),
  KEY `fk_TR_SESION_TR_CRITERIO_COMPETENCIA1` (`CRITERIO_COMPETENCIA_CRITERIO_COMPETENCIA_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tr_presesion`
--

INSERT INTO `tr_presesion` (`PRESESION_ID`, `MENSAJE`, `ESTADO`, `CRITERIO_COMPETENCIA_CRITERIO_COMPETENCIA_ID`, `PONDERACION`) VALUES
(1, 'tiene nuevo mensaje', 0, 2, 'total'),
(2, 'no ha recibido evaluacion', 0, 3, 'total'),
(3, 'ha ocurrido error', 0, 4, 'total'),
(4, 'registrese aqui', 0, 5, 'nula');

-- --------------------------------------------------------

--
-- Table structure for table `tr_presesion_rechazada`
--

CREATE TABLE IF NOT EXISTS `tr_presesion_rechazada` (
  `SESION_RECHAZADA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MENSAJE` varchar(45) DEFAULT NULL,
  `PRESESION_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SESION_RECHAZADA_ID`),
  KEY `fk_tr_presesion` (`PRESESION_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tr_presesion_rechazada`
--

INSERT INTO `tr_presesion_rechazada` (`SESION_RECHAZADA_ID`, `MENSAJE`, `PRESESION_ID`) VALUES
(1, 'Error en servidor', 1),
(2, 'Clave o nombre de usuario incorrecto', 1),
(3, 'Excediste limite de tiempo de sesión inactiva', 1),
(4, 'Ya has iniciado sesión en otra IP', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tr_sesion`
--

CREATE TABLE IF NOT EXISTS `tr_sesion` (
  `SESION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRESESION_ID` int(11) NOT NULL,
  `MAE_MAT_GRP_ID` int(11) NOT NULL,
  PRIMARY KEY (`SESION_ID`),
  KEY `fk_TR_MAESTRO_MATERIA_GRUPO_SESION_TR_MAESTRO_MATERIA_GRUPO1` (`MAE_MAT_GRP_ID`),
  KEY `fk_TR_MAESTRO_MATERIA_GRUPO_SESION_TR_SESION1` (`PRESESION_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tr_sesion`
--

INSERT INTO `tr_sesion` (`SESION_ID`, `PRESESION_ID`, `MAE_MAT_GRP_ID`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tr_usuario`
--

CREATE TABLE IF NOT EXISTS `tr_usuario` (
  `USUARIO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRES` varchar(45) DEFAULT NULL,
  `APELLIDOS` varchar(45) DEFAULT NULL,
  `FECHA_NAC` date DEFAULT NULL,
  `USUARIO` varchar(45) DEFAULT NULL,
  `PASSWORD` varchar(45) DEFAULT NULL,
  `PERFIL_ID` int(11) NOT NULL,
  PRIMARY KEY (`USUARIO_ID`),
  KEY `fk_USUARIO_PERFIL1` (`PERFIL_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tr_usuario`
--

INSERT INTO `tr_usuario` (`USUARIO_ID`, `NOMBRES`, `APELLIDOS`, `FECHA_NAC`, `USUARIO`, `PASSWORD`, `PERFIL_ID`) VALUES
(2, 'Pedro Miguel', 'Hdz Jasso', '2010-10-24', 'viruskimera', 'abc', 1),
(3, 'Maria del Rocio', 'Teran Reyes', '2010-10-20', 'RteranR', '*****', 2),
(4, 'Giannina', 'Cajero Rodgz', '2010-09-27', 'giannina', '***', 1),
(5, 'Amanda', NULL, '2010-09-09', 'amanda', '***', 1),
(6, 'Omar', 'Rosales', '2010-10-10', 'Omar', '***', 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tc_competencias`
--
ALTER TABLE `tc_competencias`
  ADD CONSTRAINT `fk_TC_COMPETENCIAS_CATEGORIAS` FOREIGN KEY (`CATEGORIA_ID`) REFERENCES `tc_categorias` (`CATEGORIA_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tc_reportes`
--
ALTER TABLE `tc_reportes`
  ADD CONSTRAINT `fk_TC_REPORTES_TC_PERFIL1` FOREIGN KEY (`PERFIL_ID`) REFERENCES `tc_perfil` (`PERFIL_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tr_alumnos`
--
ALTER TABLE `tr_alumnos`
  ADD CONSTRAINT `fk_TC_ALUMNOS_TC_USUARIO1` FOREIGN KEY (`USUARIO_ID`) REFERENCES `tr_usuario` (`USUARIO_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TR_ALUMNOS_TC_CARRERA1` FOREIGN KEY (`CARRERA_ID`) REFERENCES `tc_carrera` (`CARRERA_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TR_ALUMNOS_TC_GRUPO1` FOREIGN KEY (`GRUPO_ID`) REFERENCES `tc_grupo` (`GRUPO_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tr_comentario_dpa_estrategia`
--
ALTER TABLE `tr_comentario_dpa_estrategia`
  ADD CONSTRAINT `fk_TR_COMENTARIO_DPA_ESTRATEGIA_TR_ESTRATEGIAS1` FOREIGN KEY (`ESTRATEGIA_ID`) REFERENCES `tr_estrategias` (`ESTRATEGIA_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tr_criterio_competencia`
--
ALTER TABLE `tr_criterio_competencia`
  ADD CONSTRAINT `fk_TR_CRITERIO_COMPETENCIA_TC_COMPETENCIAS1` FOREIGN KEY (`COMPETENCIA_ID`) REFERENCES `tc_competencias` (`COMPETENCIA_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TR_CRITERIO_COMPETENCIA_TC_CRITERIOS1` FOREIGN KEY (`CRITERIO_ID`) REFERENCES `tc_criterios` (`CRITERIO_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tr_estrategias`
--
ALTER TABLE `tr_estrategias`
  ADD CONSTRAINT `fk_TR_ESTRATEGIAS_MAESTROS1` FOREIGN KEY (`MAESTROS_MAESTRO_ID`) REFERENCES `tr_maestros` (`MAESTRO_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tr_evaluacion_parcial`
--
ALTER TABLE `tr_evaluacion_parcial`
  ADD CONSTRAINT `tr_evaluacion_parcial_ibfk_1` FOREIGN KEY (`SESION_ID`) REFERENCES `tr_sesion` (`SESION_ID`),
  ADD CONSTRAINT `fk_TR_EVALUACION_PARCIAL_TC_EVALUACION_NIVEL1` FOREIGN KEY (`EVALUACION_NIVEL_ID`) REFERENCES `tc_evaluacion_nivel` (`EVALUACION_NIVEL_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TR_EVALUACION_PARCIAL_TC_TIPO_EVALUACION1` FOREIGN KEY (`TIPO_EVALUACION_ID`) REFERENCES `tc_tipo_evaluacion` (`TIPO_EVALUACION_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TR_EVALUACION_PARCIAL_TR_ALUMNOS1` FOREIGN KEY (`ALUMNOS_ID`) REFERENCES `tr_alumnos` (`ALUMNOS_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tr_evaluacion_parcial_acumulativa`
--
ALTER TABLE `tr_evaluacion_parcial_acumulativa`
  ADD CONSTRAINT `fk_TR_EVALUACION_PARCIAL_ACUMULATIVA_TR_EVALUACION_ACUMULATIVA1` FOREIGN KEY (`EVALUACION_ACUMULATIVA_ID`) REFERENCES `tr_evaluacion_acumulativa` (`EVALUACION_ACUMULATIVA_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TR_EVALUACION_PARCIAL_ACUMULATIVA_TR_EVALUACION_PARCIAL1` FOREIGN KEY (`EVALUACION_PARCIAL_ID`) REFERENCES `tr_evaluacion_parcial` (`EVALUACION_PARCIAL_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tr_maestro_materia_grupo`
--
ALTER TABLE `tr_maestro_materia_grupo`
  ADD CONSTRAINT `fk_TR_MAESTRO_MATERIA_GRUPO_TC_GRUPO1` FOREIGN KEY (`GRUPO_GRUPO_ID`) REFERENCES `tc_grupo` (`GRUPO_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tr_maestro_materia_grupo_ibfk_1` FOREIGN KEY (`Maestro_ID`) REFERENCES `tr_maestros` (`MAESTRO_ID`),
  ADD CONSTRAINT `tr_maestro_materia_grupo_ibfk_2` FOREIGN KEY (`Materia_ID`) REFERENCES `tc_materias` (`MATERIAS_ID`);

--
-- Constraints for table `tr_presesion`
--
ALTER TABLE `tr_presesion`
  ADD CONSTRAINT `tr_presesion_ibfk_1` FOREIGN KEY (`CRITERIO_COMPETENCIA_CRITERIO_COMPETENCIA_ID`) REFERENCES `tr_criterio_competencia` (`CRITERIO_COMPETENCIA_ID`);

--
-- Constraints for table `tr_presesion_rechazada`
--
ALTER TABLE `tr_presesion_rechazada`
  ADD CONSTRAINT `tr_presesion_rechazada_ibfk_1` FOREIGN KEY (`PRESESION_ID`) REFERENCES `tr_presesion` (`PRESESION_ID`);

--
-- Constraints for table `tr_sesion`
--
ALTER TABLE `tr_sesion`
  ADD CONSTRAINT `tr_sesion_ibfk_2` FOREIGN KEY (`PRESESION_ID`) REFERENCES `tr_presesion` (`PRESESION_ID`),
  ADD CONSTRAINT `tr_sesion_ibfk_1` FOREIGN KEY (`MAE_MAT_GRP_ID`) REFERENCES `tr_maestro_materia_grupo` (`MAESTRO_MATERIA_GRUPO_ID`);

--
-- Constraints for table `tr_usuario`
--
ALTER TABLE `tr_usuario`
  ADD CONSTRAINT `fk_USUARIO_PERFIL1` FOREIGN KEY (`PERFIL_ID`) REFERENCES `tc_perfil` (`PERFIL_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
