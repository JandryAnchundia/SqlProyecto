
# ENTREGABLE 11: BACKUP Y RESTAURACIÓN

# Las tablas que se seleccionaron para realizar el backup son las siguientes: 
# "Alumno", "Carrera", "Becas", "Pofesores", "Materia"

-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: alumnos
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES (1,'Jose Juaquin',200,'DECIMO','MASCULINO',1),(2,'Jhon Rosado',23,'DECIMO','MASCULINO',1),(3,'Jose Rolando',23,'DECIMO','MASCULINO',1),(4,'Ben Mell',23,'DECIMO','MASCULINO',1),(5,'Jose David',23,'DECIMO','MASCULINO',1),(6,'Emanuel Delgado',23,'DECIMO','MASCULINO',1),(7,'Jhon Rosado',23,'DECIMO','MASCULINO',2),(8,'Robert Rosado',23,'DECIMO','MASCULINO',1),(10,'Emanuel Delgado',23,'DECIMO','MASCULINO',1),(11,'Jhon Rosado',23,'DECIMO','MASCULINO',2),(12,'Robert Rosado',23,'DECIMO','MASCULINO',2),(13,'Orlando Rosado',23,'DECIMO','MASCULINO',2);
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `becas`
--

LOCK TABLES `becas` WRITE;
/*!40000 ALTER TABLE `becas` DISABLE KEYS */;
INSERT INTO `becas` VALUES (1,'SOCIOECONIMICA'),(2,'ALUMNO DESTACADO'),(3,'TRANSPORTE');
/*!40000 ALTER TABLE `becas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `carrera`
--

LOCK TABLES `carrera` WRITE;
/*!40000 ALTER TABLE `carrera` DISABLE KEYS */;
INSERT INTO `carrera` VALUES (1,'Ingeniería en sistemas','5 años'),(2,'Ciencias Agropecuarias','4 años'),(3,'Ingeniería en Telecomunicaciones','5 años');
/*!40000 ALTER TABLE `carrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `materia`
--

LOCK TABLES `materia` WRITE;
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
INSERT INTO `materia` VALUES (1,'BASE DE DATOS','20%'),(2,'TEORIA DE CONJUNTOS','20%'),(3,'METAFISICA','20%'),(4,'ALGEBRA LINEAL','20%'),(5,'CALCULO','20%');
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `profesor`
--

LOCK TABLES `profesor` WRITE;
/*!40000 ALTER TABLE `profesor` DISABLE KEYS */;
INSERT INTO `profesor` VALUES (1,'ELMER Anchundia','9 de Octubre','MASCULINO','096949494','DE 7AM A 1PM'),(2,'DAVID Anchundia','9 de Octubre','MASCULINO','096949494','DE 7AM A 1PM'),(3,'JOSE Anchundia','9 de Octubre','MASCULINO','096949494','DE 7AM A 1PM'),(4,'MIGUEL Anchundia','9 de Octubre','MASCULINO','096949494','DE 7AM A 1PM'),(5,'Jandry Anchundia','9 de Octubre','MASCULINO','096949494','DE 7AM A 1PM'),(6,'Jandry Anchundia','9 de Octubre','MASCULINO','096949494','DE 7AM A 1PM'),(7,'Jandry Anchundia','9 de Octubre','MASCULINO','096949494','DE 7AM A 1PM'),(8,'Jandry Anchundia','9 de Octubre','MASCULINO','096949494','DE 7AM A 1PM');
/*!40000 ALTER TABLE `profesor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-21 15:10:42
