/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.27 : Database - smppagos
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`smppagos` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `smppagos`;

/*Table structure for table `tblcliente` */

DROP TABLE IF EXISTS `tblcliente`;

CREATE TABLE `tblcliente` (
  `NoCuenta` int(4) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Direccion` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Rfc` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `Colonia` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `Comunidad` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `Municipio` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `CodigoPostal` varchar(12) DEFAULT NULL,
  `Tarifa` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `FechaRegistro` date DEFAULT NULL,
  PRIMARY KEY (`NoCuenta`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `tblcliente` */

insert  into `tblcliente`(`NoCuenta`,`Nombre`,`Direccion`,`Telefono`,`Rfc`,`Colonia`,`Comunidad`,`Municipio`,`CodigoPostal`,`Tarifa`,`FechaRegistro`) values (1,'joaquin martinez comelon','col. flavio crespo calle independencia s/n','345','345','r434r43','Los chipibos','desconocido','34234','Industrial','2010-08-11'),(2,'cliende demo','dicrecosma','2463554','2548','desconcocis','mucniso','oijasd','055','Especial','2014-03-17');

/*Table structure for table `tblorden` */

DROP TABLE IF EXISTS `tblorden`;

CREATE TABLE `tblorden` (
  `NoOrden` int(4) NOT NULL AUTO_INCREMENT,
  `Fecha` date DEFAULT NULL,
  `NoCuenta` int(4) DEFAULT NULL,
  `Tipo` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `Inspector` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `MotivoCorte` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`NoOrden`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `tblorden` */

insert  into `tblorden`(`NoOrden`,`Fecha`,`NoCuenta`,`Tipo`,`Inspector`,`MotivoCorte`) values (1,'2010-07-15',1,'reconexion','juan hernandez hernandez','a cubierto su pago'),(2,'2010-08-10',2,'RECONEXION','joe','ya pago'),(3,'2011-08-10',2,'corte','changoleon','no paga'),(4,'2011-08-10',1,'corte','utito','asda');

/*Table structure for table `tblpago` */

DROP TABLE IF EXISTS `tblpago`;

CREATE TABLE `tblpago` (
  `ClvFolio` int(4) NOT NULL AUTO_INCREMENT,
  `NoCuenta` int(4) DEFAULT NULL,
  `FechaCubierta` date DEFAULT NULL,
  `MesesTranscurridos` int(4) DEFAULT NULL,
  `FechaDePago` date DEFAULT NULL,
  `Rezago` float(4,0) DEFAULT NULL,
  `PagoCalculado` float(4,0) DEFAULT NULL,
  `Recargo` float(4,0) DEFAULT NULL,
  `Total` float(4,0) DEFAULT NULL,
  `FechaDeRegistro` date DEFAULT NULL,
  PRIMARY KEY (`ClvFolio`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `tblpago` */

insert  into `tblpago`(`ClvFolio`,`NoCuenta`,`FechaCubierta`,`MesesTranscurridos`,`FechaDePago`,`Rezago`,`PagoCalculado`,`Recargo`,`Total`,`FechaDeRegistro`) values (1,1,'2009-08-10',12,'2010-08-10',9480,0,284,9765,'2010-08-09'),(2,1,'2014-03-19',0,'2014-03-19',790,0,24,814,'2014-03-19'),(3,1,'2014-03-19',6,'2014-09-18',4740,0,142,4882,'2014-03-19'),(4,2,'2014-03-19',3,'2014-06-20',4500,0,135,4635,'2014-03-19');

/*Table structure for table `tblusuario` */

DROP TABLE IF EXISTS `tblusuario`;

CREATE TABLE `tblusuario` (
  `ClvUsuario` int(4) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `passwd` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `Archivo` bit(1) DEFAULT NULL,
  `IniciarSesion` bit(1) DEFAULT NULL,
  `CerrarSesion` bit(1) DEFAULT NULL,
  `RegistroDeUsuario` bit(1) DEFAULT NULL,
  `SalirDeAplicacion` bit(1) DEFAULT NULL,
  `Clientes` bit(1) DEFAULT NULL,
  `RegistroDeClientes` bit(1) DEFAULT NULL,
  `Pagos` bit(1) DEFAULT NULL,
  `RegistroDePagos` bit(1) DEFAULT NULL,
  `EmisionesOrdenes` bit(1) DEFAULT NULL,
  `Reportes` bit(1) DEFAULT NULL,
  `ReporteDeIngresos` bit(1) DEFAULT NULL,
  `ReporteDePagos` bit(1) DEFAULT NULL,
  `ReporteDeOrdenes` bit(1) DEFAULT NULL,
  `Herramientas` bit(1) DEFAULT NULL,
  `Calculadora` bit(1) DEFAULT NULL,
  `RespaldarBd` bit(1) DEFAULT NULL,
  `RestaurarBd` bit(1) DEFAULT NULL,
  `Ayuda` bit(1) DEFAULT NULL,
  `MostrarAyuda` bit(1) DEFAULT NULL,
  `AcercaDe` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ClvUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `tblusuario` */

insert  into `tblusuario`(`ClvUsuario`,`Usuario`,`passwd`,`Archivo`,`IniciarSesion`,`CerrarSesion`,`RegistroDeUsuario`,`SalirDeAplicacion`,`Clientes`,`RegistroDeClientes`,`Pagos`,`RegistroDePagos`,`EmisionesOrdenes`,`Reportes`,`ReporteDeIngresos`,`ReporteDePagos`,`ReporteDeOrdenes`,`Herramientas`,`Calculadora`,`RespaldarBd`,`RestaurarBd`,`Ayuda`,`MostrarAyuda`,`AcercaDe`) values (1,'solis','so','','','','','','','','','','','','','','','','','','','','',''),(2,'jose','ca','','','','','','','','','','','','','','','','','','','','',''),(3,'javier','ja','','','','','','\0','\0','\0','\0','\0','','','\0','\0','','','\0','\0','','','\0'),(4,'user','user','','','','','','\0','\0','','','','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0'),(5,'joshua','123456','\0','','\0','','\0','\0','\0','\0','','\0','\0','','\0','\0','\0','','\0','\0','\0','\0','\0');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
