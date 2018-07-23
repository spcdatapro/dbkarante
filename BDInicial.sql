CREATE DATABASE  IF NOT EXISTS `karante` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `karante`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: karante
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activo`
--

DROP TABLE IF EXISTS `activo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idempresa` int(10) unsigned DEFAULT NULL,
  `nomclienteajeno` varchar(200) DEFAULT NULL,
  `departamento` int(11) DEFAULT NULL,
  `finca` varchar(10) DEFAULT NULL,
  `folio` varchar(10) DEFAULT NULL,
  `libro` varchar(10) DEFAULT NULL,
  `horizontal` tinyint(4) DEFAULT NULL,
  `direccion_cat` varchar(250) DEFAULT NULL,
  `direccion_mun` varchar(250) DEFAULT NULL,
  `direcciondos` varchar(250) DEFAULT NULL,
  `iusi` decimal(10,2) DEFAULT NULL,
  `por_iusi` decimal(10,2) DEFAULT NULL,
  `valor_registro` decimal(10,2) DEFAULT NULL,
  `metros_registro` decimal(10,4) DEFAULT NULL,
  `valor_dicabi` decimal(10,2) DEFAULT NULL,
  `metros_dicabi` decimal(10,4) DEFAULT NULL,
  `valor_muni` decimal(10,2) DEFAULT NULL,
  `metros_muni` decimal(10,4) DEFAULT NULL,
  `solvencia_muni` varchar(250) DEFAULT NULL,
  `actualizadopor` varchar(15) DEFAULT NULL,
  `actualiza_info` datetime DEFAULT NULL,
  `observaciones` text,
  `tipo_activo` int(11) DEFAULT NULL,
  `nombre_corto` varchar(150) DEFAULT NULL,
  `nombre_largo` varchar(250) DEFAULT NULL,
  `zona` int(11) DEFAULT NULL,
  `creadopor` varchar(15) DEFAULT NULL,
  `fhcreacion` datetime DEFAULT NULL,
  `multilotes` bit(1) NOT NULL DEFAULT b'0',
  `fechacompra` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activo`
--

LOCK TABLES `activo` WRITE;
/*!40000 ALTER TABLE `activo` DISABLE KEYS */;
/*!40000 ALTER TABLE `activo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activo_adjunto`
--

DROP TABLE IF EXISTS `activo_adjunto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activo_adjunto` (
  `idadjunto` int(11) NOT NULL AUTO_INCREMENT,
  `headerid` int(11) NOT NULL,
  `nomadjunto` varchar(254) NOT NULL,
  `tipo_adjunto` int(11) NOT NULL,
  `ubicacion` varchar(254) NOT NULL,
  PRIMARY KEY (`idadjunto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activo_adjunto`
--

LOCK TABLES `activo_adjunto` WRITE;
/*!40000 ALTER TABLE `activo_adjunto` DISABLE KEYS */;
/*!40000 ALTER TABLE `activo_adjunto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria`
--

DROP TABLE IF EXISTS `auditoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) NOT NULL DEFAULT '0',
  `tabla` varchar(100) NOT NULL,
  `cambio` longtext,
  `fecha` datetime NOT NULL,
  `tipo` varchar(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FechaASC` (`fecha`) USING BTREE,
  KEY `IdUsuarioASC` (`idusuario`) USING BTREE,
  KEY `TablaASC` (`tabla`) USING BTREE,
  KEY `TipoASC` (`tipo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria`
--

LOCK TABLES `auditoria` WRITE;
/*!40000 ALTER TABLE `auditoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banco`
--

DROP TABLE IF EXISTS `banco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banco` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idfox` varchar(4) DEFAULT NULL,
  `idempresa` int(10) unsigned NOT NULL,
  `idcuentac` int(10) unsigned NOT NULL,
  `nombre` varchar(75) NOT NULL,
  `nocuenta` varchar(20) NOT NULL,
  `siglas` varchar(15) NOT NULL,
  `nomcuenta` varchar(150) NOT NULL,
  `correlativo` int(10) unsigned NOT NULL,
  `idmoneda` int(10) unsigned NOT NULL,
  `idtipoimpresion` int(10) unsigned NOT NULL DEFAULT '0',
  `debaja` bit(1) NOT NULL DEFAULT b'0',
  `ordensumario` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `nocuenta_UNIQUE` (`nocuenta`),
  KEY `NombreASC` (`nombre`),
  KEY `CuentaCASC` (`idcuentac`),
  KEY `NomCuentaASC` (`nomcuenta`),
  KEY `IdFoxASC` (`idfox`),
  KEY `OrdenSumarioASC` (`ordensumario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banco`
--

LOCK TABLES `banco` WRITE;
/*!40000 ALTER TABLE `banco` DISABLE KEYS */;
/*!40000 ALTER TABLE `banco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beneficiario`
--

DROP TABLE IF EXISTS `beneficiario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiario` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nit` varchar(50) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `concepto` varchar(200) DEFAULT NULL,
  `idmoneda` int(10) unsigned NOT NULL DEFAULT '1',
  `tipocambioprov` decimal(20,10) DEFAULT '1.0000000000',
  PRIMARY KEY (`id`),
  KEY `NitASC` (`nit`) USING BTREE,
  KEY `NombreASC` (`nombre`) USING BTREE,
  KEY `nit_UNIQUE` (`nit`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beneficiario`
--

LOCK TABLES `beneficiario` WRITE;
/*!40000 ALTER TABLE `beneficiario` DISABLE KEYS */;
/*!40000 ALTER TABLE `beneficiario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacoraactivo`
--

DROP TABLE IF EXISTS `bitacoraactivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitacoraactivo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idactivo` int(11) NOT NULL,
  `fhbitacora` datetime NOT NULL,
  `usuario` varchar(15) NOT NULL,
  `bitacora` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IdActivoASC` (`idactivo`),
  KEY `FHBitacoraASC` (`fhbitacora`),
  KEY `UsuarioASC` (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacoraactivo`
--

LOCK TABLES `bitacoraactivo` WRITE;
/*!40000 ALTER TABLE `bitacoraactivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitacoraactivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calccierre`
--

DROP TABLE IF EXISTS `calccierre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calccierre` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcuentac` int(10) unsigned NOT NULL,
  `codigo` varchar(10) NOT NULL,
  `nombrecta` varchar(75) NOT NULL,
  `tipo` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `saldo` decimal(20,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `Codigo` (`codigo`) USING BTREE,
  KEY `IdCuentaC` (`idcuentac`) USING BTREE,
  KEY `Tipo` (`tipo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calccierre`
--

LOCK TABLES `calccierre` WRITE;
/*!40000 ALTER TABLE `calccierre` DISABLE KEYS */;
/*!40000 ALTER TABLE `calccierre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cargo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcontrato` int(10) unsigned NOT NULL,
  `iddetcont` int(10) unsigned NOT NULL,
  `fgeneracion` date NOT NULL,
  `fechacobro` date NOT NULL,
  `monto` decimal(20,2) unsigned NOT NULL,
  `descuento` decimal(20,2) NOT NULL DEFAULT '0.00',
  `facturado` bit(1) DEFAULT b'0',
  `idfactura` int(10) unsigned DEFAULT '0',
  `anulado` bit(1) NOT NULL DEFAULT b'0',
  `fechaanula` date DEFAULT NULL,
  `usranula` int(10) unsigned NOT NULL DEFAULT '0',
  `idrazonanulacargo` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FCobroASC` (`fechacobro`) USING BTREE,
  KEY `FGeneraASC` (`fgeneracion`) USING BTREE,
  KEY `FacturadoASC` (`facturado`) USING BTREE,
  KEY `IdContratoASC` (`idcontrato`) USING BTREE,
  KEY `IdFacturaASC` (`idfactura`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `nombrecorto` varchar(125) NOT NULL,
  `direntrega` varchar(250) DEFAULT NULL,
  `dirplanta` varchar(250) DEFAULT NULL,
  `telpbx` varchar(24) DEFAULT NULL,
  `teldirecto` varchar(24) DEFAULT NULL,
  `telfax` varchar(24) DEFAULT NULL,
  `telcel` varchar(24) DEFAULT NULL,
  `correo` varchar(75) DEFAULT NULL,
  `idordencedula` int(10) unsigned NOT NULL DEFAULT '0',
  `regcedula` varchar(25) DEFAULT NULL,
  `dpi` varchar(200) DEFAULT NULL,
  `cargolegal` varchar(45) DEFAULT NULL,
  `nomlegal` varchar(150) DEFAULT NULL,
  `apellidolegal` varchar(150) DEFAULT NULL,
  `nomadmon` varchar(250) DEFAULT NULL,
  `mailadmon` varchar(75) DEFAULT NULL,
  `nompago` varchar(250) DEFAULT NULL,
  `mailcont` varchar(75) DEFAULT NULL,
  `idcuentac` varchar(10) NOT NULL,
  `creadopor` varchar(15) NOT NULL,
  `fhcreacion` datetime NOT NULL,
  `actualizadopor` varchar(15) DEFAULT NULL,
  `fhactualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `DPI` (`dpi`) USING BTREE,
  KEY `NombreASC` (`nombre`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compra` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idempresa` int(10) unsigned NOT NULL,
  `idproyecto` int(11) NOT NULL DEFAULT '0',
  `idreembolso` int(10) unsigned NOT NULL DEFAULT '0',
  `idtipofactura` int(10) unsigned NOT NULL DEFAULT '0',
  `idproveedor` int(10) unsigned NOT NULL DEFAULT '0',
  `proveedor` varchar(150) DEFAULT NULL,
  `nit` varchar(50) DEFAULT NULL,
  `serie` varchar(30) NOT NULL,
  `documento` bigint(20) unsigned NOT NULL,
  `fechaingreso` date NOT NULL,
  `fechaingresobck` date DEFAULT NULL,
  `mesiva` smallint(2) unsigned NOT NULL,
  `fechafactura` date NOT NULL,
  `idtipocompra` int(10) unsigned NOT NULL,
  `conceptomayor` varchar(500) DEFAULT NULL,
  `creditofiscal` bit(1) NOT NULL DEFAULT b'0',
  `extraordinario` bit(1) NOT NULL DEFAULT b'0',
  `fechapago` date DEFAULT NULL,
  `ordentrabajo` int(10) unsigned NOT NULL DEFAULT '0',
  `totfact` decimal(20,2) unsigned NOT NULL,
  `noafecto` decimal(20,2) unsigned DEFAULT '0.00',
  `subtotal` decimal(20,2) unsigned NOT NULL,
  `iva` decimal(20,2) unsigned NOT NULL,
  `retenerisr` bit(1) NOT NULL DEFAULT b'0',
  `isr` decimal(20,2) DEFAULT '0.00',
  `idtipocombustible` int(10) unsigned NOT NULL DEFAULT '0',
  `galones` decimal(20,2) NOT NULL DEFAULT '0.00',
  `idp` decimal(20,2) unsigned NOT NULL,
  `idmoneda` int(10) unsigned NOT NULL DEFAULT '1',
  `tipocambio` decimal(20,10) unsigned NOT NULL DEFAULT '1.0000000000',
  `noformisr` varchar(30) DEFAULT NULL,
  `noaccisr` varchar(30) DEFAULT NULL,
  `fecpagoformisr` date DEFAULT NULL,
  `mesisr` int(11) DEFAULT NULL,
  `anioisr` int(11) DEFAULT NULL,
  `revisada` bit(1) NOT NULL DEFAULT b'0',
  `idsubtipogasto` int(11) NOT NULL DEFAULT '0',
  `cuadrada` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ProvSerDocASC` (`idproveedor`,`serie`,`documento`) USING BTREE,
  UNIQUE KEY `NitSerieDocASC` (`nit`,`serie`,`documento`) USING BTREE,
  KEY `IdProveedorASC` (`idproveedor`),
  KEY `IdEmpresaASC` (`idempresa`),
  KEY `FechaPagoASC` (`fechapago`),
  KEY `IdReembolsoASC` (`idreembolso`) USING BTREE,
  KEY `IdTipoFacturaASC` (`idtipofactura`) USING BTREE,
  KEY `IdProyecto` (`idproyecto`),
  KEY `IdSubTipoGastoASC` (`idsubtipogasto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compraproyecto`
--

DROP TABLE IF EXISTS `compraproyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compraproyecto` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcompra` int(10) unsigned NOT NULL DEFAULT '0',
  `idproyecto` int(10) unsigned NOT NULL DEFAULT '0',
  `idcuentac` int(10) unsigned NOT NULL DEFAULT '0',
  `monto` decimal(20,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `IdCompraASC` (`idcompra`),
  KEY `IdProyectoASC` (`idproyecto`),
  KEY `IdCuentaCASC` (`idcuentac`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compraproyecto`
--

LOCK TABLES `compraproyecto` WRITE;
/*!40000 ALTER TABLE `compraproyecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `compraproyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `confgface`
--

DROP TABLE IF EXISTS `confgface`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `confgface` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gface` varchar(50) NOT NULL,
  `portaltst` varchar(100) NOT NULL,
  `urltst` varchar(100) NOT NULL,
  `wsdltst` varchar(100) NOT NULL,
  `portal` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `wsdl` varchar(100) NOT NULL,
  `requestor` varchar(200) NOT NULL,
  `country` varchar(2) NOT NULL,
  `entity` varchar(20) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `nit` varchar(30) NOT NULL,
  `idioma` varchar(2) NOT NULL DEFAULT 'es',
  `codigoestablecimiento` varchar(10) NOT NULL,
  `dispositivoelectronico` varchar(5) NOT NULL,
  `pordefecto` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `GFACEASC` (`gface`) USING BTREE,
  KEY `PorDefectoDESC` (`pordefecto`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confgface`
--

LOCK TABLES `confgface` WRITE;
/*!40000 ALTER TABLE `confgface` DISABLE KEYS */;
/*!40000 ALTER TABLE `confgface` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `confpcheck`
--

DROP TABLE IF EXISTS `confpcheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `confpcheck` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `margleft` decimal(10,3) unsigned NOT NULL DEFAULT '0.000',
  `margtop` decimal(10,3) unsigned NOT NULL DEFAULT '2.150',
  `margright` decimal(10,3) unsigned NOT NULL DEFAULT '0.000',
  `fontsize` int(10) unsigned NOT NULL DEFAULT '9',
  `fecinien` decimal(10,3) unsigned NOT NULL DEFAULT '2.200',
  `fechawsize` decimal(10,3) unsigned NOT NULL DEFAULT '9.000',
  `fechahsize` decimal(10,3) unsigned NOT NULL DEFAULT '0.700',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confpcheck`
--

LOCK TABLES `confpcheck` WRITE;
/*!40000 ALTER TABLE `confpcheck` DISABLE KEYS */;
/*!40000 ALTER TABLE `confpcheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `confpresupuestos`
--

DROP TABLE IF EXISTS `confpresupuestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `confpresupuestos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `excedente` decimal(20,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confpresupuestos`
--

LOCK TABLES `confpresupuestos` WRITE;
/*!40000 ALTER TABLE `confpresupuestos` DISABLE KEYS */;
/*!40000 ALTER TABLE `confpresupuestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `confrptcont`
--

DROP TABLE IF EXISTS `confrptcont`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `confrptcont` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idtiporptconfcont` int(10) unsigned NOT NULL,
  `empiezancon` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confrptcont`
--

LOCK TABLES `confrptcont` WRITE;
/*!40000 ALTER TABLE `confrptcont` DISABLE KEYS */;
INSERT INTO `confrptcont` VALUES (1,1,'4'),(2,2,'5,6'),(3,3,'1'),(4,4,'2'),(5,5,'3');
/*!40000 ALTER TABLE `confrptcont` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contrato`
--

DROP TABLE IF EXISTS `contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contrato` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcliente` int(10) unsigned NOT NULL,
  `nocontrato` varchar(50) NOT NULL,
  `abogado` varchar(250) DEFAULT NULL,
  `inactivo` bit(1) NOT NULL DEFAULT b'0',
  `fechainactivo` date DEFAULT NULL,
  `fechainicia` date DEFAULT NULL,
  `fechavence` date DEFAULT NULL,
  `nuevarenta` decimal(20,2) DEFAULT NULL,
  `nuevomantenimiento` decimal(20,2) DEFAULT NULL,
  `idmoneda` int(11) NOT NULL DEFAULT '1',
  `idempresa` int(11) NOT NULL DEFAULT '0',
  `idmonedadep` int(11) NOT NULL DEFAULT '0',
  `deposito` decimal(20,2) DEFAULT NULL,
  `idproyecto` int(11) NOT NULL DEFAULT '0',
  `idunidad` varchar(200) NOT NULL,
  `idunidadbck` varchar(200) DEFAULT NULL,
  `retiva` bit(1) NOT NULL DEFAULT b'0',
  `prorrogable` bit(1) NOT NULL DEFAULT b'0',
  `retisr` bit(1) NOT NULL DEFAULT b'0',
  `documento` bit(1) NOT NULL DEFAULT b'0',
  `adelantado` bit(1) NOT NULL DEFAULT b'0',
  `subarrendado` bit(1) NOT NULL DEFAULT b'0',
  `idtipocliente` int(11) NOT NULL DEFAULT '0',
  `idcuentac` varchar(10) NOT NULL,
  `observaciones` varchar(5000) DEFAULT NULL,
  `reciboprov` varchar(50) DEFAULT NULL,
  `idperiodicidad` int(10) unsigned NOT NULL DEFAULT '0',
  `cobro` bit(1) NOT NULL DEFAULT b'0',
  `idtipoipc` int(11) NOT NULL DEFAULT '0',
  `lastuser` int(11) NOT NULL DEFAULT '0',
  `plazofdel` date DEFAULT NULL,
  `plazofal` date DEFAULT NULL,
  `prescision` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `nocontrato` (`nocontrato`,`idcliente`),
  UNIQUE KEY `nocontrato_UNIQUE` (`nocontrato`,`idcliente`) USING BTREE,
  KEY `IdClienteASC` (`idcliente`) USING BTREE,
  KEY `IdEmpresaASC` (`idempresa`) USING BTREE,
  KEY `IdProyectoASC` (`idproyecto`) USING BTREE,
  KEY `LastUserASC` (`lastuser`) USING BTREE,
  KEY `IdTipoIPCASC` (`idtipoipc`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrato`
--

LOCK TABLES `contrato` WRITE;
/*!40000 ALTER TABLE `contrato` DISABLE KEYS */;
/*!40000 ALTER TABLE `contrato` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER contrato_trg_upd AFTER UPDATE ON contrato
	FOR EACH ROW
    BEGIN
		SELECT CONCAT('ID(', a.id,') - Contrato No. ', a.nocontrato, ' de ', b.nombre, ' - ', b.nombrecorto) INTO @contrato FROM contrato a INNER JOIN cliente b ON b.id = a.idcliente WHERE a.id = OLD.id;
        
		IF(OLD.idcliente <> NEW.idcliente) THEN
			SELECT CONCAT(nombre, ' - ', nombrecorto) INTO @oldCliente FROM cliente WHERE id = OLD.idcliente;
            SELECT CONCAT(nombre, ' - ', nombrecorto) INTO @newCliente FROM cliente WHERE id = NEW.idcliente;
			INSERT INTO auditoria(idusuario, cambio, fecha, tipo, tabla) 
            VALUES(NEW.lastuser, CONCAT(@contrato, ' - Cliente anterior: ', @oldCliente, ' - Nuevo cliente: ', @newCliente), NOW(), 'U', 'contrato');
        END IF;    
        
        IF(OLD.nocontrato <> NEW.nocontrato) THEN
			INSERT INTO auditoria(idusuario, cambio, fecha, tipo, tabla)
            VALUES(NEW.lastuser, CONCAT(@contrato, ' - No. Contrato anterior: ', OLD.nocontrato, ' - Nuevo No. Contrato: ', NEW.nocontrato), NOW(), 'U', 'contrato');
        END IF;
        
        IF(OLD.abogado <> NEW.abogado) THEN
			INSERT INTO auditoria(idusuario, cambio, fecha, tipo, tabla)
            VALUES(NEW.lastuser, CONCAT(@contrato, ' - Abogado anterior: ', OLD.abogado, ' - Nuevo abogado: ', NEW.abogado), NOW(), 'U', 'contrato');
        END IF;        

        IF(OLD.inactivo <> NEW.inactivo) THEN
			SET @estatusAnterior = IF(OLD.inactivo = 0, 'ACTIVO', 'INACTIVO');
            SET @estatusNuevo = IF(NEW.inactivo = 0, 'ACTIVO', 'INACTIVO');        
			INSERT INTO auditoria(idusuario, cambio, fecha, tipo, tabla)
            VALUES(NEW.lastuser, CONCAT(@contrato, ' - De estatus: ', @estatusAnterior, ' - a estatus: ', @estatusNuevo), NOW(), 'U', 'contrato');
        END IF;
        
        IF(OLD.fechainicia <> NEW.fechainicia) THEN
			INSERT INTO auditoria(idusuario, cambio, fecha, tipo, tabla)
            VALUES(NEW.lastuser, CONCAT(@contrato, ' - Fecha de inicio anterior: ', DATE_FORMAT(OLD.fechainicia, '%d/%m/%Y'), ' - Nueva fecha de inicio: ', DATE_FORMAT(NEW.fechainicia, '%d/%m/%Y')), NOW(), 'U', 'contrato');
        END IF;        
        
        IF(OLD.fechavence <> NEW.fechavence) THEN
			INSERT INTO auditoria(idusuario, cambio, fecha, tipo, tabla)
            VALUES(NEW.lastuser, CONCAT(@contrato, ' - Fecha de vencimiento anterior: ', DATE_FORMAT(OLD.fechavence, '%d/%m/%Y'), ' - Nueva fecha de vencimiento: ', DATE_FORMAT(NEW.fechavence, '%d/%m/%Y')), NOW(), 'U', 'contrato');
        END IF;   
    
		IF(OLD.idmoneda <> NEW.idmoneda) THEN
			SELECT CONCAT(nommoneda, ' (', simbolo,')') INTO @oldMoneda FROM moneda WHERE id = OLD.idmoneda;
            SELECT CONCAT(nommoneda, ' (', simbolo,')') INTO @newMoneda FROM moneda WHERE id = NEW.idmoneda;
			INSERT INTO auditoria(idusuario, cambio, fecha, tipo, tabla) 
            VALUES(NEW.lastuser, CONCAT(@contrato, ' - Moneda anterior: ', @oldMoneda, ' - Nueva moneda: ', @newMoneda), NOW(), 'U', 'contrato');
        END IF;
        
		IF(OLD.idmonedadep <> NEW.idmonedadep) THEN
			SELECT CONCAT(nommoneda, ' (', simbolo,')') INTO @oldMonedaDep FROM moneda WHERE id = OLD.idmonedadep;
            SELECT CONCAT(nommoneda, ' (', simbolo,')') INTO @newMonedaDep FROM moneda WHERE id = NEW.idmonedadep;
			INSERT INTO auditoria(idusuario, cambio, fecha, tipo, tabla) 
            VALUES(NEW.lastuser, CONCAT(@contrato, ' - Moneda de depósito anterior: ', @oldMonedaDep, ' - Nueva moneda de depósito: ', @newMonedaDep), NOW(), 'U', 'contrato');
        END IF;
        
		IF(OLD.deposito <> NEW.deposito) THEN
			INSERT INTO auditoria(idusuario, cambio, fecha, tipo, tabla) 
            VALUES(NEW.lastuser, CONCAT(@contrato, ' - Monto de depósito anterior: ', OLD.deposito, ' - Nuevo monto de depósito: ', New.deposito), NOW(), 'U', 'contrato');
        END IF;
        
		IF(OLD.idcuentac <> NEW.idcuentac) THEN
			INSERT INTO auditoria(idusuario, cambio, fecha, tipo, tabla) 
            VALUES(NEW.lastuser, CONCAT(@contrato, ' - Cuenta contable anterior: ', OLD.idcuentac, ' - Nueva cuenta contable: ', NEW.idcuentac), NOW(), 'U', 'contrato');
        END IF;
        
		IF(OLD.retiva <> NEW.retiva) THEN
			SET @retivaAnterior = IF(OLD.retiva = 0, 'NO RETENER', 'RETENER');
            SET @retivaNuevo = IF(NEW.retiva = 0, 'NO RETENER', 'RETENER');
			INSERT INTO auditoria(idusuario, cambio, fecha, tipo, tabla) 
            VALUES(NEW.lastuser, CONCAT(@contrato, ' - De ', @retivaAnterior, ' I.V.A. - a ', @retivaNuevo, ' I.V.A.'), NOW(), 'U', 'contrato');
        END IF;
        
		IF(OLD.retisr <> NEW.retisr) THEN
			SET @retisrAnterior = IF(OLD.retisr = 0, 'NO RETENER', 'RETENER');
            SET @retisrNuevo = IF(NEW.retisr = 0, 'NO RETENER', 'RETENER');
			INSERT INTO auditoria(idusuario, cambio, fecha, tipo, tabla) 
            VALUES(NEW.lastuser, CONCAT(@contrato, ' - De ', @retisrAnterior, ' I.S.R. - a ', @retisrNuevo, ' I.S.R.'), NOW(), 'U', 'contrato');
        END IF;        
        
		IF(OLD.reciboprov <> NEW.reciboprov) THEN
			INSERT INTO auditoria(idusuario, cambio, fecha, tipo, tabla) 
            VALUES(NEW.lastuser, CONCAT(@contrato, ' - Recibo provisional anterior: ', OLD.reciboprov, ' - Nuevo recibo provisional: ', NEW.reciboprov), NOW(), 'U', 'contrato');
        END IF;
        
		IF(OLD.idperiodicidad <> NEW.idperiodicidad) THEN
			SELECT descperiodicidad INTO @oldPeriodicidad FROM periodicidad WHERE id = OLD.idperiodicidad;
            SELECT descperiodicidad INTO @newPeriodicidad FROM periodicidad WHERE id = NEW.idperiodicidad;            
			INSERT INTO auditoria(idusuario, cambio, fecha, tipo, tabla) 
            VALUES(NEW.lastuser, CONCAT(@contrato, ' - Periodicidad anterior: ', @oldPeriodicidad, ' - Nueva periodicidad: ', @newPeriodicidad), NOW(), 'U', 'contrato');
        END IF;
        
		IF(OLD.documento <> NEW.documento) THEN
			SET @docAnterior = IF(OLD.documento = 0, 'RECIBO', 'FACTURA');
            SET @docNuevo = IF(NEW.documento = 0, 'RECIBO', 'FACTURA');
			INSERT INTO auditoria(idusuario, cambio, fecha, tipo, tabla) 
            VALUES(NEW.lastuser, CONCAT(@contrato, ' - De ', @docAnterior, ' - a ', @docNuevo), NOW(), 'U', 'contrato');
        END IF;
        
		IF(OLD.subarrendado <> NEW.subarrendado) THEN
			SET @subarrAnterior = IF(OLD.subarrendado = 0, 'NO SUBARRENDADO', 'SUBARRENDADO');
            SET @subarrNuevo = IF(NEW.subarrendado = 0, 'NO SUBARRENDADO', 'SUBARRENDADO');
			INSERT INTO auditoria(idusuario, cambio, fecha, tipo, tabla) 
            VALUES(NEW.lastuser, CONCAT(@contrato, ' - De ', @subarrAnterior, ' - a ', @subarrNuevo), NOW(), 'U', 'contrato');
        END IF;        
        
		IF(OLD.idtipocliente <> NEW.idtipocliente) THEN
			SELECT desctipocliente INTO @oldTipoCliente FROM tipocliente WHERE id = OLD.idtipocliente;
            SELECT desctipocliente INTO @newTipoCliente FROM tipocliente WHERE id = NEW.idtipocliente;            
			INSERT INTO auditoria(idusuario, cambio, fecha, tipo, tabla) 
            VALUES(NEW.lastuser, CONCAT(@contrato, ' - Tipo de cliente anterior: ', @oldTipoCliente, ' - Nuevo tipo de cliente: ', @newTipoCliente), NOW(), 'U', 'contrato');
        END IF;
        
		IF(OLD.idempresa <> NEW.idempresa) THEN
			SELECT nomempresa INTO @oldEmpresa FROM empresa WHERE id = OLD.idempresa;
            SELECT nomempresa INTO @newEmpresa FROM empresa WHERE id = NEW.idempresa;            
			INSERT INTO auditoria(idusuario, cambio, fecha, tipo, tabla) 
            VALUES(NEW.lastuser, CONCAT(@contrato, ' - Empresa anterior: ', @oldEmpresa, ' - Nueva empresa: ', @newEmpresa), NOW(), 'U', 'contrato');
        END IF;        

		IF(OLD.idproyecto <> NEW.idproyecto) THEN
			SELECT nomproyecto INTO @oldProyecto FROM proyecto WHERE id = OLD.idproyecto;
            SELECT nomproyecto INTO @newProyecto FROM proyecto WHERE id = NEW.idproyecto;            
			INSERT INTO auditoria(idusuario, cambio, fecha, tipo, tabla) 
            VALUES(NEW.lastuser, CONCAT(@contrato, ' - Ubicación anterior: ', @oldProyecto, ' - Nueva ubicación: ', @newProyecto), NOW(), 'U', 'contrato');
        END IF;
        
		IF(OLD.idunidad <> NEW.idunidad) THEN
			SELECT GROUP_CONCAT(DISTINCT nombre ORDER BY nombre SEPARATOR ', ') INTO @oldUnidad FROM unidad WHERE FIND_IN_SET(id, OLD.idunidad);
            SELECT GROUP_CONCAT(DISTINCT nombre ORDER BY nombre SEPARATOR ', ') INTO @newUnidad FROM unidad WHERE FIND_IN_SET(id, NEW.idunidad);
			INSERT INTO auditoria(idusuario, cambio, fecha, tipo, tabla) 
            VALUES(NEW.lastuser, CONCAT(@contrato, ' - Locales anteriores: ', @oldUnidad, ' - Nuevos locales: ', @newUnidad), NOW(), 'U', 'contrato');
        END IF;
        
		IF(OLD.observaciones <> NEW.observaciones) THEN
			INSERT INTO auditoria(idusuario, cambio, fecha, tipo, tabla) 
            VALUES(NEW.lastuser, CONCAT(@contrato, ' - Observaciones anteriores: ', OLD.observaciones, ' - Nuevas observaciones: ', NEW.observaciones), NOW(), 'U', 'contrato');
        END IF;        
    
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `contratoadjunto`
--

DROP TABLE IF EXISTS `contratoadjunto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contratoadjunto` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcontrato` int(10) unsigned NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `ubicacion` varchar(254) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IdContratoASC` (`idcontrato`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contratoadjunto`
--

LOCK TABLES `contratoadjunto` WRITE;
/*!40000 ALTER TABLE `contratoadjunto` DISABLE KEYS */;
/*!40000 ALTER TABLE `contratoadjunto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `correscontrato`
--

DROP TABLE IF EXISTS `correscontrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `correscontrato` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcontrato` int(11) NOT NULL DEFAULT '0',
  `idcliente` int(11) NOT NULL DEFAULT '0',
  `idcontratofox` varchar(10) DEFAULT NULL,
  `idclientefox` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IdContratoFoxASC` (`idcontratofox`),
  KEY `IdContratoASC` (`idcontrato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correscontrato`
--

LOCK TABLES `correscontrato` WRITE;
/*!40000 ALTER TABLE `correscontrato` DISABLE KEYS */;
/*!40000 ALTER TABLE `correscontrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentac`
--

DROP TABLE IF EXISTS `cuentac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuentac` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idempresa` int(10) unsigned NOT NULL,
  `codigo` varchar(10) NOT NULL,
  `nombrecta` varchar(75) NOT NULL,
  `tipocuenta` bit(1) NOT NULL DEFAULT b'0',
  `precedencia` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Codigo_UNIQUE` (`codigo`,`idempresa`),
  KEY `TipoASC` (`tipocuenta`),
  KEY `IdEmpresaASC` (`idempresa`),
  KEY `PrecedenciaDESC` (`precedencia`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentac`
--

LOCK TABLES `cuentac` WRITE;
/*!40000 ALTER TABLE `cuentac` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuentac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cxcagosto`
--

DROP TABLE IF EXISTS `cxcagosto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cxcagosto` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idempresa` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `anio` int(11) DEFAULT NULL,
  `serie` varchar(30) DEFAULT NULL,
  `numero` varchar(200) DEFAULT NULL,
  `numeroanterior` varchar(200) DEFAULT NULL,
  `valor` decimal(20,2) DEFAULT NULL,
  `isr` decimal(20,2) DEFAULT NULL,
  `iva` decimal(20,2) DEFAULT NULL,
  `saldo` decimal(20,2) DEFAULT NULL,
  `apagar` decimal(20,2) DEFAULT NULL,
  `abonado` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IdEmpSerieFac` (`idempresa`,`serie`,`numeroanterior`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cxcagosto`
--

LOCK TABLES `cxcagosto` WRITE;
/*!40000 ALTER TABLE `cxcagosto` DISABLE KEYS */;
/*!40000 ALTER TABLE `cxcagosto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_activo_proyecto`
--

DROP TABLE IF EXISTS `detalle_activo_proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_activo_proyecto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idproyecto` int(11) NOT NULL,
  `idactivo` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_activo_proyecto`
--

LOCK TABLES `detalle_activo_proyecto` WRITE;
/*!40000 ALTER TABLE `detalle_activo_proyecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_activo_proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_docs_proyecto`
--

DROP TABLE IF EXISTS `detalle_docs_proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_docs_proyecto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idproyecto` int(11) NOT NULL,
  `tipo_documento` int(11) DEFAULT NULL,
  `entidad` varchar(250) DEFAULT NULL,
  `documento` varchar(25) DEFAULT NULL,
  `vigencia_del` date DEFAULT NULL,
  `vegencia_al` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_docs_proyecto`
--

LOCK TABLES `detalle_docs_proyecto` WRITE;
/*!40000 ALTER TABLE `detalle_docs_proyecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_docs_proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallecontable`
--

DROP TABLE IF EXISTS `detallecontable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallecontable` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `origen` smallint(5) unsigned NOT NULL,
  `idorigen` int(10) unsigned NOT NULL,
  `idcuenta` int(11) NOT NULL,
  `debe` decimal(10,2) NOT NULL,
  `haber` decimal(10,2) NOT NULL,
  `conceptomayor` varchar(500) NOT NULL,
  `activada` bit(1) NOT NULL DEFAULT b'1',
  `anulado` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`,`origen`),
  KEY `OrigenIdOrigenASC` (`origen`,`idorigen`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallecontable`
--

LOCK TABLES `detallecontable` WRITE;
/*!40000 ALTER TABLE `detallecontable` DISABLE KEYS */;
/*!40000 ALTER TABLE `detallecontable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detclientefact`
--

DROP TABLE IF EXISTS `detclientefact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detclientefact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcliente` int(10) unsigned NOT NULL DEFAULT '0',
  `facturara` varchar(250) NOT NULL,
  `emailfactura` varchar(50) NOT NULL,
  `direccion` varchar(250) NOT NULL,
  `nit` varchar(25) NOT NULL,
  `fdel` date DEFAULT NULL,
  `fal` date DEFAULT NULL,
  `retisr` bit(1) NOT NULL DEFAULT b'0',
  `retiva` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `FacturarAASC` (`facturara`) USING BTREE,
  KEY `IdClienteASC` (`idcliente`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detclientefact`
--

LOCK TABLES `detclientefact` WRITE;
/*!40000 ALTER TABLE `detclientefact` DISABLE KEYS */;
/*!40000 ALTER TABLE `detclientefact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detclientefiadores`
--

DROP TABLE IF EXISTS `detclientefiadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detclientefiadores` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcontrato` int(10) unsigned NOT NULL DEFAULT '0',
  `idcliente` int(11) NOT NULL DEFAULT '0',
  `nombre` varchar(250) NOT NULL,
  `empresa` varchar(150) NOT NULL,
  `direccion` varchar(250) NOT NULL,
  `telefono` varchar(24) NOT NULL,
  `identificacion` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `NombreASC` (`nombre`) USING BTREE,
  KEY `IdClienteASC` (`idcliente`) USING BTREE,
  KEY `IdContratoASC` (`idcontrato`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detclientefiadores`
--

LOCK TABLES `detclientefiadores` WRITE;
/*!40000 ALTER TABLE `detclientefiadores` DISABLE KEYS */;
/*!40000 ALTER TABLE `detclientefiadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detclienteserv`
--

DROP TABLE IF EXISTS `detclienteserv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detclienteserv` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `iddetclientefact` int(10) unsigned NOT NULL DEFAULT '0',
  `idservicioventa` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IdDetClienteFactASC` (`iddetclientefact`),
  KEY `IdServVentaASC` (`idservicioventa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detclienteserv`
--

LOCK TABLES `detclienteserv` WRITE;
/*!40000 ALTER TABLE `detclienteserv` DISABLE KEYS */;
/*!40000 ALTER TABLE `detclienteserv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detcobroventa`
--

DROP TABLE IF EXISTS `detcobroventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detcobroventa` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idfox` varchar(15) DEFAULT NULL,
  `headeridfox` varchar(15) DEFAULT NULL,
  `idfactura` int(10) unsigned NOT NULL DEFAULT '0',
  `idrecibocli` int(10) unsigned NOT NULL DEFAULT '0',
  `monto` decimal(20,2) unsigned NOT NULL DEFAULT '0.00',
  `interes` decimal(20,2) unsigned NOT NULL DEFAULT '0.00',
  `esrecprov` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `IdFacturaASC` (`idfactura`) USING BTREE,
  KEY `IdRecCliASC` (`idrecibocli`) USING BTREE,
  KEY `IdFoxASC` (`idfox`),
  KEY `HeaderIdFoxASC` (`headeridfox`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detcobroventa`
--

LOCK TABLES `detcobroventa` WRITE;
/*!40000 ALTER TABLE `detcobroventa` DISABLE KEYS */;
/*!40000 ALTER TABLE `detcobroventa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detcontempresa`
--

DROP TABLE IF EXISTS `detcontempresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detcontempresa` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idempresa` int(10) unsigned NOT NULL,
  `idtipoconfig` int(10) unsigned NOT NULL,
  `idcuentac` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IdEmpresaIdConfASC` (`idempresa`,`idtipoconfig`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detcontempresa`
--

LOCK TABLES `detcontempresa` WRITE;
/*!40000 ALTER TABLE `detcontempresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `detcontempresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detcontprov`
--

DROP TABLE IF EXISTS `detcontprov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detcontprov` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idproveedor` int(10) unsigned NOT NULL,
  `idcuentac` int(10) unsigned NOT NULL,
  `idcxp` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `IdProvIdCuentaCASC` (`idproveedor`,`idcuentac`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detcontprov`
--

LOCK TABLES `detcontprov` WRITE;
/*!40000 ALTER TABLE `detcontprov` DISABLE KEYS */;
/*!40000 ALTER TABLE `detcontprov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detcontsubtipogasto`
--

DROP TABLE IF EXISTS `detcontsubtipogasto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detcontsubtipogasto` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idsubtipogasto` int(10) unsigned NOT NULL DEFAULT '0',
  `idempresa` int(10) unsigned NOT NULL DEFAULT '0',
  `idcuentac` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SubTipoEmpCtaCASC` (`idsubtipogasto`,`idempresa`,`idcuentac`) USING BTREE,
  KEY `IdSubTipoGastoASC` (`idsubtipogasto`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detcontsubtipogasto`
--

LOCK TABLES `detcontsubtipogasto` WRITE;
/*!40000 ALTER TABLE `detcontsubtipogasto` DISABLE KEYS */;
/*!40000 ALTER TABLE `detcontsubtipogasto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detfact`
--

DROP TABLE IF EXISTS `detfact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detfact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idfactura` int(10) unsigned NOT NULL,
  `cantidad` int(11) NOT NULL DEFAULT '1',
  `idtiposervicio` int(11) NOT NULL DEFAULT '0',
  `mes` int(11) NOT NULL DEFAULT '0',
  `anio` int(11) NOT NULL DEFAULT '0',
  `descripcion` varchar(200) NOT NULL,
  `preciounitario` decimal(20,7) NOT NULL DEFAULT '0.0000000',
  `preciotot` decimal(20,7) NOT NULL DEFAULT '0.0000000',
  `montoconiva` decimal(20,2) DEFAULT '0.00',
  `montoflatconiva` decimal(20,2) DEFAULT '0.00',
  `descuento` decimal(20,7) NOT NULL DEFAULT '0.0000000',
  PRIMARY KEY (`id`),
  KEY `IdFacturaASC` (`idfactura`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detfact`
--

LOCK TABLES `detfact` WRITE;
/*!40000 ALTER TABLE `detfact` DISABLE KEYS */;
/*!40000 ALTER TABLE `detfact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detfactcontrato`
--

DROP TABLE IF EXISTS `detfactcontrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detfactcontrato` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcontrato` int(10) unsigned NOT NULL,
  `noperiodo` int(10) unsigned NOT NULL DEFAULT '0',
  `fdel` date NOT NULL,
  `fal` date NOT NULL,
  `monto` decimal(10,2) unsigned NOT NULL,
  `idtipoventa` int(10) unsigned NOT NULL,
  `idmoneda` int(10) unsigned NOT NULL,
  `cobro` bit(1) NOT NULL DEFAULT b'0',
  `idperiodicidad` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IdContratoASC` (`idcontrato`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detfactcontrato`
--

LOCK TABLES `detfactcontrato` WRITE;
/*!40000 ALTER TABLE `detfactcontrato` DISABLE KEYS */;
/*!40000 ALTER TABLE `detfactcontrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detpagocompra`
--

DROP TABLE IF EXISTS `detpagocompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detpagocompra` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcompra` int(10) unsigned NOT NULL,
  `idtranban` int(10) unsigned NOT NULL,
  `monto` decimal(20,2) DEFAULT NULL,
  `esrecprov` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `IdCompraASC` (`idcompra`),
  KEY `IdTranBancASC` (`idtranban`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detpagocompra`
--

LOCK TABLES `detpagocompra` WRITE;
/*!40000 ALTER TABLE `detpagocompra` DISABLE KEYS */;
/*!40000 ALTER TABLE `detpagocompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detpagopresup`
--

DROP TABLE IF EXISTS `detpagopresup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detpagopresup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `iddetpresup` int(10) unsigned NOT NULL,
  `nopago` int(10) unsigned NOT NULL DEFAULT '0',
  `porcentaje` decimal(20,4) unsigned NOT NULL DEFAULT '0.0000',
  `monto` decimal(20,2) unsigned NOT NULL DEFAULT '0.00',
  `notas` varchar(1000) DEFAULT NULL,
  `notificado` bit(1) NOT NULL DEFAULT b'0',
  `fhnotificado` datetime DEFAULT NULL,
  `idusrnotifica` int(11) NOT NULL DEFAULT '0',
  `pagado` bit(1) NOT NULL DEFAULT b'0',
  `origen` int(10) unsigned NOT NULL DEFAULT '0',
  `idorigen` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detpagopresup`
--

LOCK TABLES `detpagopresup` WRITE;
/*!40000 ALTER TABLE `detpagopresup` DISABLE KEYS */;
/*!40000 ALTER TABLE `detpagopresup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detpresupuesto`
--

DROP TABLE IF EXISTS `detpresupuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detpresupuesto` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpresupuesto` int(10) unsigned NOT NULL DEFAULT '0',
  `correlativo` int(10) unsigned NOT NULL DEFAULT '0',
  `idproveedor` int(10) unsigned NOT NULL DEFAULT '0',
  `origenprov` int(11) NOT NULL DEFAULT '0',
  `idsubtipogasto` int(10) unsigned NOT NULL DEFAULT '0',
  `coniva` bit(1) NOT NULL DEFAULT b'0',
  `monto` decimal(20,2) NOT NULL DEFAULT '0.00',
  `tipocambio` decimal(20,4) NOT NULL DEFAULT '1.0000',
  `excedente` decimal(20,2) unsigned NOT NULL DEFAULT '0.00',
  `notas` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IdPresupuestoCorrelativoASC` (`idpresupuesto`,`correlativo`) USING BTREE,
  KEY `IdProveedorASC` (`idproveedor`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detpresupuesto`
--

LOCK TABLES `detpresupuesto` WRITE;
/*!40000 ALTER TABLE `detpresupuesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `detpresupuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detrecprov`
--

DROP TABLE IF EXISTS `detrecprov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detrecprov` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idrecprov` int(10) unsigned NOT NULL DEFAULT '0',
  `origen` int(10) unsigned NOT NULL DEFAULT '0',
  `idorigen` int(10) unsigned NOT NULL DEFAULT '0',
  `arebajar` decimal(20,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `IdOrigenASC` (`idorigen`) USING BTREE,
  KEY `IdRecProvASC` (`idrecprov`) USING BTREE,
  KEY `OrigenASC` (`origen`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detrecprov`
--

LOCK TABLES `detrecprov` WRITE;
/*!40000 ALTER TABLE `detrecprov` DISABLE KEYS */;
/*!40000 ALTER TABLE `detrecprov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detunidacont`
--

DROP TABLE IF EXISTS `detunidacont`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detunidacont` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idunidad` int(10) unsigned NOT NULL,
  `contador` varchar(150) NOT NULL,
  `alta` varchar(45) DEFAULT NULL,
  `baja` varchar(45) DEFAULT NULL,
  `mcubbase` decimal(20,2) DEFAULT NULL,
  `parafactura` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IdUnidad` (`idunidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detunidacont`
--

LOCK TABLES `detunidacont` WRITE;
/*!40000 ALTER TABLE `detunidacont` DISABLE KEYS */;
/*!40000 ALTER TABLE `detunidacont` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detunidadservicio`
--

DROP TABLE IF EXISTS `detunidadservicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detunidadservicio` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idunidadservicio` int(10) unsigned NOT NULL DEFAULT '0',
  `idproyecto` int(11) NOT NULL DEFAULT '0',
  `idunidad` int(11) NOT NULL DEFAULT '0',
  `idserviciobasico` int(10) unsigned NOT NULL DEFAULT '0',
  `fechacambio` datetime NOT NULL,
  `usrcambio` int(11) NOT NULL DEFAULT '0',
  `cantbase` decimal(20,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detunidadservicio`
--

LOCK TABLES `detunidadservicio` WRITE;
/*!40000 ALTER TABLE `detunidadservicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `detunidadservicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directa`
--

DROP TABLE IF EXISTS `directa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directa` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idempresa` int(10) unsigned NOT NULL,
  `fecha` date NOT NULL,
  `concepto` varchar(500) DEFAULT NULL,
  `tipocierre` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FechaASC` (`fecha`),
  KEY `IdEmpresaASC` (`idempresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directa`
--

LOCK TABLES `directa` WRITE;
/*!40000 ALTER TABLE `directa` DISABLE KEYS */;
/*!40000 ALTER TABLE `directa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctotranban`
--

DROP TABLE IF EXISTS `doctotranban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctotranban` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idtranban` int(10) unsigned NOT NULL,
  `idtipodoc` int(10) unsigned NOT NULL,
  `fechadoc` date NOT NULL,
  `serie` varchar(15) DEFAULT NULL,
  `documento` int(10) unsigned NOT NULL,
  `monto` decimal(20,2) unsigned NOT NULL,
  `iddocto` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IdTranBan` (`idtranban`),
  KEY `FechaDocDESC` (`fechadoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctotranban`
--

LOCK TABLES `doctotranban` WRITE;
/*!40000 ALTER TABLE `doctotranban` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctotranban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idfox` varchar(3) DEFAULT NULL,
  `idcafcfox` varchar(5) DEFAULT NULL,
  `idmoneda` int(10) unsigned NOT NULL,
  `nomempresa` varchar(100) NOT NULL,
  `abreviatura` varchar(3) DEFAULT NULL,
  `nit` varchar(25) DEFAULT NULL,
  `dectc` int(10) unsigned NOT NULL DEFAULT '2',
  `propia` bit(1) NOT NULL DEFAULT b'1',
  `retisr` bit(1) NOT NULL DEFAULT b'0',
  `sifactura` bit(1) NOT NULL DEFAULT b'0',
  `congface` bit(1) NOT NULL DEFAULT b'0',
  `seriefact` varchar(50) DEFAULT NULL,
  `correlafact` bigint(20) NOT NULL DEFAULT '0',
  `fechavencefact` date DEFAULT NULL,
  `ultimocorrelativofact` bigint(20) NOT NULL DEFAULT '0',
  `espersonal` bit(1) NOT NULL DEFAULT b'0',
  `ordensumario` int(10) unsigned NOT NULL DEFAULT '0',
  `direccion` varchar(100) DEFAULT NULL,
  `formatofactura` varchar(50) DEFAULT NULL,
  `numero_patronal` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IdFoxASC` (`idfox`),
  KEY `NombreASC` (`nomempresa`),
  KEY `PropiaDESC` (`propia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estatuspresupuesto`
--

DROP TABLE IF EXISTS `estatuspresupuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estatuspresupuesto` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descestatuspresup` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estatuspresupuesto`
--

LOCK TABLES `estatuspresupuesto` WRITE;
/*!40000 ALTER TABLE `estatuspresupuesto` DISABLE KEYS */;
INSERT INTO `estatuspresupuesto` VALUES (1,'Creado'),(2,'Enviado a aprobación'),(3,'Aprobado'),(4,'Denegado'),(5,'Terminado'),(6,'Anulado');
/*!40000 ALTER TABLE `estatuspresupuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idfox` varchar(10) DEFAULT NULL,
  `idempresa` int(11) NOT NULL DEFAULT '0',
  `idtipofactura` int(10) unsigned NOT NULL DEFAULT '0',
  `idproyecto` int(11) NOT NULL DEFAULT '0',
  `idcontrato` int(10) unsigned NOT NULL DEFAULT '0',
  `idcliente` int(10) unsigned NOT NULL,
  `nit` varchar(25) DEFAULT NULL,
  `nombre` varchar(250) DEFAULT NULL,
  `direccion` varchar(250) DEFAULT NULL,
  `serie` varchar(30) DEFAULT NULL,
  `numero` varchar(200) DEFAULT NULL,
  `fechaingreso` date DEFAULT NULL,
  `mesiva` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fecha` date NOT NULL,
  `idtipoventa` int(10) unsigned NOT NULL,
  `conceptomayor` varchar(500) DEFAULT NULL,
  `iva` decimal(20,7) unsigned NOT NULL DEFAULT '0.0000000',
  `total` decimal(20,7) unsigned NOT NULL DEFAULT '0.0000000',
  `noafecto` decimal(20,7) unsigned NOT NULL DEFAULT '0.0000000',
  `subtotal` decimal(20,7) unsigned NOT NULL DEFAULT '0.0000000',
  `retisr` decimal(20,7) NOT NULL DEFAULT '0.0000000',
  `retiva` decimal(20,7) NOT NULL DEFAULT '0.0000000',
  `totalletras` varchar(1000) DEFAULT NULL,
  `montocargoiva` decimal(20,2) DEFAULT '0.00',
  `montocargoflat` decimal(20,2) DEFAULT '0.00',
  `totdescuento` decimal(20,7) NOT NULL DEFAULT '0.0000000',
  `noautorizacion` varchar(30) DEFAULT NULL,
  `firmaelectronica` longtext,
  `firmaelectronicaalt` longtext,
  `respuestagface` longtext,
  `idmoneda` int(10) unsigned NOT NULL,
  `tipocambio` decimal(20,10) unsigned NOT NULL,
  `pagada` bit(1) NOT NULL DEFAULT b'0',
  `fechapago` date DEFAULT NULL,
  `anulada` bit(1) NOT NULL DEFAULT b'0',
  `idrazonanulafactura` int(11) NOT NULL DEFAULT '0',
  `fechaanula` date DEFAULT NULL,
  `esinsertada` bit(1) NOT NULL DEFAULT b'0',
  `noformisr` varchar(30) DEFAULT NULL,
  `noaccisr` varchar(30) DEFAULT NULL,
  `fecpagoformisr` date DEFAULT NULL,
  `mesisr` int(11) DEFAULT NULL,
  `anioisr` int(11) DEFAULT NULL,
  `retenerisr` bit(1) NOT NULL DEFAULT b'0',
  `reteneriva` bit(1) NOT NULL DEFAULT b'0',
  `mesafecta` int(11) NOT NULL DEFAULT '0',
  `anioafecta` int(11) DEFAULT '0',
  `pendiente` int(1) NOT NULL DEFAULT '0',
  `subtotalbck` decimal(20,7) DEFAULT '0.0000000',
  `totalbck` decimal(20,7) DEFAULT '0.0000000',
  `noformiva` varchar(30) DEFAULT NULL,
  `noacciva` varchar(30) DEFAULT NULL,
  `fechapagoformiva` date DEFAULT NULL,
  `mespagoiva` int(11) DEFAULT NULL,
  `aniopagoiva` int(11) DEFAULT NULL,
  `esparqueo` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `EmpresaSerieNumeroASC` (`idempresa`,`serie`,`numero`) USING BTREE,
  KEY `IdClienteASC` (`idcliente`) USING BTREE,
  KEY `IdContratoASC` (`idcontrato`) USING BTREE,
  KEY `PagadaASC` (`pagada`) USING BTREE,
  KEY `FechaAnulaASC` (`fechaanula`) USING BTREE,
  KEY `IdEmpresaASC` (`idempresa`) USING BTREE,
  KEY `IdFoxASC` (`idfox`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorito`
--

DROP TABLE IF EXISTS `favorito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorito` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idusuario` int(10) unsigned NOT NULL DEFAULT '0',
  `iditemmenu` int(10) unsigned NOT NULL DEFAULT '0',
  `posicion` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UsrItemPosASC` (`idusuario`,`iditemmenu`,`posicion`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorito`
--

LOCK TABLES `favorito` WRITE;
/*!40000 ALTER TABLE `favorito` DISABLE KEYS */;
INSERT INTO `favorito` VALUES (4,1,1,6),(3,1,3,5),(11,1,8,4),(2,1,9,2),(1,1,51,1),(8,1,66,3);
/*!40000 ALTER TABLE `favorito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gastocontable`
--

DROP TABLE IF EXISTS `gastocontable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gastocontable` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descgastoconta` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `descripcion` (`descgastoconta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gastocontable`
--

LOCK TABLES `gastocontable` WRITE;
/*!40000 ALTER TABLE `gastocontable` DISABLE KEYS */;
/*!40000 ALTER TABLE `gastocontable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `isr`
--

DROP TABLE IF EXISTS `isr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isr` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `de` decimal(20,2) unsigned NOT NULL,
  `a` decimal(20,2) unsigned NOT NULL,
  `porcentaje` decimal(20,2) NOT NULL,
  `importefijo` decimal(20,2) unsigned NOT NULL,
  `enexcedente` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `DeASC` (`de`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `isr`
--

LOCK TABLES `isr` WRITE;
/*!40000 ALTER TABLE `isr` DISABLE KEYS */;
INSERT INTO `isr` VALUES (1,2500.00,30000.00,5.00,0.00,'\0'),(2,30000.01,999999999999999999.99,7.00,1500.00,'');
/*!40000 ALTER TABLE `isr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemmenu`
--

DROP TABLE IF EXISTS `itemmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemmenu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmenu` int(10) unsigned NOT NULL,
  `descitemmenu` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IdMenuASC` (`idmenu`),
  KEY `DescItemMenuASC` (`descitemmenu`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemmenu`
--

LOCK TABLES `itemmenu` WRITE;
/*!40000 ALTER TABLE `itemmenu` DISABLE KEYS */;
INSERT INTO `itemmenu` VALUES (1,1,'Perfil','perfil'),(2,2,'Cuentas contables','ccont'),(3,3,'Menu','mantmenu'),(4,3,'Empresas','empresa'),(5,3,'Monedas','mantmoneda'),(6,4,'Bancos','mntbco'),(7,4,'Proveedores','mntprov'),(8,7,'Activos','mntactivo'),(9,7,'Proyectos','mntproyecto'),(10,7,'Unidades','mntunidad'),(11,5,'Transacción bancaria','tranbanc'),(12,5,'Conciliación bancaria','tranconcilia'),(13,5,'Facturas de compra','tranfactcompra'),(14,2,'Períodos contables','mntperiodocont'),(26,5,'Generacion de Pagos','tranpagos'),(27,9,'Catalogo de activos','rptactivos'),(28,9,'Listado de activos','rptlstactivos'),(29,10,'Activo','tipoactivo'),(30,10,'Adjuntos','tipoadjunto'),(31,10,'Compra','tipocompra'),(32,10,'Gasto','tipogasto'),(33,10,'Gasto Contable','tipogastocont'),(34,10,'Proyecto','tipoproyecto'),(35,10,'Transacción Bancaría','tipomovtranban'),(36,11,'Catálogo de bancos','rptcatbco'),(37,11,'Correlatividad de documentos','rptcorrch'),(38,11,'Detalle contable de documentos','rptdetcontdocs'),(39,11,'Documentos en circulacón','rptdocscircula'),(40,11,'Estado de cuenta','rptestadocta'),(41,12,'Catálogo de proveedores','rptcatprov'),(42,12,'Detalle contable de facturas','rptdetcontfact'),(43,12,'Facturas por proveedor','rptfactprov'),(44,12,'Historial de pagos','rpthistpagos'),(45,9,'Pagos de IUSI','rptpagoiusi'),(46,3,'Municipios','mntmunicipio'),(47,10,'Documento de proyecto','mnttipodocproy'),(48,9,'Catálogo de proyectos','rptlstproy'),(49,9,'Vencimiento de documentos','rptdocsvence'),(50,7,'Servicios propios y de terceros','mntserviciobasico'),(51,7,'Clientes','mntcliente'),(52,10,'Local','tipolocal'),(53,10,'Servicio básico','tiposervicio'),(54,3,'Razones de anulación','mntrazonanula'),(55,4,'Beneficiarios','mntbene'),(56,5,'Reembolsos','tranreembolso'),(57,14,'Balance de saldos','rptbalsal'),(58,14,'Balance general','rptbalgen'),(59,14,'Estado de resultados','rptestres'),(60,14,'Libro de compras','rptlibcomp'),(61,14,'Diario Mayor General','rptlibmay'),(62,13,'Partidas directas','trandirectas'),(63,10,'Servicios de venta','mnttsventa'),(64,15,'Facturación','tranfactura'),(66,9,'Auditoria','rptauditoria'),(67,16,'A. Órdenes de trabajo','mntpresupuesto'),(68,16,'B. Aprobación','tranaprobpresup'),(69,16,'C. Seguimiento','transegpresup'),(70,10,'Incrementos','mnttipoipc'),(71,9,'Incrementos y decrementos','rptincdec'),(72,9,'Vencimientos','rptvencimientos'),(73,4,'Tipo de compra','mnttipocompra'),(74,11,'Conciliación bancaria','rptconciliabco'),(75,5,'Recibos','tranrecprov'),(76,5,'Retención de I.S.R.','tranisr'),(77,15,'Recibos de clientes','tranreccli'),(78,14,'Libro de diario','rptlibdia'),(79,14,'Libro de ventas','rptlibventa'),(80,9,'Ficha de proyecto','rptfichaproy'),(81,9,'Detalle de contrato','rptdetcontrato'),(82,9,'Ficha de cliente','rptfichacliente'),(83,9,'Alquileres','rptalquileres'),(84,15,'Captura de lectura de contadores de agua','lecturaservicio'),(85,13,'GFACE','gface'),(86,13,'Asignación de cuenta a sub-tipo de gasto','asigctasubtipogasto'),(87,11,'Sumario','rptsumario'),(88,9,'Reporte de agua','rptagua'),(89,15,'Facturas generadas','tranventa'),(90,12,'Antigüedad de saldos','rptantiprov'),(91,12,'Estado de Cuenta','rptecuentaprov'),(92,12,'Saldos','rptsaldoprov'),(93,17,'Antigüedad de saldos','rptanticli'),(94,17,'Estado de Cuenta','rptecuentacli'),(95,17,'Saldo','rptsaldocli'),(96,9,'Servicios básicos','rptservicios'),(97,11,'Resumen de cheques','rptresumencheques'),(98,11,'Geracion de archivo de cheques','rptchqaprob'),(99,12,'Control de caja chica','rptctrlcc'),(100,12,'Buscar facturas','rptbuscafactcomp'),(101,9,'Ingresos/Egresos por proyecto','rptingegrproy'),(102,14,'Pago de ISR','rptlibisr'),(104,15,'Reporte de Facturas Emitidas','rptfactsemitidas'),(105,18,'Empleados','pln/mnt/empleado'),(107,14,'Pago de IVA','rptivaventas'),(108,9,'Agua Delta Bárcenas','rptarbolsrvc'),(110,18,'Proyección Sueldo','pln/mnt/prosueldo'),(111,18,'Puesto','pln/mnt/puesto'),(112,19,'Preparación','pln/trans/preparar'),(113,19,'Generar','pln/trans/generar'),(114,20,'Planilla','pln/rep/planilla'),(115,20,'Recibo','pln/rep/recibo'),(116,17,'Recibos','rptreccli'),(117,21,'Formularios de retenciones','formsretventa'),(118,9,'Retenedores de I.S.R./I.V.A.','rptretenedores'),(119,14,'Asiste libros','rptasistelibros'),(120,14,'Documentos descuadrados','rptdescuadres'),(121,14,'Detalle Contable de Ventas','rptdetcontventas'),(122,14,'Integración de cuentas','rptintegractacont'),(123,19,'Prestamo','pln/trans/prestamo'),(124,20,'Archivo para BI','rptarchivobi'),(125,7,'Ordenamiento tipo proyecto proyecto','mnttipoproyectoorden'),(126,20,'Reporte de IGSS','pln/rep/igss'),(127,20,'Reporte de ISR','pln/rep/isr');
/*!40000 ALTER TABLE `itemmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecturaservicio`
--

DROP TABLE IF EXISTS `lecturaservicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lecturaservicio` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idserviciobasico` int(10) unsigned NOT NULL DEFAULT '0',
  `idusuario` int(10) unsigned NOT NULL DEFAULT '0',
  `idproyecto` int(10) unsigned NOT NULL DEFAULT '0',
  `idunidad` int(10) unsigned NOT NULL DEFAULT '0',
  `mes` int(10) unsigned NOT NULL DEFAULT '0',
  `anio` int(10) unsigned NOT NULL DEFAULT '0',
  `fechacorte` date DEFAULT NULL,
  `lectura` decimal(20,2) unsigned DEFAULT NULL,
  `fechaingreso` datetime DEFAULT NULL,
  `estatus` int(10) unsigned NOT NULL DEFAULT '1',
  `fechaenvio` datetime DEFAULT NULL,
  `usrenvio` int(10) unsigned NOT NULL DEFAULT '0',
  `facturado` bit(1) NOT NULL DEFAULT b'0',
  `idfactura` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `IdServicioMesAnioASC` (`idserviciobasico`,`mes`,`anio`) USING BTREE,
  KEY `AnioASC` (`anio`) USING BTREE,
  KEY `MesASC` (`mes`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecturaservicio`
--

LOCK TABLES `lecturaservicio` WRITE;
/*!40000 ALTER TABLE `lecturaservicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `lecturaservicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmodulo` int(10) unsigned NOT NULL,
  `descmenu` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IdModuloASC` (`idmodulo`),
  KEY `DescMenuASC` (`descmenu`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,1,'Usuarios'),(2,2,'Mantenimiento'),(3,1,'Sistema'),(4,3,'Mantenimientos'),(5,3,'Transacciones'),(6,3,'Reportes'),(7,4,'Mantenimientos'),(9,4,'Informes'),(10,4,'Tipo de'),(11,3,'Reportes de bancos'),(12,3,'Reportes de proveedores'),(13,2,'Transacciones'),(14,2,'Reportes'),(15,4,'Transacciones'),(16,4,'Órdenes de trabajo'),(17,5,'Reportes de clientes'),(18,6,'Mantenimiento'),(19,6,'Transacción'),(20,6,'Reporte'),(21,5,'Transacciones');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mes`
--

DROP TABLE IF EXISTS `mes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(15) NOT NULL,
  `nombrecorto` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mes`
--

LOCK TABLES `mes` WRITE;
/*!40000 ALTER TABLE `mes` DISABLE KEYS */;
INSERT INTO `mes` VALUES (1,'Enero','Ene'),(2,'Febrero','Feb'),(3,'Marzo','Mar'),(4,'Abril','Abr'),(5,'Mayo','May'),(6,'Junio','Jun'),(7,'Julio','Jul'),(8,'Agosto','Ago'),(9,'Septiembre','Sep'),(10,'Octubre','Oct'),(11,'Noviembre','Nov'),(12,'Diciembre','Dic');
/*!40000 ALTER TABLE `mes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulo`
--

DROP TABLE IF EXISTS `modulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modulo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descmodulo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `DescModuloASC` (`descmodulo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulo`
--

LOCK TABLES `modulo` WRITE;
/*!40000 ALTER TABLE `modulo` DISABLE KEYS */;
INSERT INTO `modulo` VALUES (1,'Administración'),(3,'Bancos y Proveedores'),(5,'Clientes'),(2,'Contabilidad'),(4,'Gerencial'),(6,'Planilla');
/*!40000 ALTER TABLE `modulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moneda`
--

DROP TABLE IF EXISTS `moneda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moneda` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nommoneda` varchar(50) NOT NULL,
  `simbolo` varchar(3) NOT NULL,
  `tipocambio` decimal(20,10) NOT NULL DEFAULT '1.0000000000',
  `codgface` varchar(3) NOT NULL DEFAULT 'NAC',
  `eslocal` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `NomMoneda` (`nommoneda`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moneda`
--

LOCK TABLES `moneda` WRITE;
/*!40000 ALTER TABLE `moneda` DISABLE KEYS */;
INSERT INTO `moneda` VALUES (1,'Quetzal','Q',1.0000000000,'NAC',''),(2,'Dolar','$',7.4763200000,'NAC','\0'),(3,'Euro','EUR',1.0000000000,'NAC','\0');
/*!40000 ALTER TABLE `moneda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipio`
--

DROP TABLE IF EXISTS `municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `municipio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `depto` int(11) DEFAULT NULL,
  `nomdepto` varchar(50) DEFAULT NULL,
  `habilitado` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `HabilitadoDESC` (`habilitado`),
  KEY `NomDeptoASC` (`nomdepto`),
  KEY `NombreASC` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=333 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipio`
--

LOCK TABLES `municipio` WRITE;
/*!40000 ALTER TABLE `municipio` DISABLE KEYS */;
INSERT INTO `municipio` VALUES (1,'0101','Guatemala',1,'Guatemala',''),(2,'0102','Santa Catarina Pinula',1,'Guatemala',''),(3,'0103','San José Pinula',1,'Guatemala',''),(4,'0104','San José del Golfo',1,'Guatemala','\0'),(5,'0105','Palencia',1,'Guatemala','\0'),(6,'0106','Chinautla',1,'Guatemala','\0'),(7,'0107','San Pedro Ayampuc',1,'Guatemala','\0'),(8,'0108','Mixco',1,'Guatemala','\0'),(9,'0109','San Pedro Sacatepequez',1,'Guatemala',''),(10,'0110','San Juan Sacatepequez',1,'Guatemala',''),(11,'0111','San Raymundo',1,'Guatemala','\0'),(12,'0112','Chuarrancho',1,'Guatemala','\0'),(13,'0113','Fraijanes',1,'Guatemala','\0'),(14,'0114','Amatitlán',1,'Guatemala','\0'),(15,'0115','Villa Nueva',1,'Guatemala',''),(16,'0116','Villa Canales',1,'Guatemala',''),(17,'0117','Petapa',1,'Guatemala','\0'),(18,'0201','Guastatoya',2,'El Progreso','\0'),(19,'0202','Morazán',2,'El Progreso','\0'),(20,'0203','San Agustín Acasaguastlán',2,'El Progreso','\0'),(21,'0204','San Cristóbal Acasaguastlán',2,'El Progreso','\0'),(22,'0205','El Jícaro',2,'El Progreso','\0'),(23,'0206','Sansare',2,'El Progreso','\0'),(24,'0207','Sanarate',2,'El Progreso','\0'),(25,'0208','San Antonio La Paz',2,'El Progreso','\0'),(26,'0301','Antigua Guatemala',3,'Sacatepeques',''),(27,'0302','Jocotenango',3,'Sacatepeques','\0'),(28,'0303','Pastores',3,'Sacatepeques','\0'),(29,'0304','Sumpango',3,'Sacatepeques','\0'),(30,'0305','Santo Domingo Xenacoj',3,'Sacatepeques','\0'),(31,'0306','Santiago Sacatepéquez',3,'Sacatepeques','\0'),(32,'0307','San Bartolomé Milpas Altas',3,'Sacatepeques','\0'),(33,'0308','San Lucas Sacatepéquez',3,'Sacatepeques','\0'),(34,'0309','Santa Lucía Milpas Altas',3,'Sacatepeques','\0'),(35,'0310','Magdalena Milpas Altas',3,'Sacatepeques','\0'),(36,'0311','Santa María de Jesús',3,'Sacatepeques','\0'),(37,'0312','Ciudad Vieja',3,'Sacatepeques','\0'),(38,'0313','San Miguel Dueñas',3,'Sacatepeques','\0'),(39,'0314','Alotenango',3,'Sacatepeques','\0'),(40,'0315','San Antonio Aguas Calientes',3,'Sacatepeques','\0'),(41,'0316','Santa Catarina Barahona',3,'Sacatepeques','\0'),(42,'0401','Chimaltenango',4,'Chimaltenango','\0'),(43,'0402','San José Poaquil',4,'Chimaltenango','\0'),(44,'0403','San Martín Jilotepeque',4,'Chimaltenango','\0'),(45,'0404','Copmalapa',4,'Chimaltenango','\0'),(46,'0405','Santa Apolonia',4,'Chimaltenango','\0'),(47,'0406','Tecpán Guatemala',4,'Chimaltenango','\0'),(48,'0407','Patzún',4,'Chimaltenango','\0'),(49,'0408','Pochuta',4,'Chimaltenango','\0'),(50,'0409','Patzicía',4,'Chimaltenango','\0'),(51,'0410','Santa Cruz Balanyá',4,'Chimaltenango','\0'),(52,'0411','Acatenango',4,'Chimaltenango','\0'),(53,'0412','Yepocapa',4,'Chimaltenango','\0'),(54,'0413','San Andrés Itzapa',4,'Chimaltenango','\0'),(55,'0414','Parramos',4,'Chimaltenango','\0'),(56,'0415','Zaragoza',4,'Chimaltenango','\0'),(57,'0416','El Tejar',4,'Chimaltenango','\0'),(58,'0501','Escuintla',5,'Escuintla','\0'),(59,'0502','Santa Lucía Cotzumalguapa',5,'Escuintla','\0'),(60,'0503','La Democracia',5,'Escuintla','\0'),(61,'0504','Siquinalá',5,'Escuintla','\0'),(62,'0505','Masagua',5,'Escuintla','\0'),(63,'0506','Tiquisate',5,'Escuintla','\0'),(64,'0507','La Gomera',5,'Escuintla','\0'),(65,'0508','Guanagazapa',5,'Escuintla','\0'),(66,'0509','San José',5,'Escuintla',''),(67,'0510','Iztapa',5,'Escuintla','\0'),(68,'0511','Palín',5,'Escuintla','\0'),(69,'0512','San Vicente Pacaya',5,'Escuintla','\0'),(70,'0513','Nueva Concepción',5,'Escuintla','\0'),(71,'0601','Cuilapa',6,'Santa Rosa','\0'),(72,'0602','Barberena',6,'Santa Rosa','\0'),(73,'0603','Santa Rosa de Lima',6,'Santa Rosa','\0'),(74,'0604','Casillas',6,'Santa Rosa','\0'),(75,'0605','San Rafael Las Flores',6,'Santa Rosa','\0'),(76,'0606','Oratorio',6,'Santa Rosa','\0'),(77,'0607','San Juan Tecuaco',6,'Santa Rosa','\0'),(78,'0608','Chiquimulilla',6,'Santa Rosa','\0'),(79,'0609','Taxisco',6,'Santa Rosa','\0'),(80,'0610','Santa María Ixhuatán',6,'Santa Rosa','\0'),(81,'0611','Guazacapán',6,'Santa Rosa','\0'),(82,'0612','Santa Cruz Naranjo',6,'Santa Rosa','\0'),(83,'0613','Pueblo Nuevo Viñas',6,'Santa Rosa','\0'),(84,'0614','Nueva Santa Rosa',6,'Santa Rosa','\0'),(85,'0701','Sololá',7,'Solola','\0'),(86,'0702','San José Chacayá',7,'Solola','\0'),(87,'0703','Santa María Visitación',7,'Solola','\0'),(88,'0704','Santa Lucía Utatlán',7,'Solola','\0'),(89,'0705','Nahualá',7,'Solola','\0'),(90,'0706','Santa Catarina Ixtahuacán',7,'Solola','\0'),(91,'0707','Santa Clara La Laguna',7,'Solola','\0'),(92,'0708','Concepción',7,'Solola','\0'),(93,'0709','San Andrés Semetabaj',7,'Solola','\0'),(94,'0710','Panajachel',7,'Solola','\0'),(95,'0711','Santa Catarina Palopó',7,'Solola','\0'),(96,'0712','San Antonio Palopó',7,'Solola','\0'),(97,'0713','San Lucas Tolimán',7,'Solola','\0'),(98,'0714','Santa Cruz La Laguna',7,'Solola','\0'),(99,'0715','San Pablo La Laguna',7,'Solola','\0'),(100,'0716','San Marcos La Laguna',7,'Solola','\0'),(101,'0717','San Juan La Laguna',7,'Solola','\0'),(102,'0718','San Pedro La Laguna',7,'Solola','\0'),(103,'0719','Santiago Atitlán',7,'Solola','\0'),(104,'0801','Totonicapán',8,'Totonicapan','\0'),(105,'0802','San Cristóbal Totonicapán',8,'Totonicapan','\0'),(106,'0803','San Francisco El Alto',8,'Totonicapan','\0'),(107,'0804','San Andrés Xecul',8,'Totonicapan','\0'),(108,'0805','Momostenango',8,'Totonicapan','\0'),(109,'0806','Santa María Chiquimula',8,'Totonicapan','\0'),(110,'0807','Santa Lucía La Reforma',8,'Totonicapan','\0'),(111,'0808','San Bartolo',8,'Totonicapan','\0'),(112,'0901','Quetzaltenango',9,'Quetzaltenango','\0'),(113,'0902','Salcajá',9,'Quetzaltenango','\0'),(114,'0903','Olintepeque',9,'Quetzaltenango','\0'),(115,'0904','San Carlos Sija',9,'Quetzaltenango','\0'),(116,'0905','Sibilia',9,'Quetzaltenango','\0'),(117,'0906','Cabricán',9,'Quetzaltenango','\0'),(118,'0907','Cajolá',9,'Quetzaltenango','\0'),(119,'0908','San Miguel Sigüilá',9,'Quetzaltenango','\0'),(120,'0909','Ostuncalco',9,'Quetzaltenango','\0'),(121,'0910','San Mateo',9,'Quetzaltenango','\0'),(122,'0911','Concepción Chiquirichapa',9,'Quetzaltenango','\0'),(123,'0912','San Martín Sacatepéquez',9,'Quetzaltenango','\0'),(124,'0913','Almolonga',9,'Quetzaltenango','\0'),(125,'0914','Cantel',9,'Quetzaltenango','\0'),(126,'0915','Huitán',9,'Quetzaltenango','\0'),(127,'0916','Zunil',9,'Quetzaltenango','\0'),(128,'0917','Colomba',9,'Quetzaltenango','\0'),(129,'0918','San Francisco La Unión',9,'Quetzaltenango','\0'),(130,'0919','El Palmar',9,'Quetzaltenango','\0'),(131,'0920','Coatepeque',9,'Quetzaltenango','\0'),(132,'0921','Génova',9,'Quetzaltenango','\0'),(133,'0922','Flores Costa Cuca',9,'Quetzaltenango','\0'),(134,'0923','La Esperanza',9,'Quetzaltenango','\0'),(135,'0924','Palestina de los Altos',9,'Quetzaltenango','\0'),(136,'1001','Mazatenango',10,'Suchitepeques','\0'),(137,'1002','Cuyotenango',10,'Suchitepeques','\0'),(138,'1003','San Francisco Zapotitlán',10,'Suchitepeques','\0'),(139,'1004','San Bernardino',10,'Suchitepeques','\0'),(140,'1005','San José El Idolo',10,'Suchitepeques','\0'),(141,'1006','Santo Domingo Suchitepéquez',10,'Suchitepeques','\0'),(142,'1007','San Lorenzo',10,'Suchitepeques','\0'),(143,'1008','Samayac',10,'Suchitepeques','\0'),(144,'1009','San Pablo Jocopilas',10,'Suchitepeques','\0'),(145,'1010','San Antonio Suchitepéquez',10,'Suchitepeques','\0'),(146,'1011','San Miguel Panán',10,'Suchitepeques','\0'),(147,'1012','San Gabriel',10,'Suchitepeques','\0'),(148,'1013','Chicacao',10,'Suchitepeques','\0'),(149,'1014','Patulul',10,'Suchitepeques','\0'),(150,'1015','Santa Bárbara',10,'Suchitepeques','\0'),(151,'1016','San Juan Bautista',10,'Suchitepeques','\0'),(152,'1017','Santo Tomás La Unión',10,'Suchitepeques','\0'),(153,'1018','Zunilito',10,'Suchitepeques','\0'),(154,'1019','Pueblo Nuevo',10,'Suchitepeques','\0'),(155,'1020','Río Bravo',10,'Suchitepeques','\0'),(156,'1101','Retalhuleu',11,'Retalhuleu','\0'),(157,'1102','San Sebastián',11,'Retalhuleu','\0'),(158,'1103','Santa Cruz Muluá',11,'Retalhuleu','\0'),(159,'1104','San Martín Zapotitlán',11,'Retalhuleu','\0'),(160,'1105','San Felipe',11,'Retalhuleu','\0'),(161,'1106','San Andrés Villa Seca',11,'Retalhuleu','\0'),(162,'1107','Champerico',11,'Retalhuleu','\0'),(163,'1108','Nuevo San Carlos',11,'Retalhuleu','\0'),(164,'1109','El Asintal',11,'Retalhuleu','\0'),(165,'1201','San Marcos',12,'San Marcos','\0'),(166,'1202','San Pedro Sacatepéquez',12,'San Marcos','\0'),(167,'1203','San Antonio Sacatepéquez',12,'San Marcos','\0'),(168,'1204','Comitancillo',12,'San Marcos','\0'),(169,'1205','San Miguel Ixtahuacán',12,'San Marcos','\0'),(170,'1206','Concepción Tutuapa',12,'San Marcos','\0'),(171,'1207','Tacapá',12,'San Marcos','\0'),(172,'1208','Sibinal',12,'San Marcos','\0'),(173,'1209','Tajumulco',12,'San Marcos','\0'),(174,'1210','Tejutla',12,'San Marcos','\0'),(175,'1211','San Rafael Pie de la Cuesta',12,'San Marcos','\0'),(176,'1212','Nuevo Progreso',12,'San Marcos','\0'),(177,'1213','El Tumbador',12,'San Marcos','\0'),(178,'1214','El Rodeo',12,'San Marcos','\0'),(179,'1215','Malacatán',12,'San Marcos','\0'),(180,'1216','Catarina',12,'San Marcos','\0'),(181,'1217','Ayutla',12,'San Marcos','\0'),(182,'1218','Ocós',12,'San Marcos','\0'),(183,'1219','San Pablo',12,'San Marcos','\0'),(184,'1220','El Quetzal',12,'San Marcos','\0'),(185,'1221','La Reforma',12,'San Marcos','\0'),(186,'1222','Pajapita',12,'San Marcos','\0'),(187,'1223','Ixchiguán',12,'San Marcos','\0'),(188,'1224','San José Ojetenam',12,'San Marcos','\0'),(189,'1225','San Cristóbal Cucho',12,'San Marcos','\0'),(190,'1226','Sipacapa',12,'San Marcos','\0'),(191,'1227','Esuipulas Palo Gordo',12,'San Marcos','\0'),(192,'1228','Río Blanco',12,'San Marcos','\0'),(193,'1229','San Lorenzo',12,'San Marcos','\0'),(194,'1301','Huehuetenango',13,'Huehuetenango','\0'),(195,'1302','Chiantla',13,'Huehuetenango','\0'),(196,'1303','Malacatancito',13,'Huehuetenango','\0'),(197,'1304','Cuilco',13,'Huehuetenango','\0'),(198,'1305','Nentón',13,'Huehuetenango','\0'),(199,'1306','San Pedro Necta',13,'Huehuetenango','\0'),(200,'1307','Jacaltenango',13,'Huehuetenango','\0'),(201,'1308','Soloma',13,'Huehuetenango','\0'),(202,'1309','Ixtahuacán',13,'Huehuetenango','\0'),(203,'1310','Santa Bárbara',13,'Huehuetenango','\0'),(204,'1311','La Libertad',13,'Huehuetenango','\0'),(205,'1312','La Democracia',13,'Huehuetenango','\0'),(206,'1313','San Miguel Acatán',13,'Huehuetenango','\0'),(207,'1314','San Rafael La Independencia',13,'Huehuetenango','\0'),(208,'1315','Todos Santos Cuchumatán',13,'Huehuetenango','\0'),(209,'1316','San Juan Atitán',13,'Huehuetenango','\0'),(210,'1317','Santa Eulalia',13,'Huehuetenango','\0'),(211,'1318','San Mateo Ixtatán',13,'Huehuetenango','\0'),(212,'1319','Colotenango',13,'Huehuetenango','\0'),(213,'1320','San Sebastián Huehuetenango',13,'Huehuetenango','\0'),(214,'1321','Tectitán',13,'Huehuetenango','\0'),(215,'1322','Concepción',13,'Huehuetenango','\0'),(216,'1323','San Juan Ixcoy',13,'Huehuetenango','\0'),(217,'1324','San Antonio Huista',13,'Huehuetenango','\0'),(218,'1325','San Sebastián Coatán',13,'Huehuetenango','\0'),(219,'1326','Barillas',13,'Huehuetenango','\0'),(220,'1327','Aguacatán',13,'Huehuetenango','\0'),(221,'1328','San Rafael Petzal',13,'Huehuetenango','\0'),(222,'1329','San Gaspar Ixchil',13,'Huehuetenango','\0'),(223,'1330','Santiago Chimaltenango',13,'Huehuetenango','\0'),(224,'1331','Santa Ana Huista',13,'Huehuetenango','\0'),(225,'1332','Unión Cantinil',13,'Huehuetenango','\0'),(226,'1401','Santa Cruz del Quiché',14,'El Quiche','\0'),(227,'1402','Chiché',14,'El Quiche','\0'),(228,'1403','Chinique',14,'El Quiche','\0'),(229,'1404','Zacualpa',14,'El Quiche','\0'),(230,'1405','Chajul',14,'El Quiche','\0'),(231,'1406','Chichicastenango',14,'El Quiche','\0'),(232,'1407','Patzité',14,'El Quiche','\0'),(233,'1408','San Antonio Ilotenango',14,'El Quiche','\0'),(234,'1409','San Pedro jocopilas',14,'El Quiche','\0'),(235,'1410','Cunén',14,'El Quiche','\0'),(236,'1411','San Juan Cotzal',14,'El Quiche','\0'),(237,'1412','Joyabaj',14,'El Quiche','\0'),(238,'1413','Nebaj',14,'El Quiche','\0'),(239,'1414','San Andrés Sajcabajá',14,'El Quiche','\0'),(240,'1415','Uspantán',14,'El Quiche','\0'),(241,'1416','Sacapulas',14,'El Quiche','\0'),(242,'1417','San Bartolomé Jocotenango',14,'El Quiche','\0'),(243,'1418','Canillá',14,'El Quiche','\0'),(244,'1419','Chicamán',14,'El Quiche','\0'),(245,'1420','Ixcán',14,'El Quiche','\0'),(246,'1421','Pachalum',14,'El Quiche','\0'),(247,'1501','Salamá',15,'Baja Verapaz','\0'),(248,'1502','San Miguel Chicaj',15,'Baja Verapaz','\0'),(249,'1503','Rabinal',15,'Baja Verapaz','\0'),(250,'1504','Cubulco',15,'Baja Verapaz','\0'),(251,'1505','Granados',15,'Baja Verapaz','\0'),(252,'1506','El Chol',15,'Baja Verapaz','\0'),(253,'1507','San Jerónimo',15,'Baja Verapaz','\0'),(254,'1508','Purulhá',15,'Baja Verapaz','\0'),(255,'1601','Cobán',16,'Alta Verapaz','\0'),(256,'1602','Santa Cruz Verapáz',16,'Alta Verapaz','\0'),(257,'1603','San Cristóbal Verapáz',16,'Alta Verapaz','\0'),(258,'1604','Tactic',16,'Alta Verapaz','\0'),(259,'1605','Tamahú',16,'Alta Verapaz','\0'),(260,'1606','Tucurú',16,'Alta Verapaz','\0'),(261,'1607','Panzós',16,'Alta Verapaz','\0'),(262,'1608','Senahú',16,'Alta Verapaz','\0'),(263,'1609','San Pedro Carchá',16,'Alta Verapaz','\0'),(264,'1610','San Juan Chamelco',16,'Alta Verapaz','\0'),(265,'1611','Lanquín',16,'Alta Verapaz','\0'),(266,'1612','Cahabón',16,'Alta Verapaz','\0'),(267,'1613','Chisec',16,'Alta Verapaz','\0'),(268,'1614','Chahal',16,'Alta Verapaz','\0'),(269,'1615','Fray Bartolomé de las Casas',16,'Alta Verapaz','\0'),(270,'1616','Santa Catalina La Tinta',16,'Alta Verapaz','\0'),(271,'1701','Flores',17,'El Peten','\0'),(272,'1702','San José',17,'El Peten','\0'),(273,'1703','San Benito',17,'El Peten','\0'),(274,'1704','San Andrés',17,'El Peten','\0'),(275,'1705','La Libertad',17,'El Peten','\0'),(276,'1706','San Francisco',17,'El Peten','\0'),(277,'1707','Santa Ana',17,'El Peten','\0'),(278,'1708','Dolores',17,'El Peten','\0'),(279,'1709','San Luis',17,'El Peten','\0'),(280,'1710','Sayaxché',17,'El Peten','\0'),(281,'1711','Melchor de Mencos',17,'El Peten','\0'),(282,'1712','Poptún',17,'El Peten','\0'),(283,'1801','Puerto Barrios',18,'Izabal','\0'),(284,'1802','Livingston',18,'Izabal','\0'),(285,'1803','El Estor',18,'Izabal','\0'),(286,'1804','Morales',18,'Izabal','\0'),(287,'1805','Los Amates',18,'Izabal','\0'),(288,'1901','Zacapa',19,'Zacapa','\0'),(289,'1902','Estanzuela',19,'Zacapa','\0'),(290,'1903','Río Hondo',19,'Zacapa','\0'),(291,'1904','Gualán',19,'Zacapa','\0'),(292,'1905','Teculután',19,'Zacapa','\0'),(293,'1906','Usumatlán',19,'Zacapa','\0'),(294,'1907','Cabañas',19,'Zacapa','\0'),(295,'1908','San Diego',19,'Zacapa','\0'),(296,'1909','La Unión',19,'Zacapa','\0'),(297,'1910','Huité',19,'Zacapa','\0'),(298,'2001','Chiquimula',20,'Chiquimula','\0'),(299,'2002','San José La arada',20,'Chiquimula','\0'),(300,'2003','San Juan Ermita',20,'Chiquimula','\0'),(301,'2004','Jocotán',20,'Chiquimula','\0'),(302,'2005','Camotán',20,'Chiquimula','\0'),(303,'2006','Olopa',20,'Chiquimula','\0'),(304,'2007','Esquipulas',20,'Chiquimula','\0'),(305,'2008','Concepción Las Minas',20,'Chiquimula','\0'),(306,'2009','Quetzaltepeque',20,'Chiquimula','\0'),(307,'2010','San Jacinto',20,'Chiquimula','\0'),(308,'2011','Ipala',20,'Chiquimula','\0'),(309,'21','Jalapa 2101 Jalapa',21,'Jalapa','\0'),(310,'2102','San Pedro Pinula',21,'Jalapa','\0'),(311,'2103','San Luis Jilotepeque',21,'Jalapa','\0'),(312,'2104','San Manuel Chaparrón',21,'Jalapa','\0'),(313,'2105','San Carlos Alzatate',21,'Jalapa','\0'),(314,'2106','Monjas',21,'Jalapa','\0'),(315,'2107','Mataquescuintla',21,'Jalapa','\0'),(316,'2201','Jutiapa',22,'Jutiapa','\0'),(317,'2202','El Progreso',22,'Jutiapa','\0'),(318,'2203','Santa Catarina Mita',22,'Jutiapa','\0'),(319,'2204','Agua Blanca',22,'Jutiapa','\0'),(320,'2205','Asunción Mita',22,'Jutiapa','\0'),(321,'2206','Yupiltepeque',22,'Jutiapa','\0'),(322,'2207','Atescatempa',22,'Jutiapa','\0'),(323,'2208','Jeréz',22,'Jutiapa','\0'),(324,'2209','El Adelanto',22,'Jutiapa','\0'),(325,'2210','Zapotitlán',22,'Jutiapa','\0'),(326,'2211','Comapa',22,'Jutiapa','\0'),(327,'2212','Jalpatagua',22,'Jutiapa','\0'),(328,'2213','Conguaco',22,'Jutiapa','\0'),(329,'2214','Moyuta',22,'Jutiapa','\0'),(330,'2215','Pasaco',22,'Jutiapa','\0'),(331,'2216','San José Acatempa',22,'Jutiapa','\0'),(332,'2217','Quezada',22,'Jutiapa','\0');
/*!40000 ALTER TABLE `municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ncdcliente`
--

DROP TABLE IF EXISTS `ncdcliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ncdcliente` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipo` bit(1) NOT NULL DEFAULT b'0',
  `idempresa` int(10) unsigned NOT NULL DEFAULT '0',
  `serie` varchar(30) NOT NULL,
  `numero` varchar(200) NOT NULL,
  `fecha` date NOT NULL,
  `idtipo` int(10) unsigned NOT NULL DEFAULT '0',
  `idcliente` int(10) unsigned NOT NULL DEFAULT '0',
  `idmoneda` int(10) unsigned NOT NULL DEFAULT '0',
  `tipocambio` decimal(20,10) NOT NULL DEFAULT '1.0000000000',
  `total` decimal(20,2) unsigned NOT NULL DEFAULT '0.00',
  `iva` decimal(20,2) unsigned NOT NULL DEFAULT '0.00',
  `conceptomayor` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ncdcliente`
--

LOCK TABLES `ncdcliente` WRITE;
/*!40000 ALTER TABLE `ncdcliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `ncdcliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ncdproveedor`
--

DROP TABLE IF EXISTS `ncdproveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ncdproveedor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipo` bit(1) NOT NULL DEFAULT b'0',
  `idempresa` int(10) unsigned NOT NULL DEFAULT '0',
  `serie` varchar(30) NOT NULL,
  `numero` varchar(200) NOT NULL,
  `fecha` date NOT NULL,
  `idtipo` int(10) unsigned NOT NULL DEFAULT '0',
  `idproveedor` int(10) unsigned NOT NULL DEFAULT '0',
  `idmoneda` int(10) unsigned NOT NULL DEFAULT '0',
  `tipocambio` decimal(20,10) NOT NULL DEFAULT '1.0000000000',
  `total` decimal(20,2) unsigned NOT NULL DEFAULT '0.00',
  `iva` decimal(20,2) unsigned NOT NULL DEFAULT '0.00',
  `conceptomayor` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ncdproveedor`
--

LOCK TABLES `ncdproveedor` WRITE;
/*!40000 ALTER TABLE `ncdproveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `ncdproveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notapresupuesto`
--

DROP TABLE IF EXISTS `notapresupuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notapresupuesto` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `iddetpresupuesto` int(10) unsigned NOT NULL DEFAULT '0',
  `fechahora` datetime NOT NULL,
  `nota` varchar(5000) NOT NULL,
  `usuario` int(10) unsigned NOT NULL DEFAULT '0',
  `fhcreacion` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FechaHoraASC` (`fechahora`) USING BTREE,
  KEY `IdDetPresupuestoASC` (`iddetpresupuesto`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notapresupuesto`
--

LOCK TABLES `notapresupuesto` WRITE;
/*!40000 ALTER TABLE `notapresupuesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `notapresupuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operacion`
--

DROP TABLE IF EXISTS `operacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operacion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `abrevia` varchar(1) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `AbreviaASC` (`abrevia`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operacion`
--

LOCK TABLES `operacion` WRITE;
/*!40000 ALTER TABLE `operacion` DISABLE KEYS */;
INSERT INTO `operacion` VALUES (1,'I','Creación (Nuevo)'),(2,'U','Actualización (Modificación)'),(3,'D','Eliminación (Borrado)');
/*!40000 ALTER TABLE `operacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordencedula`
--

DROP TABLE IF EXISTS `ordencedula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordencedula` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `noorden` varchar(10) NOT NULL,
  `idmunicipio` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `NoOrdenASC` (`noorden`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordencedula`
--

LOCK TABLES `ordencedula` WRITE;
/*!40000 ALTER TABLE `ordencedula` DISABLE KEYS */;
INSERT INTO `ordencedula` VALUES (1,'A-01',1);
/*!40000 ALTER TABLE `ordencedula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `origen`
--

DROP TABLE IF EXISTS `origen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `origen` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `origen` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `origen`
--

LOCK TABLES `origen` WRITE;
/*!40000 ALTER TABLE `origen` DISABLE KEYS */;
/*!40000 ALTER TABLE `origen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pais` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `abreviatura` varchar(3) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `AbreviaturaASC` (`abreviatura`) USING BTREE,
  KEY `NombreASC` (`nombre`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periodicidad`
--

DROP TABLE IF EXISTS `periodicidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periodicidad` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descperiodicidad` varchar(50) NOT NULL,
  `dias` int(11) NOT NULL,
  `meses` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `Dias` (`dias`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodicidad`
--

LOCK TABLES `periodicidad` WRITE;
/*!40000 ALTER TABLE `periodicidad` DISABLE KEYS */;
INSERT INTO `periodicidad` VALUES (1,'Mes',30,1),(2,'Trimestre',90,3),(3,'Semestre',180,6),(4,'Bimestre',60,2);
/*!40000 ALTER TABLE `periodicidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periodocontable`
--

DROP TABLE IF EXISTS `periodocontable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periodocontable` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `del` date NOT NULL,
  `al` date NOT NULL,
  `abierto` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodocontable`
--

LOCK TABLES `periodocontable` WRITE;
/*!40000 ALTER TABLE `periodocontable` DISABLE KEYS */;
/*!40000 ALTER TABLE `periodocontable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permiso`
--

DROP TABLE IF EXISTS `permiso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permiso` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idusuario` int(10) unsigned NOT NULL,
  `iditemmenu` int(10) unsigned NOT NULL,
  `accesar` bit(1) NOT NULL DEFAULT b'0',
  `crear` bit(1) NOT NULL DEFAULT b'0',
  `modificar` bit(1) NOT NULL DEFAULT b'0',
  `eliminar` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UsrItemASC` (`idusuario`,`iditemmenu`)
) ENGINE=InnoDB AUTO_INCREMENT=2735 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permiso`
--

LOCK TABLES `permiso` WRITE;
/*!40000 ALTER TABLE `permiso` DISABLE KEYS */;
INSERT INTO `permiso` VALUES (1,1,1,'','','',''),(2,1,2,'','','',''),(3,1,3,'','','',''),(4,1,4,'','','',''),(5,1,5,'','','',''),(6,1,6,'','','',''),(7,1,7,'','','',''),(9,1,8,'','','',''),(10,1,9,'','','',''),(11,1,10,'\0','\0','\0','\0'),(12,1,14,'','','',''),(13,1,11,'','','',''),(14,1,12,'','','',''),(15,1,13,'','','',''),(16,1,15,'','','',''),(17,1,16,'','','',''),(18,1,17,'','','',''),(19,1,18,'','','',''),(20,1,19,'','','',''),(21,1,20,'','','',''),(22,1,21,'\0','','',''),(23,1,22,'','','',''),(24,1,23,'','','',''),(25,1,24,'','','',''),(26,1,25,'','','',''),(27,1,26,'','','',''),(28,1,27,'','','',''),(60,1,28,'','','',''),(93,1,29,'','','',''),(94,1,30,'','','',''),(95,1,31,'','','',''),(96,1,32,'','','',''),(97,1,33,'','','',''),(98,1,34,'','','',''),(99,1,35,'','','',''),(114,1,36,'','','',''),(115,1,37,'','','',''),(116,1,38,'','','',''),(117,1,39,'','','',''),(118,1,40,'','','',''),(119,1,41,'','','',''),(120,1,42,'','','',''),(121,1,43,'','','',''),(122,1,44,'','','',''),(159,1,45,'','\0','\0','\0'),(162,1,46,'','\0','\0','\0'),(165,1,47,'','\0','\0','\0'),(168,1,48,'','\0','\0','\0'),(171,1,49,'','\0','\0','\0'),(174,1,50,'','','','\0'),(177,1,51,'','','',''),(178,1,52,'','','',''),(179,1,53,'','','',''),(186,1,54,'','','',''),(187,1,55,'','','',''),(188,1,56,'','','',''),(189,1,63,'','','',''),(190,1,62,'','','',''),(191,1,57,'','','',''),(192,1,58,'','','',''),(193,1,59,'','','',''),(194,1,60,'','','',''),(195,1,61,'','\0','\0','\0'),(226,1,64,'','','',''),(228,1,65,'','','',''),(233,1,66,'','','',''),(236,1,67,'','','',''),(237,1,68,'','','',''),(238,1,69,'','','',''),(239,1,70,'','','',''),(254,1,71,'','\0','\0','\0'),(257,1,72,'','\0','\0','\0'),(260,1,73,'','','',''),(261,1,75,'','','',''),(262,1,76,'','','',''),(263,1,74,'','','',''),(264,1,78,'','\0','\0','\0'),(265,1,79,'','\0','\0','\0'),(266,1,77,'','','',''),(281,1,80,'','\0','\0','\0'),(284,1,81,'','\0','\0','\0'),(285,1,82,'','\0','\0','\0'),(292,1,83,'','\0','\0','\0'),(549,1,84,'','','',''),(677,1,85,'','','',''),(681,1,86,'','','',''),(813,1,87,'','\0','\0','\0'),(823,1,88,'','\0','\0','\0'),(1551,1,89,'','','',''),(1556,1,90,'','\0','\0','\0'),(1557,1,91,'','\0','\0','\0'),(1558,1,92,'','\0','\0','\0'),(1559,1,93,'','\0','\0','\0'),(1560,1,94,'','\0','\0','\0'),(1561,1,95,'\0','\0','\0','\0'),(1563,1,96,'','\0','\0','\0'),(1875,1,97,'','\0','\0','\0'),(1896,1,98,'','\0','\0','\0'),(1902,1,99,'','\0','\0','\0'),(1911,1,100,'','\0','\0','\0'),(1914,1,101,'','\0','\0','\0'),(1921,1,102,'','\0','\0','\0'),(1928,1,103,'\0','\0','\0','\0'),(1936,1,104,'','\0','\0','\0'),(2068,1,105,'','','',''),(2069,1,106,'','','',''),(2077,1,107,'','\0','\0','\0'),(2086,1,108,'','\0','\0','\0'),(2618,1,109,'\0','\0','\0','\0'),(2619,1,110,'','','',''),(2620,1,111,'','','',''),(2621,1,112,'','','',''),(2622,1,113,'','','',''),(2623,1,114,'','','',''),(2624,1,115,'','','',''),(2632,1,116,'','\0','\0','\0'),(2669,1,117,'','','',''),(2671,1,118,'','\0','\0','\0'),(2700,1,119,'','\0','\0','\0'),(2704,1,120,'','\0','\0','\0'),(2708,1,121,'','\0','\0','\0'),(2712,1,122,'','\0','\0','\0'),(2716,1,123,'','','',''),(2717,1,124,'','\0','\0','\0'),(2724,1,125,'','','',''),(2732,1,126,'','\0','\0','\0'),(2733,1,127,'','\0','\0','\0');
/*!40000 ALTER TABLE `permiso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plaproy`
--

DROP TABLE IF EXISTS `plaproy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plaproy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idproyecto` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `anio` int(11) DEFAULT NULL,
  `monto` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plaproy`
--

LOCK TABLES `plaproy` WRITE;
/*!40000 ALTER TABLE `plaproy` DISABLE KEYS */;
/*!40000 ALTER TABLE `plaproy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plnarchivo`
--

DROP TABLE IF EXISTS `plnarchivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plnarchivo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idplnempleado` int(10) unsigned NOT NULL,
  `ruta` text NOT NULL,
  `idplnarchivotipo` int(11) unsigned NOT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `vence` date DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_plnarchivo_1_idx` (`idplnempleado`),
  KEY `fk_plnarchivo_2_idx` (`idplnarchivotipo`),
  CONSTRAINT `fk_plnarchivo_1` FOREIGN KEY (`idplnempleado`) REFERENCES `plnempleado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_plnarchivo_2` FOREIGN KEY (`idplnarchivotipo`) REFERENCES `plnarchivotipo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plnarchivo`
--

LOCK TABLES `plnarchivo` WRITE;
/*!40000 ALTER TABLE `plnarchivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `plnarchivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plnarchivotipo`
--

DROP TABLE IF EXISTS `plnarchivotipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plnarchivotipo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plnarchivotipo`
--

LOCK TABLES `plnarchivotipo` WRITE;
/*!40000 ALTER TABLE `plnarchivotipo` DISABLE KEYS */;
INSERT INTO `plnarchivotipo` VALUES (1,'Foto'),(2,'DPI');
/*!40000 ALTER TABLE `plnarchivotipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plnempleado`
--

DROP TABLE IF EXISTS `plnempleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plnempleado` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `dpi` varchar(25) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `sexo` tinyint(1) DEFAULT NULL,
  `fechanacimiento` date DEFAULT NULL,
  `descuentoisr` decimal(10,2) DEFAULT NULL,
  `estadocivil` varchar(45) DEFAULT NULL,
  `extendido` varchar(45) DEFAULT NULL,
  `nit` varchar(45) DEFAULT NULL,
  `igss` varchar(45) DEFAULT NULL,
  `ingreso` date DEFAULT NULL,
  `reingreso` date DEFAULT NULL,
  `baja` date DEFAULT NULL,
  `idplnpuesto` int(10) unsigned DEFAULT NULL,
  `cuentapersonal` varchar(45) DEFAULT NULL,
  `idempresaactual` int(10) unsigned DEFAULT NULL,
  `bonificacionley` decimal(10,2) DEFAULT NULL,
  `sueldo` decimal(10,2) DEFAULT NULL,
  `porcentajeigss` decimal(10,2) DEFAULT NULL,
  `formapago` tinyint(1) DEFAULT NULL,
  `mediopago` tinyint(1) DEFAULT NULL,
  `idempresadebito` int(10) unsigned DEFAULT NULL,
  `cuentabanco` varchar(45) DEFAULT NULL,
  `idproyecto` int(10) unsigned DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `nacionalidad` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_plnempleado_1_idx` (`idplnpuesto`),
  CONSTRAINT `fk_plnempleado_1` FOREIGN KEY (`idplnpuesto`) REFERENCES `plnpuesto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plnempleado`
--

LOCK TABLES `plnempleado` WRITE;
/*!40000 ALTER TABLE `plnempleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `plnempleado` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `karante`.`plnempleado_BEFORE_UPDATE` BEFORE UPDATE ON `plnempleado` FOR EACH ROW
BEGIN

IF new.baja is null then 
	SET new.activo = 1;
else 
	SET new.activo = 0;
END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `plnimpresion`
--

DROP TABLE IF EXISTS `plnimpresion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plnimpresion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `psx` decimal(10,2) NOT NULL,
  `psy` decimal(10,2) NOT NULL,
  `campo` varchar(45) NOT NULL,
  `multilinea` tinyint(1) NOT NULL DEFAULT '0',
  `alineacion` char(1) NOT NULL DEFAULT 'L',
  `letra` varchar(25) NOT NULL DEFAULT 'dejavusans',
  `tamanio` int(2) NOT NULL DEFAULT '12',
  `estilo` char(5) DEFAULT NULL,
  `html` tinyint(1) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `ancho` decimal(10,2) NOT NULL DEFAULT '0.00',
  `espacio` decimal(10,2) NOT NULL DEFAULT '5.00',
  `detalle` tinyint(1) NOT NULL DEFAULT '0',
  `cabecera` tinyint(1) NOT NULL DEFAULT '0',
  `borde` tinyint(1) NOT NULL DEFAULT '0',
  `tipo` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plnimpresion`
--

LOCK TABLES `plnimpresion` WRITE;
/*!40000 ALTER TABLE `plnimpresion` DISABLE KEYS */;
INSERT INTO `plnimpresion` VALUES (1,10.00,5.00,'titulo',0,'C','dejavusans',12,'B',0,1,0.00,5.00,0,0,0,1),(2,10.00,10.00,'rango',0,'C','dejavusans',12,'B',0,1,0.00,5.00,0,0,0,1),(3,15.00,20.00,'tempresa',0,'R','dejavusans',12,'B',0,1,25.00,5.00,0,0,0,1),(4,40.00,20.00,'vempresa',0,'L','dejavusans',12,'',0,1,50.00,5.00,0,0,0,1),(5,15.00,25.00,'templeado',0,'R','dejavusans',12,'B',0,1,25.00,5.00,0,0,0,1),(6,40.00,25.00,'vempleado',0,'L','dejavusans',12,'',0,1,50.00,5.00,0,0,0,1),(7,150.00,20.00,'tcodigo',0,'R','dejavusans',12,'B',0,1,25.00,5.00,0,0,0,1),(8,175.00,20.00,'vcodigo',0,'L','dejavusans',12,'',0,1,20.00,5.00,0,0,0,1),(9,15.00,30.00,'tdpi',0,'R','dejavusans',12,'B',0,1,25.00,5.00,0,0,0,1),(10,40.00,30.00,'vdpi',0,'L','dejavusans',12,'',0,1,50.00,5.00,0,0,0,1),(11,10.00,40.00,'tdevengados',0,'C','dejavusans',12,'B',0,1,95.00,5.00,0,0,0,1),(12,105.00,40.00,'tdeducidos',0,'C','dejavusans',12,'B',0,1,95.00,5.00,0,0,0,1),(13,105.00,40.00,'division',0,'L','dejavusans',12,'',0,1,70.00,5.00,0,0,0,1),(14,10.00,50.00,'tsueldoordinario',0,'R','dejavusans',10,'',0,1,60.00,5.00,0,0,0,1),(15,70.00,50.00,'vsueldoordinario',0,'R','dejavusans',10,'',0,1,30.00,5.00,0,0,0,1),(16,10.00,60.00,'tsueldoextra',0,'R','dejavusans',10,'',0,1,60.00,5.00,0,0,0,1),(17,70.00,60.00,'vsueldoextra',0,'R','dejavusans',10,'',0,1,30.00,5.00,0,0,0,1),(18,10.00,65.00,'tbonificacion',0,'R','dejavusans',10,'',0,1,60.00,5.00,0,0,0,1),(19,70.00,65.00,'vbonificacion',0,'R','dejavusans',10,'',0,1,30.00,5.00,0,0,0,1),(20,10.00,70.00,'tviaticos',0,'R','dejavusans',10,'',0,1,60.00,5.00,0,0,0,1),(21,70.00,70.00,'vviaticos',0,'R','dejavusans',10,'',0,1,30.00,5.00,0,0,0,1),(22,10.00,70.00,'tviaticos',0,'R','dejavusans',10,'',0,1,60.00,5.00,0,0,0,1),(23,70.00,70.00,'vviaticos',0,'R','dejavusans',10,'',0,1,30.00,5.00,0,0,0,1),(24,10.00,75.00,'totrosingresos',0,'R','dejavusans',10,'',0,1,60.00,5.00,0,0,0,1),(25,70.00,75.00,'votrosingresos',0,'R','dejavusans',10,'',0,1,30.00,5.00,0,0,0,1),(26,10.00,80.00,'tanticipo',0,'R','dejavusans',10,'',0,1,60.00,5.00,0,0,0,1),(27,70.00,80.00,'vanticipo',0,'R','dejavusans',10,'',0,1,30.00,5.00,0,0,0,1),(28,10.00,85.00,'tvacaciones',0,'R','dejavusans',10,'',0,1,60.00,5.00,0,0,0,1),(29,70.00,85.00,'vvacaciones',0,'R','dejavusans',10,'',0,1,30.00,5.00,0,0,0,1),(30,10.00,90.00,'taguinaldo',0,'R','dejavusans',10,'',0,1,60.00,5.00,0,0,0,1),(31,70.00,90.00,'vaguinaldo',0,'R','dejavusans',10,'',0,1,30.00,5.00,0,0,0,1),(32,10.00,105.00,'tindemnizacion',0,'R','dejavusans',10,'',0,1,60.00,5.00,0,0,0,1),(33,70.00,105.00,'vindemnizacion',0,'R','dejavusans',10,'',0,1,30.00,5.00,0,0,0,1),(34,110.00,50.00,'tigss',0,'R','dejavusans',10,'',0,1,60.00,5.00,0,0,0,1),(35,170.00,50.00,'vigss',0,'R','dejavusans',10,'',0,1,30.00,5.00,0,0,0,1),(36,110.00,55.00,'tisr',0,'R','dejavusans',10,'',0,1,60.00,5.00,0,0,0,1),(37,170.00,55.00,'visr',0,'R','dejavusans',10,'',0,1,30.00,5.00,0,0,0,1),(38,110.00,60.00,'tdescanticipo',0,'R','dejavusans',10,'',0,1,60.00,5.00,0,0,0,1),(39,170.00,60.00,'vdescanticipo',0,'R','dejavusans',10,'',0,1,30.00,5.00,0,0,0,1),(40,110.00,65.00,'tprestamo',0,'R','dejavusans',10,'',0,1,60.00,5.00,0,0,0,1),(41,170.00,65.00,'vprestamo',0,'R','dejavusans',10,'',0,1,30.00,5.00,0,0,0,1),(42,110.00,70.00,'tdescotros',0,'R','dejavusans',10,'',0,1,60.00,5.00,0,0,0,1),(43,170.00,70.00,'vdescotros',0,'R','dejavusans',10,'',0,1,30.00,5.00,0,0,0,1),(44,110.00,80.00,'tdevengado',0,'R','dejavusans',10,'B',0,1,60.00,5.00,0,0,0,1),(45,170.00,80.00,'vdevengado',0,'R','dejavusans',10,'B',0,1,30.00,5.00,0,0,0,1),(46,110.00,85.00,'tdeducido',0,'R','dejavusans',10,'B',0,1,60.00,5.00,0,0,0,1),(47,170.00,85.00,'vdeducido',0,'R','dejavusans',10,'B',0,1,30.00,5.00,0,0,0,1),(48,110.00,90.00,'tliquido',0,'R','dejavusans',10,'B',0,1,60.00,5.00,0,0,0,1),(49,170.00,90.00,'vliquido',0,'R','dejavusans',10,'B',0,1,30.00,5.00,0,0,0,1),(50,110.00,100.00,'tsaldoprestamo',0,'C','dejavusans',10,'B',0,1,90.00,5.00,0,0,0,1),(51,110.00,105.00,'vsaldoprestamo',0,'C','dejavusans',10,'B',0,1,90.00,5.00,0,0,0,1),(52,110.00,97.50,'recprestamo',0,'L','dejavusans',12,'',0,1,90.00,15.00,0,0,0,1),(53,10.00,125.00,'trecibi',0,'C','dejavusans',10,'',0,1,0.00,5.00,0,0,0,1),(54,10.00,120.00,'lrecibi',0,'C','dejavusans',10,'',0,1,0.00,5.00,0,0,0,1),(55,10.00,5.00,'titulon',0,'C','dejavusans',12,'B',0,1,0.00,5.00,0,1,0,2),(56,10.00,15.00,'mes',0,'C','dejavusans',12,'B',0,1,0.00,5.00,0,1,0,2),(60,25.00,30.00,'vempleado',0,'L','dejavusans',7,'',0,1,50.00,5.00,0,0,0,2),(62,13.00,30.00,'vcodigo',0,'L','dejavusans',7,'',0,1,12.00,5.00,0,0,0,2),(118,10.00,10.00,'subtitulo',0,'C','dejavusans',12,'B',0,1,0.00,5.00,0,1,0,2),(120,75.00,25.00,'devengados',0,'C','dejavusans',10,'',0,1,100.00,5.00,0,1,0,2),(121,150.00,25.00,'deducidos',0,'C','dejavusans',10,'',0,1,100.00,5.00,0,1,0,2),(122,10.00,30.00,'idempresa',0,'L','dejavusans',8,'B',0,1,100.00,5.00,0,0,0,2),(123,13.00,30.00,'nempleado',0,'L','dejavusans',8,'',0,1,100.00,5.00,0,0,0,1),(124,75.00,30.00,'vdiastrabajados',0,'R','dejavusans',7,'',0,1,12.00,5.00,0,0,0,2),(125,13.00,25.00,'tcodigot',0,'L','dejavusans',7,'B',0,1,12.00,5.00,0,1,0,2),(126,25.00,25.00,'tnombre',0,'L','dejavusans',7,'B',0,1,50.00,5.00,0,1,0,2),(127,10.00,26.00,'tlineat',0,'L','dejavusans',7,'',0,1,0.00,5.00,0,1,0,2),(128,87.00,25.00,'tsueldoot',0,'R','dejavusans',7,'',0,1,15.00,5.00,0,0,0,2),(129,75.00,25.00,'tdiastrabajadost',0,'R','dejavusans',7,'',0,1,12.00,5.00,0,0,0,2),(130,87.00,30.00,'vsueldoordinario',0,'R','dejavusans',7,'',0,1,15.00,5.00,0,0,0,2),(131,102.00,25.00,'tsueldoextrat',0,'R','dejavusans',7,'',0,1,15.00,5.00,0,0,0,2),(132,102.00,30.00,'vsueldoextra',0,'R','dejavusans',7,'',0,1,15.00,5.00,0,0,0,2),(133,117.00,30.00,'vsueldototal',0,'R','dejavusans',7,'',0,1,15.00,5.00,0,0,0,2),(134,117.00,25.00,'tsueldototalt',0,'R','dejavusans',7,'',0,1,15.00,5.00,0,0,0,2),(135,132.00,25.00,'tbonificaciont',0,'R','dejavusans',7,'',0,1,14.00,5.00,0,0,0,2),(136,132.00,30.00,'vbonificacion',0,'R','dejavusans',7,'',0,1,14.00,5.00,0,0,0,2),(137,146.00,25.00,'tanticipot',0,'R','dejavusans',7,'',0,1,15.00,5.00,0,0,0,2),(138,146.00,30.00,'vanticipo',0,'R','dejavusans',7,'',0,1,15.00,5.00,0,0,0,2),(139,161.00,25.00,'tvacacionest',0,'R','dejavusans',7,'',0,1,15.00,5.00,0,0,0,2),(140,161.00,30.00,'vvacaciones',0,'R','dejavusans',7,'',0,1,15.00,5.00,0,0,0,2),(141,176.00,25.00,'tbono14t',0,'R','dejavusans',7,'',0,1,14.00,5.00,0,0,0,2),(142,176.00,30.00,'vbono14',0,'R','dejavusans',7,'',0,1,14.00,5.00,0,0,0,2),(143,190.00,25.00,'taguinaldot',0,'R','dejavusans',7,'',0,1,15.00,5.00,0,0,0,2),(144,190.00,30.00,'vaguinaldo',0,'R','dejavusans',7,'',0,1,15.00,5.00,0,0,0,2),(145,205.00,25.00,'tdevengadot',0,'R','dejavusans',7,'',0,1,15.00,5.00,0,0,0,2),(146,205.00,30.00,'vdevengado',0,'R','dejavusans',7,'',0,1,15.00,5.00,0,0,0,2),(147,220.00,25.00,'tigsst',0,'R','dejavusans',7,'',0,1,13.00,5.00,0,0,0,2),(148,220.00,30.00,'vigss',0,'R','dejavusans',7,'',0,1,13.00,5.00,0,0,0,2),(149,233.00,25.00,'tisrt',0,'R','dejavusans',7,'',0,1,13.00,5.00,0,0,0,2),(150,233.00,30.00,'visr',0,'R','dejavusans',7,'',0,1,13.00,5.00,0,0,0,2),(151,246.00,25.00,'tdescprestamot',0,'R','dejavusans',7,'',0,1,15.00,5.00,0,0,0,2),(152,246.00,30.00,'vprestamo',0,'R','dejavusans',7,'',0,1,15.00,5.00,0,0,0,2),(153,274.00,25.00,'tdescanticipot',0,'R','dejavusans',7,'',0,1,15.00,5.00,0,0,0,2),(154,274.00,30.00,'vdescanticipo',0,'R','dejavusans',7,'',0,1,15.00,5.00,0,0,0,2),(155,289.00,25.00,'tdeducidot',0,'R','dejavusans',7,'',0,1,15.00,5.00,0,0,0,2),(156,289.00,30.00,'vdeducido',0,'R','dejavusans',7,'',0,1,15.00,5.00,0,0,0,2),(157,304.00,25.00,'tliquidot',0,'R','dejavusans',7,'',0,1,15.00,5.00,0,0,0,2),(158,304.00,30.00,'vliquido',0,'R','dejavusans',7,'',0,1,15.00,5.00,0,0,0,2),(159,13.00,195.00,'tnopaginat',0,'L','dejavusans',10,'B',0,1,25.00,5.00,0,0,0,2),(160,10.00,190.00,'tlineapiet',0,'L','dejavusans',7,'',0,1,0.00,5.00,0,0,0,2),(161,90.00,195.00,'vtotalespie',0,'R','dejavusans',7,'',0,1,0.00,5.00,0,0,0,2),(162,38.00,195.00,'vnopagina',0,'L','dejavusans',10,'B',0,1,20.00,5.00,0,0,0,2),(163,30.00,170.00,'elaborado',0,'L','dejavusans',10,NULL,0,1,90.00,5.00,0,0,0,2),(164,120.00,170.00,'revisado',0,'L','dejavusans',10,NULL,0,1,90.00,5.00,0,0,0,2),(165,210.00,170.00,'autorizado',0,'L','dejavusans',10,NULL,0,1,90.00,5.00,0,0,0,2),(166,10.00,95.00,'tbonoanual',1,'R','dejavusans',10,NULL,0,1,60.00,5.00,0,0,0,1),(167,70.00,95.00,'vbonoanual',0,'R','dejavusans',10,NULL,0,1,30.00,5.00,0,0,0,1),(168,10.00,55.00,'thorasextras',0,'R','dejavusans',10,NULL,0,1,60.00,5.00,0,0,0,1),(169,70.00,55.00,'vhorasextras',0,'R','dejavusans',10,NULL,0,1,30.00,5.00,0,0,0,1),(170,87.00,20.00,'linea_devengados',0,'C','dejavusans',7,NULL,0,1,118.00,5.00,0,0,0,2),(171,205.00,20.00,'linea_devengados_total',0,'C','dejavusans',7,NULL,0,1,15.00,5.00,0,0,0,2),(172,220.00,20.00,'linea_deducidos',0,'C','dejavusans',7,NULL,0,1,69.00,5.00,0,0,0,2),(173,289.00,20.00,'linea_deducidos_total',0,'C','dejavusans',7,NULL,0,1,15.00,5.00,0,0,0,2),(174,10.00,5.00,'igss_titulo',0,'C','dejavusans',12,'B',0,1,0.00,5.00,0,1,0,3),(175,10.00,10.00,'igss_subtitulo',0,'C','dejavusans',12,'B',0,1,0.00,5.00,0,1,0,3),(176,261.00,25.00,'tdescotrost',0,'R','dejavusans',7,NULL,0,1,13.00,5.00,0,0,0,2),(177,261.00,30.00,'vdescotros',0,'R','dejavusans',7,NULL,0,1,13.00,5.00,0,0,0,2),(178,10.00,15.00,'igss_mes',0,'C','dejavusans',12,NULL,0,1,0.00,5.00,0,1,0,3),(179,10.00,20.00,'igss_periodo',0,'C','dejavusans',12,NULL,0,1,0.00,5.00,0,1,0,3),(180,10.00,30.00,'t_razon_social',0,'R','dejavusans',10,NULL,0,1,80.00,5.00,0,1,0,3),(181,10.00,35.00,'t_direccion_patrono',0,'R','dejavusans',10,NULL,0,1,80.00,5.00,0,1,0,3),(182,10.00,40.00,'t_numero_patronal',0,'R','dejavusans',10,NULL,0,1,80.00,5.00,0,1,0,3),(183,13.00,60.00,'t_afiliacion',0,'R','dejavusans',8,NULL,0,1,20.00,5.00,0,1,0,3),(184,33.00,60.00,'t_nombre_empleado',0,'L','dejavusans',8,NULL,0,1,50.00,5.00,0,1,0,3),(185,83.00,60.00,'t_fecha_baja',1,'L','dejavusans',8,NULL,0,1,25.00,5.00,0,1,0,3),(186,108.00,60.00,'t_sueldo_ordinario',1,'R','dejavusans',8,NULL,0,1,25.00,5.00,0,1,0,3),(187,133.00,60.00,'t_sueldo_extraordinario',1,'R','dejavusans',8,NULL,0,1,25.00,5.00,0,1,0,3),(188,158.00,60.00,'t_sueldo_total',1,'R','dejavusans',8,NULL,0,1,25.00,5.00,0,1,0,3),(189,183.00,60.00,'t_igss',0,'R','dejavusans',8,NULL,0,1,25.00,5.00,0,1,0,3),(190,13.00,70.00,'vafiliacionigss',0,'L','dejavusans',8,NULL,0,1,20.00,5.00,0,0,0,3),(191,33.00,70.00,'vempleado',0,'L','dejavusans',8,NULL,0,1,50.00,5.00,0,0,0,3),(192,83.00,70.00,'vbaja',0,'L','dejavusans',8,NULL,0,1,25.00,5.00,0,0,0,3),(193,108.00,70.00,'vsueldoordinario',0,'R','dejavusans',8,NULL,0,1,25.00,5.00,0,0,0,3),(194,133.00,70.00,'vsueldoextra',0,'R','dejavusans',8,NULL,0,1,25.00,5.00,0,0,0,3),(195,158.00,70.00,'vsueldototal',0,'R','dejavusans',8,NULL,0,1,25.00,5.00,0,0,0,3),(196,183.00,70.00,'vigss',0,'R','dejavusans',8,NULL,0,1,25.00,5.00,0,0,0,3),(197,13.00,70.00,'t_cantidad_empleado',0,'L','dejavusans',8,NULL,0,1,50.00,5.00,0,0,0,3),(198,33.00,100.00,'r_igss_concepto',0,'L','dejavusans',8,'B',0,1,17.00,5.00,0,0,1,3),(199,50.00,100.00,'r_igss_cuota_patronal',0,'R','dejavusans',8,NULL,0,1,30.00,5.00,0,0,1,3),(200,80.00,100.00,'r_igss_cuota_trabajadores',0,'R','dejavusans',8,NULL,0,1,35.00,5.00,0,0,1,3),(201,115.00,100.00,'r_igss_total_pagar',0,'R','dejavusans',8,NULL,0,1,30.00,5.00,0,0,1,3),(202,33.00,105.00,'con_igss',0,'L','dejavusans',8,'B',0,1,17.00,5.00,0,0,0,3),(203,33.00,110.00,'con_intecap',0,'L','dejavusans',8,'B',0,1,17.00,5.00,0,0,0,3),(204,33.00,115.00,'con_irtra',0,'L','dejavusans',8,'B',0,1,17.00,5.00,0,0,0,3),(205,33.00,120.00,'con_total',0,'L','dejavusans',8,'B',0,1,17.00,5.00,0,0,1,3),(206,50.00,105.00,'cp_igss',0,'R','dejavusans',8,NULL,0,1,30.00,5.00,0,0,0,3),(207,50.00,110.00,'cp_intecap',0,'R','dejavusans',8,NULL,0,1,30.00,5.00,0,0,0,3),(208,50.00,115.00,'cp_irtra',0,'R','dejavusans',8,NULL,0,1,30.00,5.00,0,0,0,3),(209,50.00,120.00,'cp_total',0,'R','dejavusans',8,'B',0,1,30.00,5.00,0,0,1,3),(210,80.00,105.00,'ct_igss',0,'R','dejavusans',8,NULL,0,1,35.00,5.00,0,0,0,3),(211,80.00,120.00,'ct_total',0,'R','dejavusans',8,'B',0,1,35.00,5.00,0,0,1,3),(212,115.00,105.00,'tp_igss',0,'R','dejavusans',8,'B',0,1,30.00,5.00,0,0,0,3),(213,115.00,110.00,'tp_intecap',0,'R','dejavusans',8,'B',0,1,30.00,5.00,0,0,0,3),(214,115.00,115.00,'tp_irtra',0,'R','dejavusans',8,'B',0,1,30.00,5.00,0,0,0,3),(215,115.00,120.00,'tp_total',0,'R','dejavusans',8,'B',0,1,30.00,5.00,0,0,1,3),(216,10.00,65.00,'tlineat',0,'L','dejavusans',7,NULL,0,1,0.00,5.00,0,0,0,3),(217,10.00,150.00,'r_igss_firma',1,'C','dejavusans',7,NULL,0,1,0.00,5.00,0,0,0,3),(218,90.00,30.00,'v_razon_social',0,'L','dejavusans',10,NULL,0,1,80.00,5.00,0,0,0,3),(219,90.00,35.00,'v_direccion_patrono',0,'L','dejavusans',10,NULL,0,1,80.00,5.00,0,0,0,3),(220,90.00,40.00,'v_numero_patronal',0,'L','dejavusans',10,NULL,0,1,80.00,5.00,0,0,0,3),(221,10.00,5.00,'titulon',0,'C','dejavusans',12,'B',0,1,0.00,5.00,0,1,0,4),(222,10.00,15.00,'mes',0,'C','dejavusans',12,'B',0,1,0.00,5.00,0,1,0,4),(223,25.00,30.00,'vempleado',0,'L','dejavusans',7,NULL,0,1,75.00,5.00,0,0,0,4),(224,13.00,30.00,'vcodigo',0,'L','dejavusans',7,NULL,0,1,12.00,5.00,0,0,0,4),(225,10.00,10.00,'subtitulo',0,'C','dejavusans',12,'B',0,1,0.00,5.00,0,1,0,4),(226,75.00,25.00,'devengados',0,'C','dejavusans',10,NULL,0,1,100.00,5.00,0,1,0,4),(227,150.00,25.00,'deducidos',0,'C','dejavusans',10,NULL,0,1,100.00,5.00,0,1,0,4),(228,10.00,30.00,'idempresa',0,'L','dejavusans',8,'B',0,1,100.00,5.00,0,0,0,4),(229,13.00,25.00,'tcodigot',0,'L','dejavusans',7,'B',0,1,12.00,5.00,0,1,0,4),(230,25.00,25.00,'tnombre',0,'L','dejavusans',7,'B',0,1,75.00,5.00,0,1,0,4),(231,10.00,26.00,'tlineat',0,'L','dejavusans',7,NULL,0,1,0.00,5.00,0,1,0,4),(232,100.00,25.00,'tdevengadot',0,'R','dejavusans',7,NULL,0,1,25.00,5.00,0,0,0,4),(233,100.00,30.00,'vdevengado',0,'R','dejavusans',7,NULL,0,1,25.00,5.00,0,0,0,4),(234,125.00,25.00,'tisrt',0,'R','dejavusans',7,NULL,0,1,25.00,5.00,0,0,0,4),(235,125.00,30.00,'visr',0,'R','dejavusans',7,NULL,0,1,25.00,5.00,0,0,0,4),(236,13.00,260.00,'tnopaginat',0,'L','dejavusans',10,'B',0,1,25.00,5.00,0,0,0,4),(237,10.00,255.00,'tlineapiet',0,'L','dejavusans',7,NULL,0,1,0.00,5.00,0,0,0,4),(238,90.00,260.00,'vtotalespie',0,'R','dejavusans',7,NULL,0,1,0.00,5.00,0,0,0,4),(239,38.00,260.00,'vnopagina',0,'L','dejavusans',10,'B',0,1,20.00,5.00,0,0,0,4),(240,30.00,170.00,'elaborado',0,'L','dejavusans',10,NULL,0,1,90.00,5.00,0,0,0,4),(241,120.00,170.00,'revisado',0,'L','dejavusans',10,NULL,0,1,90.00,5.00,0,0,0,4),(242,210.00,170.00,'autorizado',0,'L','dejavusans',10,NULL,0,1,90.00,5.00,0,0,0,4);
/*!40000 ALTER TABLE `plnimpresion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plnnomina`
--

DROP TABLE IF EXISTS `plnnomina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plnnomina` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idplnempleado` int(10) unsigned NOT NULL,
  `sueldoordinario` decimal(10,2) NOT NULL DEFAULT '0.00',
  `sueldoextra` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bonificacion` decimal(10,2) NOT NULL DEFAULT '0.00',
  `otrosingresos` decimal(10,2) NOT NULL DEFAULT '0.00',
  `aguinaldo` decimal(10,2) NOT NULL DEFAULT '0.00',
  `vacaciones` decimal(10,2) NOT NULL DEFAULT '0.00',
  `indemnizacion` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bonocatorce` decimal(10,2) NOT NULL DEFAULT '0.00',
  `viaticos` decimal(10,2) NOT NULL DEFAULT '0.00',
  `descigss` decimal(10,2) NOT NULL DEFAULT '0.00',
  `descanticipo` decimal(10,2) NOT NULL DEFAULT '0.00',
  `descisr` decimal(10,2) NOT NULL DEFAULT '0.00',
  `descprestamo` decimal(10,2) NOT NULL DEFAULT '0.00',
  `descotros` decimal(10,2) NOT NULL DEFAULT '0.00',
  `devengado` decimal(10,2) NOT NULL DEFAULT '0.00',
  `deducido` decimal(10,2) NOT NULL DEFAULT '0.00',
  `liquido` decimal(10,2) NOT NULL DEFAULT '0.00',
  `horasmes` decimal(10,2) NOT NULL DEFAULT '0.00',
  `horasdesc` decimal(10,2) NOT NULL DEFAULT '0.00',
  `idempresa` int(10) unsigned NOT NULL,
  `fecha` date NOT NULL,
  `anticipo` decimal(10,2) NOT NULL DEFAULT '0.00',
  `diastrabajados` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_plnnomina_1_idx` (`idplnempleado`),
  KEY `fk_plnnomina_2_idx` (`idempresa`),
  CONSTRAINT `fk_plnnomina_1` FOREIGN KEY (`idplnempleado`) REFERENCES `plnempleado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_plnnomina_2` FOREIGN KEY (`idempresa`) REFERENCES `empresa` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plnnomina`
--

LOCK TABLES `plnnomina` WRITE;
/*!40000 ALTER TABLE `plnnomina` DISABLE KEYS */;
/*!40000 ALTER TABLE `plnnomina` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `karante`.`plnnomina_BEFORE_UPDATE` BEFORE UPDATE ON `plnnomina` FOR EACH ROW
BEGIN

select porcentajeigss 
into @pigss 
from plnempleado 
where id = new.idplnempleado;

set new.descigss = ((new.sueldoordinario+new.sueldoextra)*(@pigss/100));

set @devengado = (
    new.anticipo+
    new.sueldoordinario+
    new.sueldoextra+
    new.bonificacion+
    new.otrosingresos+
    new.aguinaldo+
    new.vacaciones+
    new.indemnizacion+
    new.bonocatorce+
    new.viaticos
);

set @deducido = (
    new.descigss+
    new.descanticipo+
    new.descisr+
    new.descprestamo+
    new.descotros
);

set @liquido = (@devengado-@deducido);

set new.devengado = @devengado;
set new.deducido = @deducido;
set new.liquido = @liquido;


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `plnpresnodesc`
--

DROP TABLE IF EXISTS `plnpresnodesc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plnpresnodesc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `idplnprestamo` int(10) unsigned NOT NULL,
  `idusuario` int(10) unsigned NOT NULL,
  `registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_plnpresnodesc_1_idx` (`idplnprestamo`),
  KEY `fk_plnpresnodesc_2_idx` (`idusuario`),
  CONSTRAINT `fk_plnpresnodesc_1` FOREIGN KEY (`idplnprestamo`) REFERENCES `plnprestamo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_plnpresnodesc_2` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plnpresnodesc`
--

LOCK TABLES `plnpresnodesc` WRITE;
/*!40000 ALTER TABLE `plnpresnodesc` DISABLE KEYS */;
/*!40000 ALTER TABLE `plnpresnodesc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plnpresnom`
--

DROP TABLE IF EXISTS `plnpresnom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plnpresnom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idplnprestamo` int(10) unsigned NOT NULL,
  `idplnnomina` int(10) unsigned NOT NULL,
  `monto` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `fk_plnpresnom_1_idx` (`idplnprestamo`),
  KEY `fk_plnpresnom_2_idx` (`idplnnomina`),
  CONSTRAINT `fk_plnpresnom_1` FOREIGN KEY (`idplnprestamo`) REFERENCES `plnprestamo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_plnpresnom_2` FOREIGN KEY (`idplnnomina`) REFERENCES `plnnomina` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plnpresnom`
--

LOCK TABLES `plnpresnom` WRITE;
/*!40000 ALTER TABLE `plnpresnom` DISABLE KEYS */;
/*!40000 ALTER TABLE `plnpresnom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plnprestamo`
--

DROP TABLE IF EXISTS `plnprestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plnprestamo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idplnempleado` int(10) unsigned NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `monto` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `cuotamensual` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `iniciopago` date NOT NULL,
  `liquidacion` date DEFAULT NULL,
  `concepto` text NOT NULL,
  `finalizado` tinyint(1) NOT NULL DEFAULT '0',
  `saldo` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `fk_plnprestamo_1_idx` (`idplnempleado`),
  CONSTRAINT `fk_plnprestamo_1` FOREIGN KEY (`idplnempleado`) REFERENCES `plnempleado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plnprestamo`
--

LOCK TABLES `plnprestamo` WRITE;
/*!40000 ALTER TABLE `plnprestamo` DISABLE KEYS */;
/*!40000 ALTER TABLE `plnprestamo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plnprosueldo`
--

DROP TABLE IF EXISTS `plnprosueldo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plnprosueldo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idplnempleado` int(10) unsigned NOT NULL,
  `anio` int(11) NOT NULL,
  `enero` decimal(10,2) DEFAULT NULL,
  `febrero` decimal(10,2) DEFAULT NULL,
  `marzo` decimal(10,2) DEFAULT NULL,
  `abril` decimal(10,2) DEFAULT NULL,
  `mayo` decimal(10,2) DEFAULT NULL,
  `junio` decimal(10,2) DEFAULT NULL,
  `julio` decimal(10,2) DEFAULT NULL,
  `agosto` decimal(10,2) DEFAULT NULL,
  `septiembre` decimal(10,2) DEFAULT NULL,
  `octubre` decimal(10,2) DEFAULT NULL,
  `noviembre` decimal(10,2) DEFAULT NULL,
  `diciembre` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_plnprosueldo_1_idx` (`idplnempleado`),
  CONSTRAINT `fk_plnprosueldo_1` FOREIGN KEY (`idplnempleado`) REFERENCES `plnempleado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plnprosueldo`
--

LOCK TABLES `plnprosueldo` WRITE;
/*!40000 ALTER TABLE `plnprosueldo` DISABLE KEYS */;
/*!40000 ALTER TABLE `plnprosueldo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plnpuesto`
--

DROP TABLE IF EXISTS `plnpuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plnpuesto` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plnpuesto`
--

LOCK TABLES `plnpuesto` WRITE;
/*!40000 ALTER TABLE `plnpuesto` DISABLE KEYS */;
INSERT INTO `plnpuesto` VALUES (1,'AUXILIAR DE MANTENIMIENTO');
/*!40000 ALTER TABLE `plnpuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presupuesto`
--

DROP TABLE IF EXISTS `presupuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `presupuesto` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idestatuspresupuesto` int(10) unsigned NOT NULL DEFAULT '0',
  `fechasolicitud` date NOT NULL,
  `idproyecto` int(11) NOT NULL DEFAULT '0',
  `idempresa` int(11) NOT NULL DEFAULT '0',
  `idtipogasto` int(11) NOT NULL DEFAULT '0',
  `idmoneda` int(11) NOT NULL DEFAULT '0',
  `total` decimal(20,2) NOT NULL DEFAULT '0.00',
  `notas` varchar(5000) DEFAULT NULL,
  `fechacreacion` date NOT NULL,
  `idusuario` int(11) NOT NULL DEFAULT '0',
  `fhenvioaprobacion` datetime DEFAULT NULL,
  `fhaprobacion` datetime DEFAULT NULL,
  `idusuarioaprueba` int(11) NOT NULL DEFAULT '0',
  `fechamodificacion` date DEFAULT NULL,
  `lastuser` int(11) NOT NULL DEFAULT '0',
  `tipo` int(11) NOT NULL DEFAULT '0',
  `idproveedor` int(11) NOT NULL DEFAULT '0',
  `origenprov` int(11) NOT NULL DEFAULT '0',
  `idsubtipogasto` int(11) NOT NULL DEFAULT '0',
  `coniva` bit(1) NOT NULL DEFAULT b'0',
  `monto` decimal(20,2) NOT NULL DEFAULT '0.00',
  `tipocambio` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `excedente` decimal(20,2) NOT NULL DEFAULT '0.00',
  `fhanulacion` datetime DEFAULT NULL,
  `idusuarioanula` int(11) DEFAULT NULL,
  `idrazonanula` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FechaCreacionASC` (`fechacreacion`) USING BTREE,
  KEY `FechaSolicitudASC` (`fechasolicitud`) USING BTREE,
  KEY `IdEmpresaASC` (`idempresa`) USING BTREE,
  KEY `IdEstatusPresupuestoASC` (`idestatuspresupuesto`) USING BTREE,
  KEY `IdProyectoASC` (`idproyecto`) USING BTREE,
  KEY `IdTipoGastoASC` (`idtipogasto`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presupuesto`
--

LOCK TABLES `presupuesto` WRITE;
/*!40000 ALTER TABLE `presupuesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `presupuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nit` varchar(50) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `concepto` varchar(200) DEFAULT NULL,
  `chequesa` varchar(150) DEFAULT NULL,
  `retensionisr` bit(1) DEFAULT b'0',
  `diascred` int(11) DEFAULT NULL,
  `limitecred` decimal(20,2) DEFAULT NULL,
  `pequeniocont` bit(1) DEFAULT b'0',
  `idmoneda` int(10) unsigned NOT NULL DEFAULT '1',
  `tipocambioprov` decimal(20,10) DEFAULT '1.0000000000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `nit_UNIQUE` (`nit`),
  KEY `NombreASC` (`nombre`),
  KEY `NitASC` (`nit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyecto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomproyecto` varchar(80) NOT NULL,
  `registro` varchar(20) DEFAULT NULL,
  `direccion` varchar(80) DEFAULT NULL,
  `notas` text,
  `metros` decimal(10,2) DEFAULT NULL,
  `idempresa` int(11) DEFAULT NULL,
  `metros_rentable` decimal(10,2) DEFAULT NULL,
  `tipo_proyecto` int(11) DEFAULT NULL,
  `subarrendado` tinyint(4) DEFAULT NULL,
  `notas_contrato` text,
  `referencia` varchar(20) DEFAULT NULL,
  `fechaapertura` date DEFAULT NULL,
  `multiempresa` bit(1) NOT NULL DEFAULT b'0',
  `apiurlparqueo` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto_adjunto`
--

DROP TABLE IF EXISTS `proyecto_adjunto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyecto_adjunto` (
  `idadjunto` int(11) NOT NULL AUTO_INCREMENT,
  `headerid` int(11) NOT NULL,
  `nomadjunto` varchar(254) NOT NULL,
  `tipo_adjunto` int(11) NOT NULL,
  `ubicacion` varchar(254) NOT NULL,
  `idtipodocproy` int(10) unsigned NOT NULL DEFAULT '0',
  `numero` varchar(50) DEFAULT NULL,
  `fvence` date DEFAULT NULL,
  PRIMARY KEY (`idadjunto`),
  KEY `IdTipoDocProyASC` (`idtipodocproy`),
  KEY `FVenceASC` (`fvence`),
  KEY `NumeroASC` (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto_adjunto`
--

LOCK TABLES `proyecto_adjunto` WRITE;
/*!40000 ALTER TABLE `proyecto_adjunto` DISABLE KEYS */;
/*!40000 ALTER TABLE `proyecto_adjunto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyectoservicio`
--

DROP TABLE IF EXISTS `proyectoservicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyectoservicio` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idproyecto` int(10) unsigned NOT NULL DEFAULT '0',
  `idserviciobasico` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `IdProyIdServicioASC` (`idproyecto`,`idserviciobasico`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyectoservicio`
--

LOCK TABLES `proyectoservicio` WRITE;
/*!40000 ALTER TABLE `proyectoservicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `proyectoservicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyectounidad`
--

DROP TABLE IF EXISTS `proyectounidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyectounidad` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idproyecto` int(10) unsigned NOT NULL,
  `idunidad` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ProyUnidUnique` (`idproyecto`,`idunidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyectounidad`
--

LOCK TABLES `proyectounidad` WRITE;
/*!40000 ALTER TABLE `proyectounidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `proyectounidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `razonanulacion`
--

DROP TABLE IF EXISTS `razonanulacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `razonanulacion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `razon` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `RazonASC` (`razon`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `razonanulacion`
--

LOCK TABLES `razonanulacion` WRITE;
/*!40000 ALTER TABLE `razonanulacion` DISABLE KEYS */;
INSERT INTO `razonanulacion` VALUES (4,'EMITIDO CON NOMBRE INCORRECTO'),(7,'INFORMACION PENDIENTE'),(6,'MAL IMPRESO'),(5,'MONTO DEL PAGO, POR PARTES'),(2,'MONTO INCORRECTO');
/*!40000 ALTER TABLE `razonanulacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recibocli`
--

DROP TABLE IF EXISTS `recibocli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recibocli` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idfox` varchar(15) DEFAULT NULL,
  `idempresa` int(11) NOT NULL DEFAULT '0',
  `fecha` date NOT NULL,
  `fechacrea` datetime DEFAULT NULL,
  `idcliente` int(10) unsigned NOT NULL DEFAULT '0',
  `espropio` bit(1) NOT NULL DEFAULT b'0',
  `idtranban` int(11) NOT NULL DEFAULT '0',
  `anulado` bit(1) NOT NULL DEFAULT b'0',
  `idrazonanulacion` int(11) NOT NULL DEFAULT '0',
  `fechaanula` date DEFAULT NULL,
  `serie` varchar(5) DEFAULT NULL,
  `numero` bigint(20) DEFAULT NULL,
  `usuariocrea` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IdClienteASC` (`idcliente`) USING BTREE,
  KEY `IdEmpresaASC` (`idempresa`) USING BTREE,
  KEY `IdTranBanASC` (`idtranban`) USING BTREE,
  KEY `IdFoxASC` (`idfox`),
  KEY `SerieNumeroASC` (`serie`,`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recibocli`
--

LOCK TABLES `recibocli` WRITE;
/*!40000 ALTER TABLE `recibocli` DISABLE KEYS */;
/*!40000 ALTER TABLE `recibocli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reciboprov`
--

DROP TABLE IF EXISTS `reciboprov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reciboprov` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idempresa` int(11) NOT NULL DEFAULT '0',
  `fecha` date NOT NULL,
  `fechacrea` date DEFAULT NULL,
  `idtranban` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FechaASC` (`fecha`) USING BTREE,
  KEY `IdEmpresaASC` (`idempresa`) USING BTREE,
  KEY `IdTranBanASC` (`idtranban`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reciboprov`
--

LOCK TABLES `reciboprov` WRITE;
/*!40000 ALTER TABLE `reciboprov` DISABLE KEYS */;
/*!40000 ALTER TABLE `reciboprov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reembolso`
--

DROP TABLE IF EXISTS `reembolso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reembolso` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idempresa` int(10) unsigned NOT NULL,
  `idtiporeembolso` int(10) unsigned NOT NULL,
  `finicio` date NOT NULL,
  `ffin` date DEFAULT NULL,
  `beneficiario` varchar(150) DEFAULT NULL,
  `idbeneficiario` int(10) unsigned NOT NULL DEFAULT '0',
  `tblbeneficiario` varchar(50) DEFAULT NULL,
  `estatus` tinyint(4) NOT NULL DEFAULT '1',
  `idtranban` int(10) unsigned NOT NULL DEFAULT '0',
  `esrecprov` bit(1) NOT NULL DEFAULT b'0',
  `fondoasignado` decimal(20,2) unsigned NOT NULL DEFAULT '0.00',
  `idsubtipogasto` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `EstatusASC` (`estatus`) USING BTREE,
  KEY `FInicioASC` (`finicio`) USING BTREE,
  KEY `IdEmpresaASC` (`idempresa`) USING BTREE,
  KEY `IdTipoReembolsoASC` (`idtiporeembolso`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reembolso`
--

LOCK TABLES `reembolso` WRITE;
/*!40000 ALTER TABLE `reembolso` DISABLE KEYS */;
/*!40000 ALTER TABLE `reembolso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptbalancegeneral`
--

DROP TABLE IF EXISTS `rptbalancegeneral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptbalancegeneral` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcuenta` int(10) unsigned NOT NULL,
  `codigo` varchar(10) NOT NULL,
  `nombrecta` varchar(75) NOT NULL,
  `tipocuenta` bit(1) NOT NULL DEFAULT b'0',
  `actpascap` int(10) unsigned NOT NULL DEFAULT '0',
  `parasuma` bit(1) NOT NULL DEFAULT b'0',
  `estotal` bit(1) NOT NULL DEFAULT b'0',
  `saldo` decimal(20,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=292 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptbalancegeneral`
--

LOCK TABLES `rptbalancegeneral` WRITE;
/*!40000 ALTER TABLE `rptbalancegeneral` DISABLE KEYS */;
INSERT INTO `rptbalancegeneral` VALUES (1,1775,'1','A C T I V O','',3,'\0','\0',7822310.45),(2,1776,'111','ACTIVO CIRCULANTE','',3,'\0','\0',528564.70),(3,1777,'11101','EFECTIVO','',3,'\0','\0',42326.43),(4,1778,'1110101','CAJA GENERAL','\0',3,'\0','\0',42326.43),(5,1779,'1110102','CAJA CHICA','\0',3,'\0','\0',0.00),(6,1780,'11102','BANCOS','',3,'\0','\0',486238.27),(7,1781,'1110201','BANCO CUSCATLAN','\0',3,'\0','\0',0.00),(8,1782,'1110202','BANCO INDUSTRIAL','\0',3,'\0','\0',54955.44),(9,2055,'1110203','BANCO INDUSTRIAL, S.A. $','\0',3,'\0','\0',431282.83),(10,1783,'112','CUENTAS POR COBRAR','',3,'\0','\0',579992.15),(11,1784,'11201','CLIENTES','',3,'\0','\0',0.00),(12,2007,'1120101','BIENES INMOBILIARIOS, S. A.','\0',3,'\0','\0',0.00),(13,2008,'1120102','EMPRESA TURISTICA, S. A.','\0',3,'\0','\0',0.00),(14,2009,'1120103','INMUEBLES, S. A.','\0',3,'\0','\0',0.00),(15,2010,'1120104','ASESORIAS INMOBILIARIAS, S. A.','\0',3,'\0','\0',0.00),(16,2011,'1120105','EVELYN DE TENENBAUM','\0',3,'\0','\0',0.00),(17,2013,'1120106','AVENTIS PHARMA. S.A.','\0',3,'\0','\0',0.00),(18,2023,'1120107','COMERCIAL EL TALLER, S. A.','\0',3,'\0','\0',0.00),(19,2028,'1120108','HACIENDA NUEVA COUNTRY CLUB','\0',3,'\0','\0',0.00),(20,2029,'1120109','ASOC. PROP. CONDOMINIO HACIENDA NUEVA','\0',3,'\0','\0',0.00),(21,2035,'1120110','PROCTER & GAMBLE INTERAMERICAS','\0',3,'\0','\0',0.00),(22,2039,'1120111','EMBAJADA DE ITALIA','\0',3,'\0','\0',0.00),(23,2043,'1120112','HOTELES Y TURISMO, S. A.','\0',3,'\0','\0',0.00),(24,2051,'1120113','JUAN ENRIQUE SATZ ACAJABON','\0',3,'\0','\0',0.00),(25,1785,'1120199','CLIENTES VARIOS','\0',3,'\0','\0',0.00),(26,1786,'11202','CUENTAS POR LIQUIDAR','',3,'\0','\0',-18521.55),(27,1787,'1120201','STELLA DORION','\0',3,'\0','\0',0.00),(28,1985,'1120202','JULIO CIFUENTES','\0',3,'\0','\0',0.00),(29,1991,'1120203','PROFESIONAL CORPORATIVA DE SERVICIOS','\0',3,'\0','\0',0.00),(30,1992,'1120204','PLEXICOLOR, S.A.','\0',3,'\0','\0',0.00),(31,1993,'1120205','CARLOS MARTINEZ / SUPER PROYECTOS','\0',3,'\0','\0',0.00),(32,1997,'1120206','CARLOS GONZALES','\0',3,'\0','\0',0.00),(33,1998,'1120207','JUAN ANTONIO JIMENEZ','\0',3,'\0','\0',0.00),(34,2001,'1120208','JACINTO FLORES','\0',3,'\0','\0',0.00),(35,2002,'1120209','SALVADOR CHOJOLAN','\0',3,'\0','\0',0.00),(36,2003,'1120210','GREGORIO RODRIGUEZ','\0',3,'\0','\0',0.00),(37,2004,'1120211','JUNKALCO, S.A.','\0',3,'\0','\0',0.00),(38,2024,'1120212','REPRESENTACIONES EN MADERA','\0',3,'\0','\0',0.00),(39,2027,'1120213','ASEGURADORA GENERAL, S. A.','\0',3,'\0','\0',0.00),(40,2030,'1120214','MEPALSA','\0',3,'\0','\0',0.00),(41,2031,'1120215','PROFESIONAL DE SERVICIOS, S.A.','\0',3,'\0','\0',0.00),(42,2032,'1120216','RADIOVISION, S.A.','\0',3,'\0','\0',0.00),(43,2033,'1120217','JORGE CASIA LOPEZ','\0',3,'\0','\0',0.00),(44,2034,'1120218','TELGUA, S.A.','\0',3,'\0','\0',0.00),(45,2048,'1120219','FRANKLIN CONTRERAS','\0',3,'\0','\0',0.00),(46,1788,'1120299','CUENTAS POR LIQUIDAR VARIAS','\0',3,'\0','\0',-18521.55),(47,1789,'11203','FUNCIONARIOS Y EMPLEADOS','',3,'\0','\0',0.00),(48,2038,'1120304','EMILIANO AMAYA GUAMUCH','\0',3,'\0','\0',0.00),(49,1790,'1120399','DIVERSOS','\0',3,'\0','\0',0.00),(50,1791,'11204','IMPUESTOS POR COBRAR','',3,'\0','\0',453313.70),(51,1792,'1120401','IVA POR COBRAR','\0',3,'\0','\0',212039.01),(52,1793,'1120402','ISR POR COBRAR','\0',3,'\0','\0',38622.89),(53,1921,'1120403','ISR A¥OS ANTERIORES','\0',3,'\0','\0',0.00),(54,1976,'1120404','CUOTA ANUAL DE EMPRESAS MERCANTILES','\0',3,'\0','\0',0.00),(55,1990,'1120405','ISET 1,997','\0',3,'\0','\0',0.00),(56,2036,'1120406','RETENCION IVA','\0',3,'\0','\0',5795.40),(57,2042,'1120407','EXENCION IVA','\0',3,'\0','\0',196856.40),(58,1948,'1120499','DIVERSOS','\0',3,'\0','\0',0.00),(59,7035,'11205','EMPRESAS RELACIONADAS','',3,'\0','\0',145200.00),(60,7036,'1120501','QUINTASUR, S. A.','\0',3,'\0','\0',145200.00),(61,1794,'113','INVENTARIOS','',3,'\0','\0',0.00),(62,1795,'11301','INVENTARIOS','',3,'\0','\0',0.00),(63,1796,'1130101','INVENTARIOS','\0',3,'\0','\0',0.00),(64,1797,'121','ACTIVOS FIJOS','',3,'\0','\0',6076325.25),(65,1798,'12101','PROPIEDAD PLANTA Y EQUIPO','',3,'\0','\0',6076325.25),(66,1799,'1210101','INMUEBLES','\0',3,'\0','\0',5388113.45),(67,1922,'1210102','VEHICULOS','\0',3,'\0','\0',528139.42),(68,1800,'1210103','MOBILIARIO Y EQUIPO','\0',3,'\0','\0',148526.00),(69,1801,'1210104','EQUIPO DE COMPUTACION','\0',3,'\0','\0',11546.38),(70,1802,'1210105','HERRAMIENTAS','\0',3,'\0','\0',0.00),(71,1803,'1210106','MAQUINARIA','\0',3,'\0','\0',0.00),(72,1804,'12102','CONSTRUCCIONES','',3,'\0','\0',0.00),(73,1805,'1210201','','\0',3,'\0','\0',0.00),(74,2050,'1210202','CASA ANTIGUA','\0',3,'\0','\0',0.00),(75,1806,'130','ACTIVO DIFERIDO','',3,'\0','\0',7773.55),(76,1807,'1300','DIFERIDOS','',3,'\0','\0',7773.55),(77,1808,'13001','GASTOS PAGADOS POR ANTICIPADO','',3,'\0','\0',1300.88),(78,1809,'1300101','','\0',3,'\0','\0',0.00),(79,2020,'1300102','TELGUA SERV. PAG. POR ANTICIPADO','\0',3,'\0','\0',1300.88),(80,1810,'1300199','DIVERSOS','\0',3,'\0','\0',0.00),(81,1811,'13002','DEPOSITOS VARIOS','',3,'\0','\0',6472.67),(82,1812,'1300201','EMPRESA ELECTRICA','\0',3,'\0','\0',2600.00),(83,2019,'1300202','LICENCIAS DE CONSTRUCCION','\0',3,'\0','\0',3872.67),(84,1813,'13003','GASTOS DE ORGANIZACION','',3,'\0','\0',0.00),(85,1814,'1300301','GASTOS DE ORGANIZACION','\0',3,'\0','\0',0.00),(86,1815,'131','OTROS ACTIVOS','',3,'\0','\0',622093.40),(87,1816,'13101','OTROS ACTIVOS','',3,'\0','\0',622093.40),(88,1817,'1310101','MARCAS Y PATENTES','\0',3,'\0','\0',0.00),(89,1818,'1310102','INVERSIONES  ( A )','\0',3,'\0','\0',622093.40),(90,1819,'1310103','DERECHO TELEFONICO','\0',3,'\0','\0',0.00),(91,1987,'1310104','OTRAS INVERSIONES   ( B )','\0',3,'\0','\0',0.00),(92,1999,'1310105','INVERSIONES \"B\"','\0',3,'\0','\0',0.00),(93,2041,'1310106','DEPOSITOS E.E.G.S.A.','',3,'\0','\0',0.00),(94,1950,'132','DEFICIT','',3,'\0','\0',7561.40),(95,1923,'13201','DEFICIT','',3,'\0','\0',7561.40),(96,1924,'1320101','DEFICIT','\0',3,'\0','\0',7561.40),(128,0,'','Subtotal de cuentas de activo que inician con 1','',3,'','\0',7822310.45),(129,0,'99999','Total de activo','',3,'\0','',7822310.45),(130,1820,'2','P A S I V O S','',4,'\0','\0',-2567602.97),(131,1821,'212','PASIVOS CIRCULANTE','',4,'\0','\0',-2567602.97),(132,1925,'2120','CUENTAS POR PAGAR','',4,'\0','\0',-2567602.97),(133,1822,'21201','PROVEEDORES','',4,'\0','\0',-999.00),(134,1823,'2120101','SERVITEL','\0',4,'\0','\0',0.00),(135,1824,'2120102','TELGUA, S.A.','\0',4,'\0','\0',-999.00),(136,1825,'2120103','','\0',4,'\0','\0',0.00),(137,1826,'2120104','','\0',4,'\0','\0',0.00),(138,1827,'2120105','','\0',4,'\0','\0',0.00),(139,1828,'2120106','','\0',4,'\0','\0',0.00),(140,1829,'2120107','','\0',4,'\0','\0',0.00),(141,1830,'2120108','','\0',4,'\0','\0',0.00),(142,1831,'2120109','','\0',4,'\0','\0',0.00),(143,2053,'2120112','SOLUCIONES LOGISTICAS','\0',4,'\0','\0',0.00),(144,2054,'2120113','EDIFICIO VILLA MAYOR','\0',4,'\0','\0',0.00),(145,1832,'2120199','DIVERSOS','\0',4,'\0','\0',0.00),(146,1833,'21202','ACREEDORES','',4,'\0','\0',-6373.21),(147,1834,'2120201','GUATEL','\0',4,'\0','\0',0.00),(148,1835,'2120202','E.E.G.S.A.','\0',4,'\0','\0',-4489.82),(149,1986,'2120203','EMPAGUA','\0',4,'\0','\0',0.00),(150,1926,'2120204','ACREEDORES VARIOS ( A )','\0',4,'\0','\0',0.00),(151,1927,'2120205','ACREEDORES   ( B )','\0',4,'\0','\0',0.00),(152,1994,'2120206','TELGUA, S. A.','\0',4,'\0','\0',0.00),(153,1928,'2120208','HACIENDA NUEVA COUNTRY CLUB','\0',4,'\0','\0',0.00),(154,1929,'2120209','U.S. POSTAL, S. A.','\0',4,'\0','\0',0.00),(155,2045,'2120210','TELEFONICA MOVILES GUATEMALA, S.A.','\0',4,'\0','\0',0.00),(156,2049,'2120211','CARGO EXPRESO, S.A.','\0',4,'\0','\0',0.00),(157,2056,'2120212','CPX, S.A.','\0',4,'\0','\0',0.00),(158,2057,'2120213','TASA MUNICIPAL E.E.G.S.A.','\0',4,'\0','\0',0.00),(159,2058,'2120214','SICESA','\0',4,'\0','\0',0.00),(160,1836,'2120299','DIVERSOS','\0',4,'\0','\0',-1883.39),(161,1837,'21203','IMPUESTOS POR PAGAR','',4,'\0','\0',-45943.45),(162,1838,'2120301','IVA POR PAGAR','\0',4,'\0','\0',-34830.60),(163,1930,'2120302','ISR POR PAGAR','\0',4,'\0','\0',0.00),(164,1931,'2120303','IMPUESTO UNICO SOBRE INMUEBLES','\0',4,'\0','\0',-11112.85),(165,1932,'2120304','CUOTA ANUAL DE SOCIEDADES','\0',4,'\0','\0',0.00),(166,1933,'2120305','IMPUESTO EMPRESAS MERCANTILES Y AGROP.','\0',4,'\0','\0',0.00),(167,1934,'2120307','','\0',4,'\0','\0',0.00),(168,1935,'2120308','','\0',4,'\0','\0',0.00),(169,1936,'2120309','','\0',4,'\0','\0',0.00),(170,1839,'2120399','DIVERSOS','\0',4,'\0','\0',0.00),(171,1840,'21204','RETENCIONES','',4,'\0','\0',0.01),(172,1841,'2120401','IGSS CUOTA LABORAL','\0',4,'\0','\0',0.00),(173,1937,'2120402','BANCO DE LOS TRABAJADORES','\0',4,'\0','\0',0.00),(174,1996,'2120403','RETENCION I.S.R.','\0',4,'\0','\0',0.01),(175,1978,'2120404','ISET POR PAGAR','\0',4,'\0','\0',0.00),(176,1938,'2120499','DIVERSOS','\0',4,'\0','\0',0.00),(177,1842,'21205','PRESTAMOS BANCARIOS','',4,'\0','\0',0.00),(178,1843,'212050','DEPOSITOS POR ARRENDAMIENTO','',4,'\0','\0',0.00),(179,2040,'2120502','EMBAJADA DE ITALIA','\0',4,'\0','\0',0.00),(180,1844,'2120599','DIVERSOS','\0',4,'\0','\0',0.00),(181,1845,'21206','OTRAS CUENTAS POR PAGAR','',4,'\0','\0',-2180327.32),(182,1846,'2120601','IGSS CUOTA PATRONAL','\0',4,'\0','\0',0.00),(183,1939,'2120602','DIVIDENDOS','\0',4,'\0','\0',-2091047.32),(184,1940,'2120603','RAFAEL HERNANDEZ ALBIZURES','\0',4,'\0','\0',0.00),(185,1941,'2120604','ROBIN TENENBAUM','\0',4,'\0','\0',0.00),(186,1988,'2120605','GEORGE TENENBAUM','\0',4,'\0','\0',0.00),(187,1989,'2120606','EVELYN DE TENENBAUM','\0',4,'\0','\0',0.00),(188,2006,'2120607','EMPRESA TURISTICA, S.A.','\0',4,'\0','\0',0.00),(189,2059,'2120608','BIENES INMOBILIARIOS, S. A.','\0',4,'\0','\0',-89280.00),(190,1949,'2120699','DIVERSOS','\0',4,'\0','\0',0.00),(191,1942,'21207','ANTICIPOS RECIBIDOS DE CLIENTES','',4,'\0','\0',-333960.00),(192,1943,'2120701','TELEFONICA CENTROAMERICA GUATEMALA, S.A.','\0',4,'\0','\0',0.00),(193,2012,'2120702','AVENTIS PHARM, S.A.','\0',4,'\0','\0',0.00),(194,2025,'2120703','MAYOREO FARMACEUTICO, S. A.','\0',4,'\0','\0',-144000.00),(195,2026,'2120704','JUAN MARIO MAZA MEZA','\0',4,'\0','\0',-144000.00),(196,2037,'2120705','PROCTER & GAMBLE INTERAMERICAS','\0',4,'\0','\0',0.00),(197,2044,'2120706','EMBAJADA DE ITALIA','\0',4,'\0','\0',-45960.00),(198,2047,'2120707','MARIO ESTUARDO FLORES ANDRADE','\0',4,'\0','\0',0.00),(199,1944,'21208','','',4,'\0','\0',0.00),(200,1945,'2120801','','\0',4,'\0','\0',0.00),(201,1946,'21209','UTILIDADES NO DISTRIBUIDAS','',4,'\0','\0',0.00),(202,1947,'2120901','UTILIDADES NO DISTRIBUIDAS','\0',4,'\0','\0',0.00),(257,0,'','Subtotal de cuentas de pasivo que inician con 2','',4,'','\0',-2567602.97),(258,0,'99999','Total de pasivo','',4,'\0','',-2567602.97),(259,1847,'3','CAPITAL, RESERVAS Y RESULTADOS','',5,'\0','\0',-4975240.26),(260,1848,'311','CAPITAL','',5,'\0','\0',-5238960.11),(261,1849,'31101','CAPITAL','',5,'\0','\0',-4064100.00),(262,1850,'3110101','CAPITAL SOCIAL','\0',5,'\0','\0',-4064100.00),(263,1851,'31102','RESERVA LEGAL','',5,'\0','\0',-307114.50),(264,1852,'3110201','RESERVA LEGAL','\0',5,'\0','\0',-307114.50),(265,1853,'31103','RESERVAS Y AMORTIZACIONES','',5,'\0','\0',-867745.61),(266,1854,'3110301','RESERVA DEP. INMUEBLES','\0',5,'\0','\0',-284511.19),(267,1855,'3110302','RESERVA DEP. VEHICULOS','\0',5,'\0','\0',-429043.00),(268,1856,'3110303','RESERVA DEP. MOBILIARIO Y EQUIPO','\0',5,'\0','\0',-145168.36),(269,1857,'3110304','RESERVA DEP. EQUIPO DE COMPUTACION','\0',5,'\0','\0',-9023.06),(270,1858,'3110305','RESERVA DEP. HERRAMIENTAS','\0',5,'\0','\0',0.00),(271,1971,'3110306','RESERVA DEP. MAQUINARIA','\0',5,'\0','\0',0.00),(272,1972,'3110307','RESERVA AMORTIZACION GASTOS ORGANIZACION','\0',5,'\0','\0',0.00),(273,1974,'31104','SUPERAVIT','',5,'\0','\0',0.00),(274,1975,'3110401','SUPERAVIT','\0',5,'\0','\0',0.00),(275,1951,'312','PERDIDAS Y GANANCIAS','',5,'\0','\0',263719.85),(276,1995,'31201','PERDIDAS Y GANANCIAS','',5,'\0','\0',263719.85),(277,1952,'3120101','PERDIDAS Y GANANCIAS','\0',5,'\0','\0',263719.85),(290,0,'','Subtotal de cuentas de capital que inician con 3','',5,'','\0',-4975240.26),(291,0,'99999','Total de capital','',5,'\0','',-4975240.26);
/*!40000 ALTER TABLE `rptbalancegeneral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptbalancesaldos`
--

DROP TABLE IF EXISTS `rptbalancesaldos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptbalancesaldos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcuentac` int(11) NOT NULL DEFAULT '0',
  `codigo` varchar(10) NOT NULL,
  `nombrecta` varchar(75) NOT NULL,
  `tipocuenta` bit(1) NOT NULL DEFAULT b'0',
  `anterior` decimal(20,2) NOT NULL DEFAULT '0.00',
  `debe` decimal(20,2) NOT NULL DEFAULT '0.00',
  `haber` decimal(20,2) NOT NULL DEFAULT '0.00',
  `actual` decimal(20,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `CodigoASC` (`codigo`) USING BTREE,
  KEY `TipoCuentaASC` (`tipocuenta`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1024 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptbalancesaldos`
--

LOCK TABLES `rptbalancesaldos` WRITE;
/*!40000 ALTER TABLE `rptbalancesaldos` DISABLE KEYS */;
INSERT INTO `rptbalancesaldos` VALUES (1,1239,'1','A C T I V O','',47647463.74,3991139.80,4758524.63,46880078.91),(2,1240,'111','ACTIVO CIRCULANTE','',2002494.72,2115691.24,1795522.04,2322663.92),(3,1241,'11101','EFECTIVO','',-35287.58,406203.74,369666.16,1250.00),(4,1242,'1110101','CAJA GENERAL','\0',-35787.58,406203.74,369666.16,750.00),(5,1243,'1110102','CAJA CHICA','\0',500.00,0.00,0.00,500.00),(6,1244,'11102','BANCOS','',2037782.30,1709487.50,1425855.88,2321413.92),(7,1245,'1110201','BANCO CUSCATLAN','\0',0.00,0.00,0.00,0.00),(8,1246,'1110202','BANCO INDUSTRIAL','\0',130815.77,1116690.90,784595.95,462910.72),(9,1698,'1110203','BANCO INDUSTRIAL, S.A. $','\0',1674968.12,592796.60,626794.00,1640970.72),(10,1730,'1110204','BANCO HSBC','\0',231998.41,0.00,14465.93,217532.48),(11,1247,'112','CUENTAS POR COBRAR','',12765000.56,1794645.31,2963002.59,11596643.28),(12,1248,'11201','CLIENTES','',1171991.21,1283870.39,1304964.76,1150896.84),(13,1383,'1120101','INDUPARTES, S. A.','\0',0.00,0.00,0.00,0.00),(14,1384,'1120102','INMUEBLES, S. A.','\0',0.00,0.00,0.00,0.00),(15,1385,'1120103','BANCO G & T','\0',0.00,0.00,0.00,0.00),(16,1475,'1120104','DIFOTO','\0',0.00,0.00,0.00,0.00),(17,1507,'1120105','ANEC, S.A.','\0',0.00,0.00,0.00,0.00),(18,1508,'1120106','EL VOLCAN, S.A.','\0',0.00,0.00,0.00,0.00),(19,1517,'1120107','ZETA ELECTRONICA, S.A.','\0',0.00,0.00,0.00,0.00),(20,1519,'1120108','PREFABRICADOS GUIROLA, S.A.','\0',0.00,0.00,0.00,0.00),(21,1529,'1120109','DISTRIBUIDORA LAS QUIANAS','\0',0.00,0.00,0.00,0.00),(22,1536,'1120110','MULTICOBROS, S.A.','\0',0.00,0.00,0.00,0.00),(23,1534,'1120111','RINCON MUSICAL','\0',0.00,0.00,0.00,0.00),(24,1537,'1120112','DIMESA','\0',0.00,0.00,0.00,0.00),(25,1692,'1120113','ERWIN CUQUE','\0',28378.90,0.00,0.00,28378.90),(26,1539,'1120114','CEDELEC','\0',0.00,0.00,0.00,0.00),(27,1541,'1120115','OPERADORA DE TIENDAS, S.A.','\0',0.00,0.00,0.00,0.00),(28,1553,'1120116','TELEFONICA','\0',0.00,0.00,0.00,0.00),(29,1555,'1120117','LOGIS DE CENTROAMERICA, S.A.','\0',0.00,0.00,0.00,0.00),(30,1570,'1120118','SIADSA','\0',0.00,0.00,0.00,0.00),(31,1571,'1120119','AGORA REDES, S.A.','\0',0.00,0.00,0.00,0.00),(32,1585,'1120120','NABLA RESIDENCIAL','\0',0.00,0.00,0.00,0.00),(33,1591,'1120121','SERVICIOS INTEGRADOS DE REPRESENTACION, S.A.','\0',425391.65,446479.12,425391.68,446479.09),(34,1594,'1120122','HAN KANG, S.A.','\0',0.00,0.00,0.00,0.00),(35,1595,'1120123','DIEGO NU¥O GARCIA','\0',0.00,0.00,0.00,0.00),(36,1598,'1120124','LORENZO HERNANDEZ','\0',0.00,0.00,0.00,0.00),(37,1599,'1120125','CARLOS ADOLFO GUZMAN LOPEZ','\0',0.00,0.00,0.00,0.00),(38,1600,'1120126','PABLO DE PAZ','\0',0.00,0.00,0.00,0.00),(39,1609,'1120127','MAURICIO JOSE GARCIA ZELAYA','\0',0.00,0.00,0.00,0.00),(40,1616,'1120128','JULIO CESAR CEBALLOS/AUTO KLASSE','\0',0.00,0.00,0.00,0.00),(41,1620,'1120129','CONSTRUCCIONES NABLA, S.A.','\0',0.00,0.00,0.00,0.00),(42,1623,'1120130','CORPORACION GASELLI, S.A.','\0',151166.76,0.00,0.00,151166.76),(43,1627,'1120131','SBA TORRES GUATEMALA, S.A.','\0',0.00,0.00,0.00,0.00),(44,1629,'1120132','SKINTEC, S.A.','\0',66211.01,33171.26,33039.75,66342.52),(45,1633,'1120133','ECO-ESTILO, S.A.','\0',62995.61,21083.66,20913.41,63165.86),(46,1635,'1120134','ADQUISICIONES Y REPRESENTACIONES, S.A.','\0',69411.50,140454.32,209865.82,0.00),(47,1655,'1120135','GRADO A, S. A.','\0',1000.02,84778.66,84778.66,1000.02),(48,1656,'1120136','ELECKTRA DE GUATEMALA','\0',9946.07,73861.96,83808.03,0.00),(49,1657,'1120137','ALTURISA','\0',0.00,31792.79,31792.79,0.00),(50,1658,'1120138','DISAR (HELADOS SARITA)','\0',0.00,8011.77,8011.77,0.00),(51,1659,'1120139','CORPORACION VIURI, S. A.','\0',0.00,0.00,0.00,0.00),(52,1660,'1120140','TIC TAC','\0',0.00,0.00,0.00,0.00),(53,1661,'1120141','CLAUDIA JEANNETE ZEPEDA LOPEZ','\0',5916.53,0.00,0.00,5916.53),(54,1662,'1120142','EL CHINITO VELOZ, S. A.','\0',0.00,0.00,0.00,0.00),(55,1663,'1120143','DROGUERIA CENTRO HISTORICO, S.A.','\0',0.00,23150.69,23150.69,0.00),(56,1664,'1120144','ALIMENTOS QUE DELY, S. A.','\0',0.00,0.00,0.00,0.00),(57,1665,'1120145','PASTELERIAS HOLANDESA/ALIMENTOS HOLANDESA,','\0',7681.12,7671.84,0.00,15352.96),(58,1666,'1120146','CONECTION, S. A.','\0',22826.09,7671.84,15154.25,15343.68),(59,1667,'1120147','DISTRIBUIDORA CONTINENTAL','\0',0.00,0.00,0.00,0.00),(60,1668,'1120148','SAVONA DE GUATEMALA','\0',0.00,8188.60,8188.60,0.00),(61,1674,'1120149','PATSY, S. A.','\0',0.00,29562.57,29562.57,0.00),(62,1677,'1120150','PRODUCTOS MULTIPLES, S. A. (MUEBLES FIESTA)','\0',0.00,0.00,0.00,0.00),(63,1680,'1120151','SUZUKI','\0',0.00,0.00,0.00,0.00),(64,1702,'1120152','INDUSTRIAS Y MANTENIMIENTO, S. A.','\0',0.00,0.00,0.00,0.00),(65,1703,'1120153','JOSE ESTUARDO GRAJEDA','\0',12233.42,6241.20,0.00,18474.62),(66,1704,'1120154','INDUSTRIAS ASSILEM, S. A.','\0',32125.15,40040.33,0.00,72165.48),(67,1718,'1120155','DOLLARCITY GUATEMALA, S. A.','\0',0.00,48516.81,48516.81,0.00),(68,1720,'1120156','KALAN INTERNATIONAL, S. A.','\0',0.00,32757.78,32757.78,0.00),(69,1722,'1120157','SEAMS, S. A. / SONIA DE SPILLARI','\0',134654.08,19670.20,10000.00,144324.28),(70,1724,'1120158','CAIRO ANTONIO SARAVIA','\0',0.01,22538.54,0.00,22538.55),(71,1729,'1120159','IMPORTACIONES JL, S. A.','\0',0.00,0.00,0.00,0.00),(72,1733,'1120160','INVERSIONES LALI','\0',0.00,7989.85,7989.85,0.00),(73,1734,'1120165','SOO NAM KIM JIN','\0',25550.86,10959.39,0.00,36510.25),(74,1735,'1120166','NOBEL TEXTIL (HANG KANG)','\0',79206.64,27451.98,54966.08,51692.54),(75,1634,'1120180','ECO-ESTILO, S.A.','\0',0.00,0.00,0.00,0.00),(76,1639,'1120181','ELEKTRA DE GUATEMALA','\0',0.00,0.00,0.00,0.00),(77,1640,'1120182','GRADO A, S.A.','\0',0.00,0.00,0.00,0.00),(78,1643,'1120183','ALTURISA GUATEMALA, S.A.','\0',0.00,0.00,0.00,0.00),(79,1684,'1120184','IMPORTADORA DE CALZADO MATRIX','\0',230.86,7791.09,7791.09,230.86),(80,1688,'1120185','ERWIN FRANCISCO CUQUE HERNANDEZ','\0',0.00,0.00,0.00,0.00),(81,1694,'1120186','CARICIA DE GUATEMALA, S.A.','\0',0.00,0.00,0.00,0.00),(82,1715,'1120187','GLAM BEAUTY, S. A.','\0',0.00,7950.10,7950.10,0.00),(83,1731,'1120188','YE TEX, S.A.','\0',0.00,83359.87,83359.87,0.00),(84,1758,'1120189','ALMACENADORA CENTROAMERICANA, S. A.','\0',0.00,0.00,0.00,0.00),(85,7051,'1120190','ESTAMPADOS DEL LAGO','\0',0.00,653.95,0.00,653.95),(86,7053,'1120191','AGORA REDES','\0',35574.12,35574.12,71148.24,0.00),(87,7080,'1120192','PRODUCTOS ALIMENTICIOS MONRE, S. A.','\0',0.00,0.00,0.00,0.00),(88,1249,'1120199','CLIENTES VARIOS','\0',1490.81,16496.10,6826.92,11159.99),(89,1250,'11202','CUENTAS POR LIQUIDAR','',627034.14,358778.38,634218.20,351594.32),(90,1251,'1120201','LEWIS BATRES GALLEGOS','\0',0.00,0.00,0.00,0.00),(91,1415,'1120202','FERNANDO SAENZ','\0',0.00,0.00,0.00,0.00),(92,1416,'1120203','RAUL GARCIA','\0',0.00,0.00,0.00,0.00),(93,1417,'1120204','RUBEN HOMERO LOPEZ MIJANGOS','\0',0.00,0.00,0.00,0.00),(94,1418,'1120205','EXPROMOSA','\0',0.00,0.00,0.00,0.00),(95,1419,'1120206','PISOS ARAUZ, S. A.','\0',0.00,0.00,0.00,0.00),(96,1420,'1120207','FABRICA LA PATRONA','\0',0.00,0.00,0.00,0.00),(97,1447,'1120208','RICARDO ABA PULUC','\0',0.00,0.00,0.00,0.00),(98,1450,'1120209','ROBERTO SERRANO FIGUEROA','\0',0.00,0.00,0.00,0.00),(99,1454,'1120210','HUMBERTO PAZ','\0',0.00,0.00,0.00,0.00),(100,1455,'1120211','CRISTOBAL GARCIA','\0',0.00,0.00,0.00,0.00),(101,1456,'1120212','EL JARDIN','\0',0.00,0.00,0.00,0.00),(102,1457,'1120213','HUMBERTO FUENTES','\0',0.00,0.00,0.00,0.00),(103,1464,'1120214','AUGUSTO CESAR MANSILLA','\0',441.96,0.00,0.00,441.96),(104,1468,'1120215','ALUVISA','\0',0.00,0.00,0.00,0.00),(105,1473,'1120216','PROYECTOS Y DESARROLLOS URBANISTICOS','\0',0.00,0.00,0.00,0.00),(106,1476,'1120217','SERGIO NERY GONZALES','\0',0.00,0.00,0.00,0.00),(107,1477,'1120218','ASCALCO, S. A.','\0',0.00,0.00,0.00,0.00),(108,1478,'1120219','MAXIMILIANO MARQUEZ','\0',0.00,0.00,0.00,0.00),(109,1479,'1120220','COMACO, S. A.','\0',0.00,0.00,0.00,0.00),(110,1480,'1120221','ANTONIO RAMIREZ','\0',0.00,0.00,0.00,0.00),(111,1481,'1120222','SERGIO NERY GONZALEZ','\0',0.00,0.00,0.00,0.00),(112,1482,'1120223','E.E.G.S.A.','\0',0.00,0.00,0.00,0.00),(113,1483,'1120224','VENANCIO CHACON','\0',0.00,0.00,0.00,0.00),(114,1484,'1120225','ALBERTO MEDRANO','\0',0.00,0.00,0.00,0.00),(115,1485,'1120226','GUATEL','\0',0.00,0.00,0.00,0.00),(116,1486,'1120227','ANTONIO NU¥EZ','\0',0.00,0.00,0.00,0.00),(117,1489,'1120228','MUNICIPALIDAD DE GUATEMALA','\0',0.00,0.00,0.00,0.00),(118,1490,'1120229','URBANA ( GIOVANNI POLANCO )','\0',0.00,0.00,0.00,0.00),(119,1493,'1120230','CERCAS METALICAS LA UNION,S.A.','\0',0.00,0.00,0.00,0.00),(120,1496,'1120231','COMCEL, S. A.','\0',0.00,0.00,0.00,0.00),(121,1498,'1120232','ESO ES HOLLYWOOD, S. A.','\0',0.00,0.00,0.00,0.00),(122,1499,'1120233','KAREN DE TENENBAUM','\0',0.00,0.00,0.00,0.00),(123,1501,'1120234','PUBLIVENTAS, S.A.','\0',0.00,0.00,0.00,0.00),(124,1504,'1120235','MILTON D. TORRES CARAVANTES','\0',0.00,0.00,0.00,0.00),(125,1514,'1120236','TENCO, S.A.','\0',0.00,0.00,0.00,0.00),(126,1518,'1120237','JUAN ANTONIO JIMENEZ','\0',0.00,0.00,0.00,0.00),(127,1521,'1120238','MAPRI/PRODUCTOS HIDRAULICOS Y CIA LTDA.','\0',0.00,0.00,0.00,0.00),(128,1525,'1120239','CANELLA, S.A.','\0',0.00,0.00,0.00,0.00),(129,1526,'1120240','QUATRO MARKAS, S.A.','\0',0.00,0.00,0.00,0.00),(130,1528,'1120241','AEROFOTOMAPAS','\0',0.00,0.00,0.00,0.00),(131,1531,'1120242','MARIANO BAUTISTA OROZCO','\0',0.00,0.00,0.00,0.00),(132,1532,'1120243','AUTOS Y SERVICIOS, S.A.','\0',0.00,0.00,0.00,0.00),(133,1533,'1120244','ING. RAFAEL PILO¥A','\0',0.00,0.00,0.00,0.00),(134,1542,'1120245','EMCO','\0',0.00,0.00,0.00,0.00),(135,1543,'1120246','JUNKALCO, S.A.','\0',0.00,0.00,0.00,0.00),(136,1544,'1120247','HUGO EDGAR CU COBAR','\0',0.00,0.00,0.00,0.00),(137,1546,'1120248','AXIS, S.A.','\0',0.00,0.00,0.00,0.00),(138,1547,'1120249','ING. CARLOS MARTINEZ GIRON','\0',0.00,0.00,0.00,0.00),(139,1548,'1120250','ING. MANUEL ARCHILA','\0',0.00,0.00,0.00,0.00),(140,1549,'1120251','CONSULTORIA INMOBILIARIA, S.A.','\0',0.00,0.00,0.00,0.00),(141,1551,'1120252','GREGORIO RODRIGUEZ','\0',0.00,0.00,0.00,0.00),(142,1554,'1120253','MUNICIPALIDAD DE VILLA NUEVA','\0',0.00,0.00,0.00,0.00),(143,1558,'1120254','PROFESIONAL DE SERVICIOS,S.A','\0',0.00,0.00,0.00,0.00),(144,1560,'1120255','INMOBILIARIA MARIA AMELIA, S.A.','\0',0.00,0.00,0.00,0.00),(145,1686,'1120256','FRANCISCO MENENDEZ','\0',6165.88,0.00,0.00,6165.88),(146,1726,'1120257','FRANCISCO COC','\0',107300.00,0.00,0.00,107300.00),(147,1556,'1120268','ACABADOS TEXTILES, S.A.','\0',0.00,0.00,0.00,0.00),(148,1562,'1120269','INMOBILIARIA LA QUINTA CIA. LTDA.','\0',0.00,0.00,0.00,0.00),(149,1563,'1120270','ORION, S.A.','\0',0.00,0.00,0.00,0.00),(150,1564,'1120271','INMUEBLES, S.A.','\0',0.00,0.00,0.00,0.00),(151,1569,'1120272','MAURO QUINTANA','\0',0.00,0.00,0.00,0.00),(152,1578,'1120273','RAFAEL PILO¥A','\0',0.00,0.00,0.00,0.00),(153,1582,'1120274','DAHO POZOS DE CENTROAMERICA, S. A.','\0',0.00,0.00,0.00,0.00),(154,1587,'1120275','RODOLFO CARDENAS','\0',0.00,0.00,0.00,0.00),(155,1588,'1120276','GEOCIMSA','\0',0.00,0.00,0.00,0.00),(156,1593,'1120277','MULTICONCRETOS, S.A.','\0',0.00,0.00,0.00,0.00),(157,1618,'1120278','CYBERNET','\0',0.00,0.00,0.00,0.00),(158,1619,'1120279','LIBELLE, S. A.','\0',0.00,0.00,0.00,0.00),(159,1638,'1120280','CONSTRUCCIONES NABLA, S.A.','\0',0.00,0.00,0.00,0.00),(160,1713,'1120281','ZELU, S.A.','\0',220000.00,0.00,4000.00,216000.00),(161,1252,'1120299','CUENTAS POR LIQUIDAR','\0',293126.30,358778.38,630218.20,21686.48),(162,1253,'11203','FUNCIONARIOS Y EMPLEADOS','',14204.63,45368.87,42253.50,17320.00),(163,1739,'1120301','ABDIEL LOPEZ XURUC','\0',0.00,0.00,0.00,0.00),(164,1740,'1120302','AGUSTIN CULAJAY EQUITE','\0',800.00,0.00,100.00,700.00),(165,1741,'1120303','BLANCA CECILIA RAMOS CUTERES','\0',0.00,0.00,0.00,0.00),(166,1742,'1120304','BRENDA JEANNETTE DEL CID RODRIGUEZ','\0',0.00,0.00,0.00,0.00),(167,1743,'1120305','CARLOS ADOLFO GUZMAN LOPEZ','\0',3000.00,0.00,300.00,2700.00),(168,1744,'1120306','CARLOS ENRIQUE SICAN','\0',6130.00,0.00,570.00,5560.00),(169,1745,'1120307','CARLOS RENE MONTERROSO GONZALEZ','\0',0.00,0.00,0.00,0.00),(170,1746,'1120308','EMELIN ALEJANDRA HERNANDEZ SURAY','\0',-800.00,800.00,0.00,0.00),(171,1747,'1120309','ENRIQUE SATZ ESPINOZA','\0',0.00,0.00,0.00,0.00),(172,1748,'1120310','JOSE EVERARDO PABLO','\0',300.00,0.00,150.00,150.00),(173,1749,'1120311','JOSE FERNANDO PEREZ ALVAREZ','\0',0.00,0.00,0.00,0.00),(174,1750,'1120312','JOSE MANUEL ARIAS MARTINEZ','\0',4800.00,0.00,480.00,4320.00),(175,1751,'1120313','JUAN ENRIQUE SATZ ACAJABON','\0',0.00,0.00,0.00,0.00),(176,1752,'1120314','LUIS ALBERTO RAXON','\0',0.00,0.00,0.00,0.00),(177,1753,'1120315','MANUEL AGUSTIN MENDOZA VALENZUELA','\0',0.00,0.00,0.00,0.00),(178,1754,'1120316','MARIA SOLEDAD BEDOYA PAREDES','\0',0.00,0.00,0.00,0.00),(179,1755,'1120317','MARIO ARTURO GODINEZ ENRIQUEZ','\0',0.00,0.00,0.00,0.00),(180,1756,'1120318','MELVIN ORLANDO MU¥OZ RAMIREZ','\0',580.00,0.00,290.00,290.00),(181,1757,'1120319','ROSALIO CUSHE MORALES','\0',0.00,0.00,0.00,0.00),(182,7075,'1120320','EDWIN CASTILLO','\0',0.00,4000.00,400.00,3600.00),(183,1254,'1120399','ANTICIPO A SUELDOS','\0',-605.37,40568.87,39963.50,0.00),(184,1255,'11204','IMPUESTOS POR COBRAR','',936170.58,106627.67,981566.13,61232.12),(185,1256,'1120401','IVA POR COBRAR','\0',-141.01,37334.31,37193.30,0.00),(186,1257,'1120402','ISR POR COBRAR','\0',936311.59,66875.31,941954.78,61232.12),(187,1386,'1120403','ISR A¥OS ANTERIORES','\0',0.00,0.00,0.00,0.00),(188,1465,'1120404','CUOTA ANUAL EMPRESAS MERCANTILES','\0',0.00,0.00,0.00,0.00),(189,1495,'1120405','ISET 1,997.-','\0',0.00,0.00,0.00,0.00),(190,1644,'1120407','RETENCION IVA','\0',0.00,2418.05,2418.05,0.00),(191,1759,'11205','EMPRESAS RELACIONADAS','',10015600.00,0.00,0.00,10015600.00),(192,1760,'1120501','BIENES INMOBILIARIOS, S. A.','\0',10015600.00,0.00,0.00,10015600.00),(193,1258,'113','INVENTARIOS','',0.00,0.00,0.00,0.00),(194,1259,'11301','INVENTARIOS','',0.00,0.00,0.00,0.00),(195,1260,'1130101','INVENTARIOS','\0',0.00,0.00,0.00,0.00),(196,1261,'121','ACTIVOS FIJOS','',32107769.45,80803.25,0.00,32188572.70),(197,1262,'12101','PROPIEDAD PLANTA Y EQUIPO','',29306608.62,1071.43,0.00,29307680.05),(198,1263,'1210101','INMUEBLES','\0',28654601.45,0.00,0.00,28654601.45),(199,1387,'1210102','VEHICULOS','\0',160928.57,0.00,0.00,160928.57),(200,1264,'1210103','MOBILIARIO Y EQUIPO','\0',434997.58,1071.43,0.00,436069.01),(201,1265,'1210104','EQUIPO DE COMPUTACION','\0',56081.02,0.00,0.00,56081.02),(202,1266,'1210105','HERRAMIENTAS','\0',0.00,0.00,0.00,0.00),(203,1267,'1210106','MAQUINARIA','\0',0.00,0.00,0.00,0.00),(204,1524,'1210199','ACTIVOS VARIOS','\0',0.00,0.00,0.00,0.00),(205,1268,'12102','CONSTRUCCIONES','',2801160.83,79731.82,0.00,2880892.65),(206,1269,'1210201','CONSTRUCCIONES EN PROCESO','\0',0.00,0.00,0.00,0.00),(207,1568,'1210202','OFICINAS PLATINA NIVEL 12','\0',0.00,0.00,0.00,0.00),(208,1630,'1210203','PLAZA DEL AHORRO BOCA DEL MONTE','\0',0.00,0.00,0.00,0.00),(209,1632,'1210204','CENMA','\0',0.00,0.00,0.00,0.00),(210,1697,'1210205','LOCALES SARITA Y PATSY','\0',0.00,0.00,0.00,0.00),(211,1705,'1210206','PASEO MONTE MARIA','\0',0.00,0.00,0.00,0.00),(212,1706,'1210207','BODEGAS KM. 17.5 SAN JUAN SACATEPEQUEZ','\0',2801160.83,79731.82,0.00,2880892.65),(213,1711,'1210208','PASEO MONTE MARIA','\0',0.00,0.00,0.00,0.00),(214,1728,'1210209','DOLLAR CITY','\0',0.00,0.00,0.00,0.00),(215,1270,'130','ACTIVO DIFERIDO','',3665.24,0.00,0.00,3665.24),(216,1271,'1300','DIFERIDOS','',3665.24,0.00,0.00,3665.24),(217,1272,'13001','GASTOS PAGADOS POR ANTICIPADO','',2315.24,0.00,0.00,2315.24),(218,1273,'1300101','','\0',0.00,0.00,0.00,0.00),(219,1580,'1300102','TELGUA SERV. PAG. POR ANTICIPADO','\0',2315.24,0.00,0.00,2315.24),(220,1274,'1300199','DIVERSOS','\0',0.00,0.00,0.00,0.00),(221,1275,'13002','DEPOSITOS VARIOS','',1350.00,0.00,0.00,1350.00),(222,1276,'1300201','EMPRESA ELECTRICA','\0',1350.00,0.00,0.00,1350.00),(223,1552,'1300202','MUNICIPALIDAD VILLA NUEVA (LIC.CONST.)','\0',0.00,0.00,0.00,0.00),(224,1277,'13003','GASTOS DE ORGANIZACION','',0.00,0.00,0.00,0.00),(225,1278,'1300301','GASTOS DE ORGANIZACION','\0',0.00,0.00,0.00,0.00),(226,1279,'131','OTROS ACTIVOS','',23165.54,0.00,0.00,23165.54),(227,1280,'13101','OTROS ACTIVOS','',23165.54,0.00,0.00,23165.54),(228,1281,'1310101','MARCAS Y PATENTES','\0',60.00,0.00,0.00,60.00),(229,1282,'1310102','INVERSIONES','\0',0.00,0.00,0.00,0.00),(230,1283,'1310103','DERECHO TELEFONICO','\0',9640.00,0.00,0.00,9640.00),(231,1601,'1310104','OTRAS INVERSIONES','\0',2380.00,0.00,0.00,2380.00),(232,1621,'1310105','PAJA DE AGUA','\0',10245.54,0.00,0.00,10245.54),(233,1388,'1310199','DEPOSITOS VARIOS','\0',840.00,0.00,0.00,840.00),(234,1421,'132','DEFICIT','',745368.23,0.00,0.00,745368.23),(235,1422,'13201','DEFICIT','',745368.23,0.00,0.00,745368.23),(236,1423,'1320101','DEFICIT','\0',718508.23,0.00,0.00,718508.23),(237,1510,'1320102','DEFICIT EN VENTA DE ACTIVOS FIJOS','\0',26860.00,0.00,0.00,26860.00),(238,1284,'2','P A S I V O S','',-28938607.86,608362.38,6979501.19,-35309746.67),(239,1649,'2020741','CLAUDIA ZEPEDA','\0',0.00,0.00,0.00,0.00),(240,1651,'2020743','EL CHINITO VELOZ,S.A.','\0',0.00,0.00,0.00,0.00),(241,1285,'212','PASIVOS CIRCULANTE','',-28938607.86,608362.38,6979501.19,-35309746.67),(242,1389,'2120','CUENTAS POR PAGAR','',-28938607.86,608362.38,6979501.19,-35309746.67),(243,1286,'21201','PROVEEDORES','',-2338.23,5492.54,4350.09,-1195.78),(244,1287,'2120101','COMCEL, S. A.','\0',0.00,0.00,0.00,0.00),(245,1288,'2120102','TELGUA, S. A.','\0',-758.00,2284.00,1145.00,381.00),(246,1289,'2120103','COMTECH','\0',0.00,0.00,0.00,0.00),(247,1290,'2120104','EL JARDIN, S. A.','\0',0.00,0.00,0.00,0.00),(248,1291,'2120105','SERVIJARDIN','\0',0.00,0.00,0.00,0.00),(249,1292,'2120106','CAJA CHICA','\0',0.00,0.00,0.00,0.00),(250,1293,'2120107','EMPRESA ELECTRICA DE GUATEMALA, S.A.','\0',0.00,0.00,0.00,0.00),(251,1294,'2120108','PUBLICIDAD FUTURA COMUNICACION','\0',0.00,0.00,0.00,0.00),(252,1295,'2120109','MEDTOP, S.A.','\0',0.00,0.00,0.00,0.00),(253,1589,'2120110','ASESORIAS INMOBILIARIAS, S.A.','\0',0.00,0.00,0.00,0.00),(254,1592,'2120111','PROFESIONAL DE SERVICIOS, S.A.','\0',0.00,0.00,0.00,0.00),(255,1602,'2120112','CABLENET, S.A.','\0',-1580.23,3208.54,3205.09,-1576.78),(256,1622,'2120113','SUPER PROYECTOS','\0',0.00,0.00,0.00,0.00),(257,1626,'2120114','S.I.P.P.S.A.','\0',0.00,0.00,0.00,0.00),(258,1670,'2120115','COEIMSA','\0',0.00,0.00,0.00,0.00),(259,1737,'2120116','LANCO PAINTS GUATEMALA, S.A.','\0',0.00,0.00,0.00,0.00),(260,1296,'2120199','PROVEEDORES DIVERSOS','\0',0.00,0.00,0.00,0.00),(261,1297,'21202','ACREEDORES','',-9551889.17,27200.11,29568.89,-9554257.95),(262,1298,'2120201','GUATEL','\0',0.00,0.00,0.00,0.00),(263,1299,'2120202','E.E.G.S.A.','\0',0.00,0.00,14157.73,-14157.73),(264,1390,'2120203','EMPAGUA','\0',0.00,0.00,0.00,0.00),(265,1391,'2120204','ACREEDORES VARIOS','\0',-9533905.69,0.00,0.00,-9533905.69),(266,1392,'2120205','RAFAEL HERNANDEZ ALBIZURES','\0',0.00,0.00,0.00,0.00),(267,1393,'2120206','ASEGURADORA GENERAL','\0',0.00,0.00,0.00,0.00),(268,1394,'2120207','COMCEL, S. A.','\0',0.00,0.00,4633.66,-4633.66),(269,1395,'2120208','MILTON DANILO TORRES CARAVANTES','\0',0.00,0.00,0.00,0.00),(270,1396,'2120209','TALLER GARCIA','\0',0.00,0.00,0.00,0.00),(271,1506,'2120210','TELGUA, S. A.','\0',0.00,0.00,0.00,0.00),(272,1509,'2120211','GRUPO DE SERVICIOS DE INFORMACION,S.A.','\0',-107.41,0.00,0.00,-107.41),(273,1520,'2120212','INMOBILIARIA SAN JORGE','\0',0.00,0.00,0.00,0.00),(274,1540,'2120213','TELEFONICA','\0',0.00,0.00,0.00,0.00),(275,1557,'2120214','PENINSULA MERCANTIL, S.A.','\0',0.00,0.00,0.00,0.00),(276,1559,'2120215','INMOBILIARIA MARIA AMELIA, S.A.','\0',0.00,0.00,0.00,0.00),(277,1583,'2120216','ATESA','\0',0.00,0.00,0.00,0.00),(278,1584,'2120217','SISTEMAS GENERALES','\0',0.00,0.00,0.00,0.00),(279,1603,'2120218','JORGE ROBERTO ROBLES','\0',0.00,0.00,0.00,0.00),(280,1604,'2120219','CABLENET, S.A.','\0',0.00,0.00,0.00,0.00),(281,1611,'2120220','JORGE CASIA','\0',0.00,0.00,0.00,0.00),(282,1612,'2120221','ANTILLO','\0',0.00,0.00,0.00,0.00),(283,1678,'2120222','ARCHILA RIVERA Y COMPA¥IA LIMITADA','\0',0.00,0.00,0.00,0.00),(284,1685,'2120223','FRANCISCO COC','\0',-4873.55,0.00,0.00,-4873.55),(285,1689,'2120224','INVERSIONES RUSSELL, S.A.','\0',0.00,0.00,0.00,0.00),(286,1693,'2120225','PROYECTOS CARNAVAL, S.A.','\0',0.00,0.00,0.00,0.00),(287,1707,'2120226','TASA MUNICIPAL E.E.G.S.A.','\0',0.00,0.00,0.00,0.00),(288,1709,'2120227','GRUPO GALIL, S.A.','\0',0.00,0.00,0.00,0.00),(289,1719,'2120228','OFICINA Y ESTILO, S.A.','\0',0.00,0.00,0.00,0.00),(290,1736,'2120229','CONTROL TOTAL DE PLAGAS, S.A.','\0',0.00,0.00,0.00,0.00),(291,1300,'2120299','ACREEDORES DIVERSOS','\0',-13002.52,27200.11,10777.50,3420.09),(292,1301,'21203','IMPUESTOS POR PAGAR','',-96312.77,147632.04,192002.41,-140683.14),(293,1302,'2120301','IVA POR PAGAR','\0',-96312.77,135924.35,136261.78,-96650.20),(294,1397,'2120302','ISR POR PAGAR','\0',0.00,11707.69,0.00,11707.69),(295,1398,'2120303','IMPUESTO S/INMUEBLES','\0',0.00,0.00,55740.63,-55740.63),(296,1399,'2120304','CUOTA ANUAL DE SOCIEDADES','\0',0.00,0.00,0.00,0.00),(297,1494,'2120305','IMPUESTO DE EMPRESAS MERCANTILES Y AGROP','\0',0.00,0.00,0.00,0.00),(298,1690,'2120306','INDUSTRIA DE MATERIALES DECORATIVOS, S.A.','\0',0.00,0.00,0.00,0.00),(299,1691,'2120307','CARMEN PATRICIA MENCOS CAJAS','\0',0.00,0.00,0.00,0.00),(300,1708,'2120308','GRUPO COMUDISA, S.A','\0',0.00,0.00,0.00,0.00),(301,1303,'2120399','DIVERSOS','\0',0.00,0.00,0.00,0.00),(302,1304,'21204','RETENCIONES','',166615.90,116041.06,292743.31,-10086.35),(303,1305,'2120401','IGSS CUOTA LABORAL','\0',-5316.25,9311.11,4211.65,-216.79),(304,1400,'2120402','BANCO DE LOS TRABAJADORES','\0',0.00,0.00,0.00,0.00),(305,1461,'2120403','RETENCION ISR','\0',171932.15,106729.95,288531.66,-9869.56),(306,1487,'2120404','ISET POR PAGAR','\0',0.00,0.00,0.00,0.00),(307,1614,'2120499','VARIOS','\0',0.00,0.00,0.00,0.00),(308,1306,'21205','PRESTAMOS BANCARIOS','',0.00,0.00,16201.33,-16201.33),(309,1307,'2120599','DIVERSOS','\0',0.00,0.00,16201.33,-16201.33),(310,1308,'21206','OTRAS CUENTAS POR PAGAR','',-18722605.97,311996.63,6394532.02,-24805141.36),(311,1309,'2120601','IGSS CUOTA LABORAL','\0',-13484.22,9544.88,11047.98,-14987.32),(312,1401,'2120602','DIVIDENDOS','\0',-17918345.33,280851.75,6346284.04,-23983777.62),(313,1402,'2120603','FRANCISCO MARROQUIN (FINIQ. LABORAL)','\0',0.00,0.00,0.00,0.00),(314,1403,'2120604','ROBIN TENENBAUM','\0',0.00,0.00,0.00,0.00),(315,1462,'2120605','ABRAHAM TENENBAUM','\0',0.00,0.00,0.00,0.00),(316,1463,'2120606','GEORGE TENENBAUM','\0',0.00,0.00,0.00,0.00),(317,1527,'2120607','LUIS MORENO LAMBEA','\0',0.00,0.00,0.00,0.00),(318,1538,'2120608','ARQ. FERNANDO SAENZ','\0',0.00,0.00,0.00,0.00),(319,1565,'2120609','EVELYN DE TENENBAUM','\0',-14400.00,21600.00,7200.00,0.00),(320,1566,'2120610','ORION, S. A.','\0',0.00,0.00,0.00,0.00),(321,1567,'2120611','BADRIAN, S. A.','\0',0.00,0.00,0.00,0.00),(322,1590,'2120612','EMPRESA TURISTICA, S. A.','\0',-776376.42,0.00,0.00,-776376.42),(323,1762,'2120613','BIENES INMOBILIARIOS, S. A.','\0',0.00,0.00,0.00,0.00),(324,7096,'2120614','BONO 14','\0',0.00,0.00,30000.00,-30000.00),(325,1404,'2120699','DIVERSOS','\0',0.00,0.00,0.00,0.00),(326,1405,'21207','ANTICIPOS RECIBIDOS DE CLIENTES','',-732077.62,0.00,50103.14,-782180.76),(327,1448,'2120701','DIMECO, S. A.  ( LOCAL 7 )','\0',0.00,0.00,0.00,0.00),(328,1449,'2120702','ANEC, S. A.','\0',0.00,0.00,0.00,0.00),(329,1451,'2120703','MUNDICENTRO, S. A.','\0',0.00,0.00,0.00,0.00),(330,1452,'2120704','GRUPO SOLID, S. A.','\0',0.00,0.00,0.00,0.00),(331,1453,'2120705','DIFOTO','\0',0.00,0.00,0.00,0.00),(332,1466,'2120706','INDUPARTS, S. A.','\0',0.00,0.00,0.00,0.00),(333,1474,'2120707','CEDELEC','\0',0.00,0.00,0.00,0.00),(334,1492,'2120708','RICARDO PEREZ','\0',0.00,0.00,0.00,0.00),(335,1497,'2120709','DISTRIBUIDORA LAS QUIANAS','\0',0.00,0.00,0.00,0.00),(336,1500,'2120710','EL VOLCAN, S.A.','\0',0.00,0.00,0.00,0.00),(337,1502,'2120711','ZETA ELECTRONICA/HUGO ADONAY','\0',0.00,0.00,0.00,0.00),(338,1503,'2120712','RINCON MUSICAL','\0',0.00,0.00,0.00,0.00),(339,1515,'2120713','PREFABRICADOS GUIROLA, S.A.','\0',0.00,0.00,0.00,0.00),(340,1516,'2120714','DIMESA','\0',0.00,0.00,0.00,0.00),(341,1530,'2120715','MULTICOBROS, S.A.','\0',0.00,0.00,0.00,0.00),(342,1535,'2120716','LOGIS DE C.A. S.A.','\0',0.00,0.00,0.00,0.00),(343,1545,'2120717','DISTRIBUIDORA K.I.T.','\0',0.00,0.00,0.00,0.00),(344,1561,'2120718','ACABADOS TEXTILES, S. A.','\0',0.00,0.00,0.00,0.00),(345,1572,'2120719','SIADSA','\0',0.00,0.00,0.00,0.00),(346,1573,'2120720','AGORA REDES','\0',-43332.90,0.00,0.00,-43332.90),(347,1586,'2120721','NABLA RESIDENCIAL','\0',0.00,0.00,0.00,0.00),(348,1596,'2120722','DIEGO NU¥O GARCIA','\0',0.00,0.00,0.00,0.00),(349,1607,'2120723','GALILEA DESIGN, S.A.','\0',0.00,0.00,0.00,0.00),(350,1608,'2120724','JORGE MARIO AYALA','\0',0.00,0.00,0.00,0.00),(351,1610,'2120725','MAURICIO JOSE GARCIA ZELAYA','\0',0.00,0.00,0.00,0.00),(352,1615,'2120726','NOVE DESARROLLOS, S.A.','\0',0.00,0.00,0.00,0.00),(353,1617,'2120727','JULIO CESAR CEBALLOS/ AUTO KLASSE','\0',0.00,0.00,0.00,0.00),(354,1624,'2120728','SERVICIOS INTEGRADOS DE REPRESENTACIONES','\0',0.00,0.00,0.00,0.00),(355,1625,'2120729','SBA TORRES GUATEMALA, S.A.','\0',-40521.07,0.00,0.00,-40521.07),(356,1628,'2120730','SKINTEC, S.A.','\0',-28404.00,0.00,0.00,-28404.00),(357,1714,'2120731','SONIA DE SPILLARI','\0',-17709.12,0.00,0.00,-17709.12),(358,1631,'2120732','JUAN LUIS FONSECA/LUIS ROBERTO RETANA','\0',-17001.18,0.00,0.00,-17001.18),(359,1636,'2120733','ADQUISICIONES Y REPRESENTACIONES, S.A.','\0',-105745.60,0.00,0.00,-105745.60),(360,1637,'2120734','GRADO A, S.A.','\0',-73240.00,0.00,0.00,-73240.00),(361,1641,'2120735','FARMACIA GALENO','\0',-18104.48,0.00,0.00,-18104.48),(362,1642,'2120736','ELEKTRA DE GUATEMALA, S.A.','\0',-57962.00,0.00,0.00,-57962.00),(363,1645,'2120737','ALIMENTOS QUEDELY, S.A.','\0',-6000.00,0.00,0.00,-6000.00),(364,1646,'2120738','CONECTION, S.A.','\0',-6355.30,0.00,351.09,-6706.39),(365,1647,'2120739','ALIMENTOS HOLANDESA, S.A.','\0',-7783.22,0.00,0.00,-7783.22),(366,1648,'2120740','DISAR, S.A.','\0',-6344.12,0.00,0.00,-6344.12),(367,1679,'2120741','CLAUDIA ZEPEDA','\0',-6037.08,0.00,0.00,-6037.08),(368,1650,'2120742','TIC TAC','\0',0.00,0.00,0.00,0.00),(369,1652,'2120743','EL CHINITO VELOZ,S.A.','\0',0.00,0.00,0.00,0.00),(370,1653,'2120744','ADSESA','\0',0.00,0.00,0.00,0.00),(371,1669,'2120745','DISTRIBUIDORA CONTINENTAL/JORGE LUIS','\0',0.00,0.00,0.00,0.00),(372,1671,'2120746','SAVONA DE GUATEMALA,S.A.','\0',-12167.02,0.00,0.00,-12167.02),(373,1672,'2120747','CORPORACION VIURY,S.A.','\0',0.00,0.00,0.00,0.00),(374,1673,'2120748','PATSY, S.A.','\0',-16002.96,0.00,0.00,-16002.96),(375,1675,'2120749','ALTURISA','\0',-24572.52,0.00,0.00,-24572.52),(376,1676,'2120750','PRODUCTOS MULTIPLES, S.A.','\0',0.00,0.00,0.00,0.00),(377,1682,'2120751','TELEFONICA MOVILES GUATEMALA, S.A.','\0',-6327.30,0.00,0.00,-6327.30),(378,1687,'2120752','ERWIN FRANCISCO CUQUE HERNANDEZ','\0',-5975.00,0.00,0.00,-5975.00),(379,1695,'2120753','CARICIA DE GUATEMALA, S.A.','\0',0.00,0.00,0.00,0.00),(380,1696,'2120754','IMPORTADORA DE CALZADO MATRIX','\0',-6525.96,0.00,0.00,-6525.96),(381,1699,'2120755','INDUSTRIAS ASSILEM, S.A.','\0',-29204.00,0.00,0.00,-29204.00),(382,1700,'2120756','IMPORTACIONES JL, S.A.','\0',-6575.54,0.00,0.00,-6575.54),(383,1701,'2120757','JOSUE ESTUARDO GRAJEDA ALVAREZ','\0',-6099.52,0.00,0.00,-6099.52),(384,1712,'2120758','CAIRO ANTONIO SARAVIA TABOADA','\0',-20790.00,0.00,0.00,-20790.00),(385,1716,'2120759','DOLLARCITY GUATEMALA, S.A.','\0',-39525.00,0.00,0.00,-39525.00),(386,1717,'2120760','SUNG HWAN PARK','\0',-62480.00,0.00,0.00,-62480.00),(387,1721,'2120761','KALAN INTERNATIONAL','\0',-27420.66,0.00,0.00,-27420.66),(388,1727,'2120762','GLAM BEATY STUDIO, S.A.','\0',-6700.82,0.00,0.00,-6700.82),(389,1732,'2120763','INVERSIONES LALI, S.A.','\0',-6553.00,0.00,0.00,-6553.00),(390,1738,'2120764','ALMACENADORA CENTROAMERIANA, S.A.','\0',0.00,0.00,0.00,0.00),(391,7058,'2120765','DANTEX, S. A.','\0',-20618.25,0.00,0.00,-20618.25),(392,7077,'2120766','PRODUCTOS ALIMENTICIOS MONRE, S. A.','\0',0.00,0.00,5758.25,-5758.25),(393,1406,'2120799','DIVERSOS','\0',0.00,0.00,43993.80,-43993.80),(394,1407,'21208','','',0.00,0.00,0.00,0.00),(395,1408,'2120801','','\0',0.00,0.00,0.00,0.00),(396,1413,'21209','UTILIDADES NO DISTRIBUIDAS','',0.00,0.00,0.00,0.00),(397,1414,'2120901','UTILIDADES NO DISTRIBUIDAS','\0',0.00,0.00,0.00,0.00),(398,1310,'3','CAPITAL, RESERVAS Y RESULTADOS','',-11076371.25,7672366.90,494356.39,-3898360.74),(399,1522,'311','CAPITAL','',-10490868.05,536.56,494356.39,-10984687.88),(400,1311,'31101','CAPITAL','',-2343000.00,0.00,0.00,-2343000.00),(401,1312,'3110101','CAPITAL SOCIAL','\0',-2343000.00,0.00,0.00,-2343000.00),(402,1313,'31102','RESERVA LEGAL','',-3182381.11,0.00,383591.52,-3565972.63),(403,1314,'3110201','RESERVA LEGAL','\0',-3182381.11,0.00,383591.52,-3565972.63),(404,1315,'31103','RESERVAS Y AMORTIZACIONES','',-4965486.94,536.56,110764.87,-5075715.25),(405,1316,'3110301','RESERVA DEP. INMUEBLES','\0',-2487350.60,0.00,104443.87,-2591794.47),(406,1317,'3110302','RESERVA DEP. VEHICULOS','\0',-160926.57,0.00,0.00,-160926.57),(407,1318,'3110303','RESERVA DEP. MOBILIARIO Y EQUIPO','\0',-347327.12,0.00,6186.86,-353513.98),(408,1319,'3110304','RESERVA DEP. EQUIPO DE COMPUTACION','\0',-56255.28,536.56,134.14,-55852.86),(409,1320,'3110305','RESERVA DEP. HERRAMIENTAS','\0',0.00,0.00,0.00,0.00),(410,1409,'3110306','RESERVA DEP. MAQUINARIA','\0',0.00,0.00,0.00,0.00),(411,1410,'3110307','RESERVA AMORTIZACION DE GASTOS','\0',0.00,0.00,0.00,0.00),(412,1411,'3110308','RESERVA REVALUACION DE INMUEBLES','\0',-1358917.37,0.00,0.00,-1358917.37),(413,1412,'3110399','OTRAS RESERVAS','\0',-554710.00,0.00,0.00,-554710.00),(414,1424,'312','PERDIDAS Y GANANCIAS','',0.00,7671830.34,0.00,7671830.34),(415,1505,'31201','PERDIDAS Y GANANCIAS','',0.00,7671830.34,0.00,7671830.34),(416,1425,'3120101','PERDIDAS Y GANANCIAS','\0',0.00,7671830.34,0.00,7671830.34),(417,1511,'313','SUPERAVIT POR REVALUACION','',-585503.20,0.00,0.00,-585503.20),(418,1512,'31301','SUPERAVIT POR REVALUACION','',-585503.20,0.00,0.00,-585503.20),(419,1513,'3130101','SUPERAVIT POR REVALUACION','\0',-585503.20,0.00,0.00,-585503.20),(420,1321,'4','I N G R E S O S','',-12423839.12,0.00,1135514.81,-13559353.93),(421,1322,'411','VENTAS','',-12423839.12,0.00,1135514.81,-13559353.93),(422,1323,'41101','INGRESOS','',-12423839.12,0.00,1135514.81,-13559353.93),(423,1324,'4110101','ALQUILERES','\0',-11288480.94,0.00,1037817.46,-12326298.40),(424,1325,'4110102','INGRESOS VARIOS','\0',0.00,0.00,0.00,0.00),(425,1326,'4110103','SERVICIOS VARIOS','\0',-1135358.18,0.00,97697.35,-1233055.53),(426,1327,'5','C O S T O S   Y  G A S T O S','',4804572.16,823302.88,2252.28,5625622.76),(427,1328,'511','GASTOS DE OPERACION','',0.00,0.00,0.00,0.00),(428,1329,'51101','GASTOS DE VENTA','',0.00,0.00,0.00,0.00),(429,1330,'512','GASTOS DE ADMINISTRACION','',4804572.16,823302.88,2252.28,5625622.76),(430,1331,'51201','GASTOS DE PERSONAL','',1229379.18,206874.96,0.00,1436254.14),(431,1332,'5120101','SUELDOS Y SALARIOS ORDINARIOS','\0',590414.57,60053.00,0.00,650467.57),(432,1333,'5120102','SUELDOS Y SALARIOS EXTRAORDINARIOS','\0',7002.62,3041.19,0.00,10043.81),(433,1334,'5120103','BONIFICACION INCENTIVO DECRETO 78-89,7-2000 Y 37-2001','\0',280198.92,24674.00,0.00,304872.92),(434,1335,'5120104','VACACIONES','\0',3046.92,24103.79,0.00,27150.71),(435,1336,'5120105','INDEMNIZACION','\0',119270.33,0.00,0.00,119270.33),(436,1337,'5120106','AGUINALDOS','\0',9298.94,45224.73,0.00,54523.67),(437,1338,'5120107','BONO 14','\0',58656.32,30000.00,0.00,88656.32),(438,1339,'5120108','COMISIONES','\0',6712.06,0.00,0.00,6712.06),(439,1340,'5120109','CUOTA IGSS','\0',75463.43,11047.98,0.00,86511.41),(440,1341,'5120110','GRATIFICACIONES AL PERSONAL','\0',23695.00,0.00,0.00,23695.00),(441,1342,'5120111','SEGURO SOCIAL','\0',0.00,0.00,0.00,0.00),(442,1343,'5120112','GASTOS DE REPRESENTACION/BIENESTAR EMPL.','\0',54069.81,8462.67,0.00,62532.48),(443,1344,'5120113','GASTOS MEDICOS/MEDICINAS','\0',180.00,0.00,0.00,180.00),(444,1345,'5120114','DIETAS','\0',0.00,0.00,0.00,0.00),(445,1346,'5120115','','\0',0.00,0.00,0.00,0.00),(446,1654,'5120116','GASTOS SELECCION DE PERSONAL','\0',0.00,0.00,0.00,0.00),(447,1681,'5120117','IMPUESTO DE COMBUSTIBLE','\0',968.47,267.60,0.00,1236.07),(448,1710,'5120118','PRUEBA DE POLIGRAFO','\0',401.79,0.00,0.00,401.79),(449,1347,'5120199','DIVERSOS','\0',0.00,0.00,0.00,0.00),(450,1348,'51202','GASTOS POR SERVICIOS','',165110.46,45108.85,0.00,210219.31),(451,1349,'5120201','TELEFONO','\0',46020.53,10743.67,0.00,56764.20),(452,1350,'5120202','ENERGIA ELECTRICA','\0',106905.28,30249.32,0.00,137154.60),(453,1351,'5120203','CUOTA AGUA','\0',0.00,0.00,0.00,0.00),(454,1550,'5120204','TASA MUNICIPAL','\0',12184.65,4115.86,0.00,16300.51),(455,1597,'5120205','CUOTA CABLE','\0',0.00,0.00,0.00,0.00),(456,1352,'5120299','DIVERSOS','\0',0.00,0.00,0.00,0.00),(457,1353,'51203','GASTOS GENERALES','',1580643.48,181111.99,800.00,1760955.47),(458,1354,'5120301','SEGUROS','\0',2569.00,0.00,0.00,2569.00),(459,1355,'5120302','COMBUSTIBLES Y LUBRICANTES','\0',2578.83,1031.92,0.00,3610.75),(460,1356,'5120303','PAPELERIA Y UTILES DE OFICINA','\0',17237.20,1312.07,0.00,18549.27),(461,1357,'5120304','SUSCRIPCION Y PUBLICACION','\0',6195.71,460.00,0.00,6655.71),(462,1358,'5120305','CORREOS','\0',31.25,0.00,0.00,31.25),(463,1359,'5120306','PARQUEOS','\0',26653.81,1488.38,800.00,27342.19),(464,1360,'5120307','GASTOS BANCARIOS','\0',1783.71,10.00,0.00,1793.71),(465,1361,'5120308','UNIFORMES Y EQUIPO','\0',858.38,0.00,0.00,858.38),(466,1362,'5120309','PASAJES','\0',0.00,0.00,0.00,0.00),(467,1363,'5120310','GASTOS DE VIAJE','\0',0.00,0.00,0.00,0.00),(468,1364,'5120311','HONORARIOS VARIOS','\0',373752.70,83107.14,0.00,456859.84),(469,1365,'5120312','TRASLADO DE PLANILLA','\0',0.00,0.00,0.00,0.00),(470,1366,'5120313','ANUNCIO Y PROPAGANDA','\0',23240.34,98.21,0.00,23338.55),(471,1367,'5120314','ALQUILERES','\0',2053.57,0.00,0.00,2053.57),(472,1368,'5120315','GASTOS DE COMPUTACION','\0',10956.99,0.00,0.00,10956.99),(473,1369,'5120316','VIGILANCIA','\0',741194.88,68892.85,0.00,810087.73),(474,1370,'5120317','LIMPIEZA','\0',36825.67,3405.71,0.00,40231.38),(475,1371,'5120318','DONACIONES Y CONTRIBUCIONES','\0',0.00,1000.00,0.00,1000.00),(476,1372,'5120319','GASTOS LEGALES','\0',1542.50,0.00,0.00,1542.50),(477,1374,'5120320','HERRAMIENTAS MENORES','\0',5417.68,576.25,0.00,5993.93),(478,1373,'5120321','FLETES','\0',3883.93,1785.71,0.00,5669.64),(479,1375,'5120322','CHAPEO','\0',0.00,0.00,0.00,0.00),(480,1458,'5120323','CAPACITACION PERSONAL','\0',0.00,0.00,0.00,0.00),(481,1459,'5120324','GRATIFICACIONES','\0',0.00,0.00,0.00,0.00),(482,1460,'5120325','HELIOGRAFICAS ( PLANOS )','\0',0.00,0.00,0.00,0.00),(483,1467,'5120326','COMISIONES S/ARRENDAMIENTOS','\0',6637.13,0.00,0.00,6637.13),(484,1683,'5120327','INSUMOS DE PARQUEO','\0',27492.27,12296.43,0.00,39788.70),(485,1725,'5120328','EVENTOS CENTROS COMERCIALES','\0',5700.53,2075.89,0.00,7776.42),(486,1763,'5120329','HONORARIOS INGENIERIA Y ARQUITECTURA','\0',243372.54,0.00,0.00,243372.54),(487,1764,'5120330','HONORARIOS LEGALES','\0',33624.74,0.00,0.00,33624.74),(488,1765,'5120331','EXTRACCION DE BASURA','\0',5000.00,3571.43,0.00,8571.43),(489,1766,'5120332','FUMIGACION','\0',1767.86,0.00,0.00,1767.86),(490,1376,'5120399','GASTOS VARIOS','\0',272.26,0.00,0.00,272.26),(491,1377,'51204','IMPUESTOS FISCALES Y MUNICIPALES','',172609.93,56340.63,0.00,228950.56),(492,1378,'5120401','IMPUESTOS FISCALES Y MUNICIPALES','\0',172609.93,56340.63,0.00,228950.56),(493,1379,'51205','MANTENIMIENTO Y REPARACIONES','',438164.65,35042.39,0.00,473207.04),(494,1380,'5120501','VEHICULOS','\0',0.00,0.00,0.00,0.00),(495,1574,'5120502','EDIFICIOS','\0',216251.75,13788.56,0.00,230040.31),(496,1381,'5120503','COMPUTACION','\0',0.00,0.00,0.00,0.00),(497,1382,'5120504','MANTENIMIENTO Y REPARACIONES','\0',105031.09,8442.79,0.00,113473.88),(498,1444,'5120505','ELECTRICIDAD','\0',7314.68,1604.56,0.00,8919.24),(499,1575,'5120506','PLOMERIA','\0',19483.74,15.63,0.00,19499.37),(500,1577,'5120507','ALBA¥ILERIA Y HERRERIA','\0',52913.74,6581.57,0.00,59495.31),(501,1579,'5120508','HERRERIA','\0',229.47,0.00,0.00,229.47),(502,1613,'5120509','CARPINTERIA','\0',0.00,0.00,0.00,0.00),(503,1767,'5120510','TOPOGRAFIA','\0',0.00,0.00,0.00,0.00),(504,1768,'5120511','EQUIPO DE SEGURIDAD','\0',3813.47,312.50,0.00,4125.97),(505,1769,'5120512','VENTANERIA','\0',803.58,0.00,0.00,803.58),(506,1770,'5120513','HIDROSANITARIO','\0',13729.05,232.14,0.00,13961.19),(507,1771,'5120514','PINTURA','\0',4258.32,3542.86,0.00,7801.18),(508,1772,'5120515','JARDINERIA Y RIEGOS','\0',5580.35,521.78,0.00,6102.13),(509,1773,'5120516','PAVIMENTO Y ADOQUIN','\0',7084.27,0.00,0.00,7084.27),(510,1774,'5120517','HERRAMIENTAS MENORES','\0',1671.14,0.00,0.00,1671.14),(511,1576,'5120599','TRABAJOS VARIOS','\0',0.00,0.00,0.00,0.00),(512,1426,'51206','DEPRECIACIONES Y AMORTIZACIONES','',1218413.57,110764.87,536.56,1328641.88),(513,1427,'5120601','DEPRECIACION INMUEBLES','\0',1148882.57,104443.87,0.00,1253326.44),(514,1428,'5120602','DEPRECIACION VEHICULOS','\0',0.00,0.00,0.00,0.00),(515,1429,'5120603','DEPRECIACION MOBILIARIO Y EQUIPO','\0',68055.46,6186.86,0.00,74242.32),(516,1430,'5120604','DEPRECIACION EQUIPO DE COMPUTACION','\0',1475.54,134.14,536.56,1073.12),(517,1431,'5120605','DEPRECIACION HERRAMIENTAS','\0',0.00,0.00,0.00,0.00),(518,1432,'5120606','DEPRECIACION MAQUINARIA','\0',0.00,0.00,0.00,0.00),(519,1433,'5120607','AMORTIZACION GASTOS DE ORGANIZACION','\0',0.00,0.00,0.00,0.00),(520,1434,'5120608','','\0',0.00,0.00,0.00,0.00),(521,1435,'5120609','','\0',0.00,0.00,0.00,0.00),(522,1436,'5120699','DIVERSOS','\0',0.00,0.00,0.00,0.00),(523,1469,'51207','GASTOS NO DEDUCIBLES','',250.89,188059.19,915.72,187394.36),(524,1470,'5120701','I.V.A.','\0',0.00,0.00,0.00,0.00),(525,1471,'5120702','MULTAS','\0',250.89,0.00,0.00,250.89),(526,1488,'5120703','ISET (GASTO NO DEDUCIBLE)','\0',0.00,0.00,0.00,0.00),(527,1491,'5120704','ISR a¥os anteriores','\0',0.00,0.00,0.00,0.00),(528,1581,'5120705','IEMA','\0',0.00,0.00,0.00,0.00),(529,1606,'5120706','TIMBRES S/DIVIDENDOS','\0',0.00,0.00,0.00,0.00),(530,1723,'5120707','CUENTAS INCOBRABLES','\0',0.00,0.00,0.00,0.00),(531,1472,'5120799','DIVERSOS','\0',0.00,188059.19,915.72,187143.47),(532,7084,'5150518','EQUIPO AIRE ACONDICIONADO','\0',0.00,0.00,0.00,0.00),(533,1437,'6','GASTOS Y PRODUCTOS FINANCIEROS','',-13217.68,275259.93,282.59,261759.66),(534,1523,'611','GASTOS FINANCIEROS','',-13217.68,275259.93,282.59,261759.66),(535,1438,'61101','GASTOS FINANCIEROS','',-768.06,275259.93,0.00,274491.87),(536,1439,'6110101','INTERESES BANCARIOS','\0',-768.06,0.00,0.00,-768.06),(537,1440,'6110102','PERDIDA EN VENTA DE ACTIVOS FIJOS','\0',0.00,0.00,0.00,0.00),(538,1761,'6110103','DIFERENCIAL CAMBIARIO','\0',0.00,275259.93,0.00,275259.93),(539,1445,'6110199','DIVERSOS','\0',0.00,0.00,0.00,0.00),(540,1441,'61102','PRODUCTOS FINANCIEROS','',-12449.62,0.00,282.59,-12732.21),(541,1442,'6110201','INGRESOS POR INTERESES BANCARIOS','\0',-12449.62,0.00,282.59,-12732.21),(542,1443,'6110202','GANANCIA EN VENTA DE ACTIVOS FIJOS','\0',0.00,0.00,0.00,0.00),(543,1605,'6110203','DIVIDENDOS SOBRE ACCIONES','\0',0.00,0.00,0.00,0.00),(544,1446,'6110299','DIVERSOS','\0',0.00,0.00,0.00,0.00);
/*!40000 ALTER TABLE `rptbalancesaldos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptconstproc`
--

DROP TABLE IF EXISTS `rptconstproc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptconstproc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcuentac` int(11) NOT NULL DEFAULT '0',
  `codigo` varchar(10) NOT NULL,
  `nombrecta` varchar(75) NOT NULL,
  `tipocuenta` bit(1) NOT NULL DEFAULT b'0',
  `anterior` decimal(20,2) NOT NULL DEFAULT '0.00',
  `debe` decimal(20,2) NOT NULL DEFAULT '0.00',
  `haber` decimal(20,2) NOT NULL DEFAULT '0.00',
  `actual` decimal(20,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `CodigoASC` (`codigo`) USING BTREE,
  KEY `TipoCuentaASC` (`tipocuenta`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1024 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptconstproc`
--

LOCK TABLES `rptconstproc` WRITE;
/*!40000 ALTER TABLE `rptconstproc` DISABLE KEYS */;
INSERT INTO `rptconstproc` VALUES (1,7038,'1','ACTIVO','',127724487.23,6613346.80,4566799.09,129771034.94),(2,1227,'111','ACTIVO CIRCULANTE','',6772397.43,2557255.17,1534681.70,7794970.90),(3,1228,'11101','EFECTIVO','',365142.18,4385.00,602.72,368924.46),(4,599,'1110101','CAJA GENERAL','\0',361103.62,4385.00,602.72,364885.90),(5,1226,'1110102','CAJA CHICA','\0',4038.56,0.00,0.00,4038.56),(6,1229,'11102','BANCOS','',6407255.25,2552870.17,1534078.98,7426046.44),(7,600,'1110202','BANCO INDUSTRIAL','\0',4278609.16,2003060.68,1534078.98,4747590.86),(8,1225,'1110203','BANCO HSBC','\0',328893.41,0.00,0.00,328893.41),(9,1178,'1110204','BANCO INDUSTRIAL, S.A. $','\0',1236382.32,549809.49,0.00,1786191.81),(10,1233,'1110205','BANCO G&T','\0',563370.36,0.00,0.00,563370.36),(11,1230,'112','CUENTAS POR COBRAR','',23875238.62,4041730.18,3032117.39,24884851.41),(12,1231,'11201','CLIENTES','',1681940.55,2578493.81,2547757.45,1712676.91),(13,889,'1120119','COMIDAS ITALIANAS, S.A.','\0',0.00,0.00,0.00,0.00),(14,895,'1120120','INMUEBLES, S. A.','\0',0.00,0.00,0.00,0.00),(15,896,'1120121','ASESORIAS INMOBILIARIAS, S. A.','\0',0.00,0.00,0.00,0.00),(16,897,'1120122','T.G.R.','\0',0.00,0.00,0.00,0.00),(17,901,'1120123','CREDOMATIC DE GUATEMALA, S.A.','\0',0.00,0.00,0.00,0.00),(18,903,'1120124','THE TWINS','\0',0.00,0.00,0.00,0.00),(19,904,'1120125','GEORGE TENENBAUM','\0',0.00,0.00,0.00,0.00),(20,905,'1120126','FRIENDLIES','\0',0.00,0.00,0.00,0.00),(21,907,'1120127','ESTUDIO GITANO/NORMA DE SANCHINELLI','\0',0.00,0.00,0.00,0.00),(22,913,'1120128','ERICK R. MORALES VELIZ/ANALISIS DESR.ASE','\0',0.00,0.00,0.00,0.00),(23,916,'1120129','INDUSTRIA DE LAVANDERIA Y MANTENIMIENTO','\0',0.00,0.00,0.00,0.00),(24,926,'1120130','M.LON  L-#13','\0',0.00,0.00,0.00,0.00),(25,929,'1120131','PAPELERIA GRAFOS  L# 5','\0',0.00,0.00,0.00,0.00),(26,937,'1120132','KIA /KEMPO KARATE L# 9-10','\0',0.00,0.00,0.00,0.00),(27,947,'1120133','ELBA NIDIA CERNA DE HUEZO','\0',0.00,0.00,0.00,0.00),(28,948,'1120134','KAPPETENANGO VERITAS','\0',0.00,0.00,0.00,0.00),(29,950,'1120135','EMPRESAS ESPA¥OLAS, S.A.','\0',18757.32,9779.92,9325.92,19211.32),(30,951,'1120136','EMUSA, S.A.','\0',162769.19,163827.87,161910.70,164686.36),(31,956,'1120137','POLLO BRUJO, S.A.','\0',0.00,0.00,0.00,0.00),(32,961,'1120138','CHINA X CHANGE, S.A.','\0',0.00,0.00,0.00,0.00),(33,973,'1120139','CINEPOLIS GUATEMALA, S.A.','\0',0.00,0.00,0.00,0.00),(34,974,'1120140','PAPEL Y LAPIZ, S.A.','\0',50570.60,12715.08,12623.59,50662.09),(35,1025,'1120141','CUENTA UTILIZADA EN POLIZA INICIAL INCORRECTA O ELIMINADA','',0.00,0.00,0.00,0.00),(36,977,'1120142','DONAS AMERICANAS, S.A.','\0',5769.10,5789.83,5769.11,5789.82),(37,978,'1120143','SML DE GUATEMALA, S.A.','\0',0.00,0.00,0.00,0.00),(38,980,'1120144','JAIME QUAN QUAN','\0',0.00,0.00,0.00,0.00),(39,990,'1120145','FRANCISCO DAVID MORALES','\0',0.00,0.00,0.00,0.00),(40,992,'1120146','FARMACIAS PAIZ RODRIGUEZ, S.A.','\0',52335.95,13167.50,26159.18,39344.27),(41,996,'1120147','VALMET, S.A.','\0',0.00,2671.20,2671.20,0.00),(42,997,'1120148','BODEGAS FRIAS, S.A.','\0',15430.71,13504.15,15430.71,13504.15),(43,1000,'1120149','LAPSTEC DE CENTROAMERICA','\0',0.00,0.00,0.00,0.00),(44,1003,'1120150','CADBURY ADAMS GUATEMALA, S.A.','\0',0.00,0.00,0.00,0.00),(45,1005,'1120151','GRACIELA AZURDIA DE MARROQUIN','\0',0.00,0.00,0.00,0.00),(46,1006,'1120152','C & L TRADING DE GUATEMALA, S.A.','\0',0.00,0.00,0.00,0.00),(47,1007,'1120153','IN JA JUNG','\0',0.00,0.00,0.00,0.00),(48,1008,'1120154','PATRIOTAS AMBIENTALES','\0',0.00,12984.77,0.00,12984.77),(49,1009,'1120155','REPRESENTACIONES OAM, S.A.','\0',0.00,0.00,0.00,0.00),(50,1010,'1120156','FERNANDO GABRIEL RAMIREZ','\0',0.00,0.00,0.00,0.00),(51,1011,'1120157','MULTI-NEGOCIOS PROFESIONALES','\0',188845.99,181147.15,180473.70,189519.44),(52,1012,'1120158','EMPACADORA TOLEDO, S.A.','\0',6984.64,7012.73,6984.65,7012.72),(53,1013,'1120159','LA ESTIC DE GUATEMALA, S.A.','\0',0.00,0.00,0.00,0.00),(54,1014,'1120160','CEVA FREIGHT MANAGEMENT/EGL','\0',0.00,0.00,0.00,0.00),(55,1015,'1120161','HUB LOGISTICS, S.A.','\0',0.00,0.00,0.00,0.00),(56,1016,'1120162','MARTA ARECELY LOPEZ PORTILLO','\0',0.00,0.00,0.00,0.00),(57,1017,'1120163','OLEFINAS, S.A.','\0',0.00,0.00,0.00,0.00),(58,1018,'1120164','IMPORTADORA LO QUE SEA, S.A.','\0',0.00,0.00,0.00,0.00),(59,1021,'1120165','LANCO PAINTS GUATEMALA, S.A.','\0',0.00,38664.19,38664.19,0.00),(60,1023,'1120166','KARAMELOS EXCLUSIVOS, S.A.','\0',112228.59,11686.54,21686.54,102228.59),(61,1029,'1120167','MARIA MAGDALENA MEDRANO GONZALEZ','\0',0.00,0.00,0.00,0.00),(62,1031,'1120168','GTC TRIM/GRUPO FABRIL','\0',0.00,0.00,0.00,0.00),(63,1032,'1120169','LEONARDO RAMIREZ VASQUEZ','\0',0.00,0.00,0.00,0.00),(64,1033,'1120170','ALUCAPS CENTROAMERICANA, S.A.','\0',136075.67,136869.32,272944.99,0.00),(65,1036,'1120171','CHINA X TENSION, S.A.','\0',0.00,0.00,0.00,0.00),(66,1051,'1120172','CONTRUCCION E INGENIERIA, S.A.','\0',0.00,0.00,0.00,0.00),(67,1055,'1120173','INVERSIONES PROTECTORAS DEL ECOSISTEMA','\0',0.00,0.00,0.00,0.00),(68,1059,'1120174','JUEGOS DIVERSOS','\0',0.00,0.00,0.00,0.00),(69,1071,'1120175','INVERSIONES AHBE, S.A./EL ELEFANTE VERDE','\0',0.00,0.00,0.00,0.00),(70,1075,'1120176','PANADERIA Y PASTELERIA ANDALUCIA','\0',0.00,0.00,0.00,0.00),(71,1079,'1120177','REQCA/FALMAR DE GUATEMALA, S.A.','\0',29119.66,9617.16,9552.96,29183.86),(72,1083,'1120178','ASITENCIA GLOBAL DE GUATEMALA, S.A.','\0',0.00,206813.71,206813.71,0.00),(73,1086,'1120179','DRONENA, S.A.','\0',0.00,0.00,0.00,0.00),(74,1087,'1120180','ARTICULOS DE CONSUMO POPULAR, S.A.','\0',0.00,0.00,0.00,0.00),(75,1090,'1120181','MACRO/ FUTUROS CONTRUCTIVOS SOBRE LA ROCA','\0',0.00,0.00,0.00,0.00),(76,1091,'1120182','RESIDENCIALES PETAPA, S.A.','\0',0.00,0.00,0.00,0.00),(77,1094,'1120183','OPERADORA DE TIENDAS, S.A.','\0',0.00,23246.49,23246.49,0.00),(78,1095,'1120184','NUEVOS ALMACENES, S.A. /CEMACO','\0',0.00,0.00,0.00,0.00),(79,1097,'1120185','MARIO RODAS','\0',5596.00,2800.00,2800.00,5596.00),(80,1099,'1120186','FUTUROS CONSTRUCTIVOS SOBRE LA ROCA','\0',21831.82,0.00,0.00,21831.82),(81,1101,'1120187','PROVEEDORA MEDICA, S.A.','\0',0.00,0.00,0.00,0.00),(82,1150,'1120188','PIZZA HUT (PLAZA DELTA)','\0',0.00,0.00,0.00,0.00),(83,1165,'1120189','COMERCIAL MEXGUA, S. A.','\0',92244.08,30926.96,0.00,123171.04),(84,1102,'1120190','MAQUINAS EXACTAS','\0',0.00,0.00,0.00,0.00),(85,1206,'1120191','LUISA GABRIELA GUZMAN FIGUEROA','\0',0.00,0.00,0.00,0.00),(86,1103,'1120192','CIA. BANANERA GUATEMALTECA','\0',254317.52,127961.94,0.00,382279.46),(87,1104,'1120193','ESTHER SAMAYOA DEL CID DE PONCE','\0',4455.00,0.00,0.00,4455.00),(88,1111,'1120194','PRONE PROMOCIONES Y NEGOCIOS, S.A.','\0',0.00,8809.26,8809.26,0.00),(89,1113,'1120195','IMAGINOVA, S.A.','\0',0.00,13209.53,13209.53,0.00),(90,1114,'1120196','JULIO LUX/IGLESIA MISIONERA','\0',0.00,0.00,19065.23,-19065.23),(91,1116,'1120197','TRANSPORTES VIKINGO, S.A.','\0',216.05,0.00,0.00,216.05),(92,1123,'1120198','FLOR DE MARIA PEREZ GOMEZ','\0',0.00,0.00,0.00,0.00),(93,601,'1120199','CLIENTES VARIOS','\0',524392.66,1545288.51,1509615.79,560065.38),(94,602,'11202','CUENTAS POR LIQUIDAR','',170431.25,1119711.34,477367.27,812775.32),(95,603,'1120201','EMILIO GARCIA GIL','\0',0.00,0.00,0.00,0.00),(96,731,'1120202','JESUS PEREZ','\0',0.00,0.00,0.00,0.00),(97,732,'1120203','RODOLFO MONZON G.','\0',0.00,0.00,0.00,0.00),(98,734,'1120204','PUEBLO CHINO EXPRES','\0',0.00,0.00,0.00,0.00),(99,735,'1120205','TALLERES RIVAS','\0',0.00,0.00,0.00,0.00),(100,736,'1120206','DE LOS SOSA, S. A.','\0',0.00,0.00,0.00,0.00),(101,737,'1120207','FABRICA NEON','\0',0.00,0.00,0.00,0.00),(102,738,'1120208','ESTUARDO GUZMAN','\0',0.00,0.00,0.00,0.00),(103,739,'1120209','ALFOMBRA MAGICA','\0',0.00,0.00,0.00,0.00),(104,810,'1120210','FRANCISCO MENENDEZ','\0',0.00,0.00,0.00,0.00),(105,811,'1120211','JAIME HERNANDEZ (SERTECPLO)','\0',0.00,0.00,0.00,0.00),(106,813,'1120212','SOLOMBRINO','\0',0.00,0.00,0.00,0.00),(107,814,'1120213','FRANCISCO DAVID MORALES S.','\0',0.00,0.00,0.00,0.00),(108,812,'1120214','ESTUARDO GUZMAN','\0',0.00,0.00,0.00,0.00),(109,816,'1120215','HUMBERTO PAZ','\0',0.00,0.00,0.00,0.00),(110,824,'1120216','TECHOS FIGUEROA','\0',0.00,0.00,0.00,0.00),(111,825,'1120217','ANTONIO RAMIREZ','\0',0.00,0.00,0.00,0.00),(112,828,'1120218','HUMBERTO FUENTES','\0',0.00,0.00,0.00,0.00),(113,830,'1120219','TOMAS NOJ CHITAY','\0',0.00,0.00,0.00,0.00),(114,831,'1120220','AUGUSTO CESAR MANSILLA PRADO','\0',0.00,0.00,0.00,0.00),(115,832,'1120221','MAXIMILIANO MARQUEZ','\0',0.00,0.00,0.00,0.00),(116,833,'1120222','CARLOS ENRIQUE CHELEY','\0',0.00,0.00,0.00,0.00),(117,834,'1120223','WER DOUGHERTY ARQUITECTOS','\0',0.00,0.00,0.00,0.00),(118,835,'1120224','FERNANDO SAENZ','\0',0.00,0.00,0.00,0.00),(119,836,'1120225','MAPRI','\0',0.00,0.00,0.00,0.00),(120,837,'1120226','RENE ALVAREZ','\0',0.00,0.00,0.00,0.00),(121,838,'1120227','PROPORCION & ESCALA, S. A.','\0',0.00,0.00,0.00,0.00),(122,843,'1120228','ANTONIO NU¥EZ','\0',0.00,0.00,0.00,0.00),(123,844,'1120229','MARIO PEREZ RIVERA','\0',0.00,0.00,0.00,0.00),(124,845,'1120230','ELSECA, S. A.','\0',0.00,0.00,0.00,0.00),(125,853,'1120231','COMCEL','\0',0.00,0.00,0.00,0.00),(126,854,'1120232','ALUVISA','\0',0.00,0.00,0.00,0.00),(127,856,'1120233','EMPRESA ELECTRICA DE GUATEMALA, S.A.','\0',0.00,0.00,0.00,0.00),(128,866,'1120234','HOGGAN INTERNACIONAL, S.A.','\0',0.00,0.00,0.00,0.00),(129,872,'1120235','CARLOS MARTINEZ / SUPER PROYECTOS','\0',0.00,0.00,0.00,0.00),(130,873,'1120236','INCUGA','\0',0.00,0.00,0.00,0.00),(131,880,'1120237','AXIS, S.A.','\0',0.00,0.00,0.00,0.00),(132,882,'1120238','PONCEANO DE JESUS ORTIZ','\0',0.00,0.00,0.00,0.00),(133,883,'1120239','PINTORES MAESTROS','\0',0.00,0.00,0.00,0.00),(134,884,'1120240','JOSE RAMOS','\0',0.00,0.00,0.00,0.00),(135,887,'1120241','JUNKALCO, S.A.','\0',0.00,0.00,0.00,0.00),(136,888,'1120242','ING. MANUEL ARCHILA','\0',0.00,0.00,0.00,0.00),(137,890,'1120243','JM IMPORTACIONES','\0',0.00,0.00,0.00,0.00),(138,891,'1120244','MAQCISA','\0',0.00,0.00,0.00,0.00),(139,908,'1120245','GAMALERO SUCS., S. A.','\0',0.00,0.00,0.00,0.00),(140,912,'1120246','RAFAEL PILO¥A','\0',0.00,0.00,0.00,0.00),(141,928,'1120247','PROFESIONAL DE SERVICIOS, S. A.','\0',0.00,0.00,0.00,0.00),(142,933,'1120248','ING. MARIO MORALES','\0',0.00,0.00,0.00,0.00),(143,938,'1120249','ENERGICA, S. A.','\0',100.00,0.00,0.00,100.00),(144,941,'1120250','LOS CANARIOS, S.A.','\0',0.00,0.00,0.00,0.00),(145,942,'1120251','GENTRAC','\0',0.00,0.00,0.00,0.00),(146,943,'1120252','RODOLFO CARDENAS','\0',0.00,0.00,0.00,0.00),(147,944,'1120253','TECSA','\0',0.00,0.00,0.00,0.00),(148,949,'1120254','JORGE ROBERTO ROBLES','\0',0.00,0.00,0.00,0.00),(149,953,'1120255','HIRCONSA','\0',0.00,0.00,0.00,0.00),(150,962,'1120256','ROTULOS PUBLICIDAD','\0',0.00,0.00,0.00,0.00),(151,965,'1120257','CONSTRUCCIONES NABLA, S. A.','\0',0.00,0.00,0.00,0.00),(152,966,'1120258','HIDROCONSULT, S.A.','\0',0.00,0.00,0.00,0.00),(153,975,'1120259','GRUPO FERROSO, S.A.','\0',0.00,0.00,0.00,0.00),(154,981,'1120260','IRRITECH, S.A.','\0',0.00,0.00,0.00,0.00),(155,993,'1120261','EQUIPAMIENTOS URBANOS DE GUATEMALA','\0',0.00,0.00,0.00,0.00),(156,994,'1120262','ACEROS ARQUITECTONICOS','\0',0.00,0.00,0.00,0.00),(157,1174,'1120263','ING.ROLANDO CHINCHILLA','\0',19301.02,0.00,0.00,19301.02),(158,1175,'1120264','FRANCISCO COC','\0',113208.20,0.00,0.00,113208.20),(159,1186,'1120281','LUISA GABRIELA GUZMAN FIGUEROA','\0',0.00,0.00,0.00,0.00),(160,604,'1120299','CUENTAS POR LIQUIDAR VARIAS','\0',37822.03,1119711.34,477367.27,680166.10),(161,605,'11203','FUNCIONARIOS Y EMPLEADOS','',99382.00,92602.67,6992.67,184992.00),(162,815,'1120301','MARTIN NOLASCO','\0',0.00,0.00,0.00,0.00),(163,855,'1120302','ROLANDO JOCOL','\0',0.00,0.00,0.00,0.00),(164,967,'1120303','BYRON FERNANDO CASTILLO FLORES','\0',5000.00,0.00,500.00,4500.00),(165,968,'1120304','LUIS ALBERTO RAXON','\0',0.00,0.00,0.00,0.00),(166,969,'1120305','LUIS FRANCISCO MARTIN NOLASCO','\0',1200.00,0.00,200.00,1000.00),(167,970,'1120306','MANUEL AGUSTIN MENDOZA VALENZUELA','\0',9000.00,0.00,1000.00,8000.00),(168,971,'1120307','MARCO ANTONIO TZIRIN SUTUJ','\0',0.00,0.00,0.00,0.00),(169,972,'1120308','VICTOR MANUEL CHINCHILLA','\0',0.00,0.00,0.00,0.00),(170,976,'1120309','HECTOR ARIZANDIETA MORALES','\0',1325.00,0.00,445.00,880.00),(171,1200,'1120310','ALEJANDRO MARDOQUEO PONCE RODAS','\0',0.00,0.00,0.00,0.00),(172,1201,'1120311','ELMER POITAN GUZMAN','\0',0.00,0.00,0.00,0.00),(173,1202,'1120312','FRANCISCO ESCOBAR RAYMUNDO','\0',0.00,0.00,0.00,0.00),(174,1204,'1120313','CARLOS ALBERTO PEREZ PEREZ','\0',0.00,0.00,150.00,-150.00),(175,1205,'1120314','JORGE ANTONIO TAQUE ESTRADA','\0',0.00,0.00,0.00,0.00),(176,1210,'1120315','VICTOR MANUEL CUN GONZALEZ','\0',0.00,0.00,0.00,0.00),(177,1211,'1120316','FREDY ORLANDO ORTEGA RODRIGUEZ','\0',0.00,0.00,0.00,0.00),(178,1212,'1120317','DANIEL FERNANDO MU¥OZ FERNANDEZ','\0',0.00,0.00,0.00,0.00),(179,1235,'1120318','ODILIO CONTRERAS PINEDA','\0',0.00,0.00,0.00,0.00),(180,1236,'1120319','AXEL EXEQUIEL IBOY SARCE¥O','\0',0.00,0.00,0.00,0.00),(181,1237,'1120320','ARTURO SALVADOR SIGUENZA GONZALEZ','\0',0.00,0.00,0.00,0.00),(182,1238,'1120321','ROSA GRISELDA SANTOS GARCIA','\0',0.00,0.00,0.00,0.00),(183,881,'1120338','ELDER ALEJANDRO GONZALEZ','\0',0.00,0.00,0.00,0.00),(184,960,'1120339','LORENZO HERNANDEZ YOL','\0',0.00,0.00,150.00,-150.00),(185,1002,'1120340','ANTONIO ORTIZ VILLELA','\0',0.00,0.00,0.00,0.00),(186,1040,'1120341','CARLOS ADOLFO GUZMAN LOPEZ','\0',0.00,0.00,0.00,0.00),(187,1041,'1120342','CONRADO RECANCOJ PELICO','\0',0.00,0.00,0.00,0.00),(188,1042,'1120343','ESWIN LEONEL MARTINEZ SEQUEN','\0',0.00,0.00,0.00,0.00),(189,1043,'1120344','JOSE RENE ZEPEDA CHAVEZ','\0',0.00,0.00,0.00,0.00),(190,1044,'1120345','JUAN CARLOS LOPEZ CUIN','\0',0.00,0.00,0.00,0.00),(191,1045,'1120346','JUAN FRANCISCO GARAY GAYTAN','\0',0.00,0.00,0.00,0.00),(192,1046,'1120347','LEONARDO RAMIREZ VASQUEZ','\0',0.00,0.00,0.00,0.00),(193,1047,'1120348','PABLO DE PAZ','\0',0.00,0.00,0.00,0.00),(194,1048,'1120349','CIRILO IQUIC BOSH','\0',0.00,0.00,0.00,0.00),(195,1050,'1120350','ESVIN ROLANDO CHUNI CRISPIN','\0',0.00,0.00,0.00,0.00),(196,1056,'1120351','JOSE EFRAIN CURAN REYES','\0',0.00,0.00,0.00,0.00),(197,1060,'1120352','AGUSTIN CULAJAY EQUITE','\0',0.00,0.00,0.00,0.00),(198,1062,'1120353','RUBEN ANGEL MACARIO GOMEZ','\0',0.00,0.00,0.00,0.00),(199,1064,'1120354','ALVARO RODRIGO PEREZ VALDEZ','\0',0.00,0.00,0.00,0.00),(200,1066,'1120355','LUIS ALFREDO BORRAYO','\0',0.00,0.00,0.00,0.00),(201,1070,'1120356','JOSE EVERARDO PABLO','\0',0.00,0.00,0.00,0.00),(202,1072,'1120357','LUIS PEREZ SUBUYUJ','\0',0.00,0.00,0.00,0.00),(203,1076,'1120358','ANGELA VELASQUEZ DE SALCEDO','\0',500.00,0.00,500.00,0.00),(204,1080,'1120359','ENRIQUE SATZ','\0',0.00,0.00,0.00,0.00),(205,1088,'1120360','SELVIN MANOLO ALVAREZ MARTINEZ','\0',0.00,0.00,0.00,0.00),(206,1089,'1120361','ALFREDO JOSE SIRIAS CABEZA','\0',0.00,0.00,0.00,0.00),(207,1112,'1120362','ORLANDO ANTUCHE PEREZ','\0',0.00,0.00,0.00,0.00),(208,1115,'1120363','LUIS FELIPE ANTUCHE LOPEZ','\0',0.00,0.00,0.00,0.00),(209,1127,'1120364','ELADIO ARNOLDO ARRIZALES VASQUEZ','\0',0.00,0.00,0.00,0.00),(210,1129,'1120365','JUAN ENRIQUE SATZ ACAJABON','\0',0.00,1500.00,0.00,1500.00),(211,1133,'1120366','ELBA DE MAZARIEGOS','\0',0.00,0.00,0.00,0.00),(212,1134,'1120367','ROBIN IVAN GONZALEZ CARDONA','\0',0.00,0.00,0.00,0.00),(213,1135,'1120368','EDGAR CRUZ IXTECOC IXPATA','\0',0.00,0.00,0.00,0.00),(214,1137,'1120369','OSMAN ESTUARDO PEREZ ALVARADO','\0',0.00,0.00,0.00,0.00),(215,1138,'1120370','PEDRO ABRAHAM JIMENEZ ARDIANO','\0',0.00,0.00,0.00,0.00),(216,1139,'1120371','ROLFI ANTULIO GOMEZ TEMAJ','\0',0.00,0.00,0.00,0.00),(217,1140,'1120372','MARCELA JIMENEZ RODRIGUEZ','\0',0.00,3000.00,300.00,2700.00),(218,1146,'1120373','JORGE ARNULFO ESTRADA PEREZ','\0',0.00,0.00,0.00,0.00),(219,1151,'1120374','REYES ABRAHAM COGUOX DE PAZ','\0',0.00,0.00,0.00,0.00),(220,1154,'1120375','CARLOS AUGUSTO RAZON GUAJAN','\0',0.00,0.00,0.00,0.00),(221,1156,'1120376','WILSON ANIBAL ARRIOLA AQUINO','\0',0.00,0.00,0.00,0.00),(222,1168,'1120377','MICHAEL ABRAHAM ESTRADA ZEPEDA','\0',0.00,0.00,0.00,0.00),(223,1169,'1120378','JORGE LUIS MORALES HERNANDEZ','\0',-50.00,0.00,0.00,-50.00),(224,1196,'1120379','SERGIO JAVIER GASPARICO HERNANDEZ','\0',0.00,0.00,0.00,0.00),(225,1198,'1120380','CYNTHIA LIZETH ACEVEDO LOPEZ','\0',0.00,0.00,0.00,0.00),(226,606,'1120399','ANTICIPO DE SUELDOS','\0',82407.00,88102.67,3747.67,166762.00),(227,607,'11204','IMPUESTOS POR COBRAR','',939904.82,250922.36,0.00,1190827.18),(228,608,'1120401','IVA POR COBRAR','\0',282113.11,42526.14,0.00,324639.25),(229,609,'1120402','ISR POR COBRAR','\0',547113.36,169080.35,0.00,716193.71),(230,733,'1120403','ISR A¥OS ANTERIORES','\0',0.00,0.00,0.00,0.00),(231,826,'1120404','CUOTA ANUAL EMPRESAS MERCANTILES','\0',0.00,0.00,0.00,0.00),(232,852,'1120405','ISET 1,997.-','\0',0.00,0.00,0.00,0.00),(233,875,'1120406','I.U.S.I.','\0',0.00,0.00,0.00,0.00),(234,988,'1120407','RETENCION IVA','\0',110678.35,39315.87,0.00,149994.22),(235,758,'1120499','DIVERSOS','\0',0.00,0.00,0.00,0.00),(236,1207,'11205','EMPRESAS RELACIONADAS','',20983580.00,0.00,0.00,20983580.00),(237,1208,'1120501','BIENES INMOBILIARIOS, S. A.','\0',20983580.00,0.00,0.00,20983580.00),(238,1107,'1120793','IMAGINOVA, S.A. /PASTELERIA ANFORA','\0',0.00,0.00,0.00,0.00),(239,1157,'112189','HEDLAND, S. A. (PACIFIC OIL)','\0',0.00,0.00,0.00,0.00),(240,610,'113','INVENTARIOS','',0.00,0.00,0.00,0.00),(241,611,'11301','INVENTARIOS','',0.00,0.00,0.00,0.00),(242,612,'1130101','INVENTARIOS','\0',0.00,0.00,0.00,0.00),(243,613,'121','ACTIVOS FIJOS','',97030483.77,14361.45,0.00,97044845.22),(244,614,'12101','PROPIEDAD PLANTA Y EQUIPO','',78085991.94,0.00,0.00,78085991.94),(245,615,'1210101','INMUEBLES','\0',76810869.80,0.00,0.00,76810869.80),(246,741,'1210102','VEHICULOS','\0',66962.50,0.00,0.00,66962.50),(247,616,'1210103','MOBILIARIO Y EQUIPO','\0',783153.75,0.00,0.00,783153.75),(248,617,'1210104','EQUIPO DE COMPUTACION','\0',207790.90,0.00,0.00,207790.90),(249,618,'1210105','HERRAMIENTAS','\0',0.00,0.00,0.00,0.00),(250,619,'1210106','INSTALACION ACOMETIDA ELECTRICA','\0',81001.80,0.00,0.00,81001.80),(251,740,'1210107','ROTULO LUMINOSO','\0',0.00,0.00,0.00,0.00),(252,952,'1210108','EQUIPO SUMERGIBLE','\0',136213.19,0.00,0.00,136213.19),(253,620,'12102','CONSTRUCCIONES','',18944491.83,14361.45,0.00,18958853.28),(254,621,'1210201','CONSTRUCCIONES EN PROCESO','\0',12695.31,0.00,0.00,12695.31),(255,1132,'1210202','PLAZA DELTA','\0',1044.64,0.00,0.00,1044.64),(256,1100,'1210203','PLAZA 7-27','\0',0.00,0.00,0.00,0.00),(257,1121,'1210204','MAGIC PLACE','\0',0.00,0.00,0.00,0.00),(258,1136,'1210205','BOULEVAR DELTA BARCENAS','\0',0.00,0.00,0.00,0.00),(259,1141,'1210206','ALFA PARQUE','\0',0.00,0.00,0.00,0.00),(260,1143,'1210207','PARQUEO UNISUR','\0',0.00,0.00,0.00,0.00),(261,1145,'1210208','POPS','\0',0.00,0.00,0.00,0.00),(262,1152,'1210209','PIZZA HOT','\0',0.00,0.00,0.00,0.00),(263,1159,'1210210','CONSTRUCCIONES EN PROCESO PACIFIC OIL','\0',0.00,0.00,0.00,0.00),(264,1161,'1210211','PLAZA 7-27 ZONA 9','\0',0.00,0.00,0.00,0.00),(265,1164,'1210212','COLECTOR DELTA BARCENAS','\0',9013578.04,0.00,0.00,9013578.04),(266,1166,'1210213','GIMNASIO EXTERIOR DELTA BARCENAS','\0',0.00,0.00,0.00,0.00),(267,1172,'1210214','ALFA FASE II','\0',0.00,0.00,0.00,0.00),(268,1177,'1210215','TERRENO ROTONDA DB','\0',0.00,0.00,0.00,0.00),(269,1180,'1210216','ARBOLEDA DELTA','\0',8985431.83,2089.28,0.00,8987521.11),(270,1181,'1210217','UNISUR 3','\0',26785.71,0.00,0.00,26785.71),(271,1185,'1210218','LINDAMAR','\0',565941.28,0.00,0.00,565941.28),(272,1195,'1210219','DELTA SUR JARDINES','\0',9103.16,0.00,0.00,9103.16),(273,1224,'1210220','CALL CENTER DELTA BARCENAS','\0',32999.86,0.00,0.00,32999.86),(274,1232,'1210221','OFICINA FOX','\0',0.00,0.00,0.00,0.00),(275,7079,'1210222','Restaurantes en lotes 5 y 6 en Arboleda','\0',296912.00,12272.17,0.00,309184.17),(276,622,'130','ACTIVO DIFERIDO','',41537.41,0.00,0.00,41537.41),(277,623,'1300','DIFERIDOS','',41537.41,0.00,0.00,41537.41),(278,624,'13001','GASTOS PAGADOS POR ANTICIPADO','',8321.88,0.00,0.00,8321.88),(279,625,'1300101','','\0',0.00,0.00,0.00,0.00),(280,918,'1300102','TELGUA SERV. PAG. POR ANTICIPADO','\0',8321.88,0.00,0.00,8321.88),(281,626,'1300199','DIVERSOS','\0',0.00,0.00,0.00,0.00),(282,627,'13002','DEPOSITOS VARIOS','',33215.53,0.00,0.00,33215.53),(283,628,'1300201','EMPRESA ELECTRICA','\0',30215.53,0.00,0.00,30215.53),(284,957,'1300202','MUNICIPALIDAD DE VILLA NUEVA','\0',0.00,0.00,0.00,0.00),(285,1037,'1300203','TUNEL MUNICIPALIDAD DE VILLA NUEVA','\0',3000.00,0.00,0.00,3000.00),(286,1106,'1300204','MUNICIPALIDAD DE GUATEMALA','\0',0.00,0.00,0.00,0.00),(287,1124,'1300205','SERVICIOS MULTIPLES CIUDAD VIEJA, S.A.','\0',0.00,0.00,0.00,0.00),(288,629,'13003','GASTOS DE ORGANIZACION','',0.00,0.00,0.00,0.00),(289,630,'1300301','GASTOS DE ORGANIZACION','\0',0.00,0.00,0.00,0.00),(290,631,'131','OTROS ACTIVOS','',4830.00,0.00,0.00,4830.00),(291,632,'13101','OTROS ACTIVOS','',4830.00,0.00,0.00,4830.00),(292,633,'1310101','MARCAS Y PATENTES','\0',0.00,0.00,0.00,0.00),(293,634,'1310102','INVERSIONES','\0',0.00,0.00,0.00,0.00),(294,635,'1310103','DERECHO TELEFONICO','\0',4470.00,0.00,0.00,4470.00),(295,742,'1310104','PAJA DE AGUA','\0',360.00,0.00,0.00,360.00),(296,784,'132','DEFICIT','',0.00,0.00,0.00,0.00),(297,785,'13201','DEFICIT','',0.00,0.00,0.00,0.00),(298,786,'1320101','DEFICIT','\0',0.00,0.00,0.00,0.00),(299,636,'2','P A S I V O S','',-93902758.13,137584.55,326160.97,-94091334.55),(300,637,'212','PASIVOS CIRCULANTE','',-93902758.13,137584.55,326160.97,-94091334.55),(301,743,'2120','CUENTAS POR PAGAR','',-93902758.13,137584.55,326160.97,-94091334.55),(302,638,'21201','PROVEEDORES','',-11318.00,0.00,0.00,-11318.00),(303,639,'2120101','LA ALFOMBRA MAGICA, S. A.','\0',0.00,0.00,0.00,0.00),(304,640,'2120102','JARDINES DE BABILONIA, S. A.','\0',0.00,0.00,0.00,0.00),(305,868,'2120103','DHL DE GUATEMALA','\0',0.00,0.00,0.00,0.00),(306,874,'2120104','SUPER PROYECTOS','\0',0.00,0.00,0.00,0.00),(307,1170,'2120105','LANCO PAINTS','\0',0.00,0.00,0.00,0.00),(308,869,'2120106','KPMG DE GUATEMALA','\0',0.00,0.00,0.00,0.00),(309,923,'2120107','ANTILLON','\0',0.00,0.00,0.00,0.00),(310,934,'2120108','CAJA CHICA','\0',-100.00,0.00,0.00,-100.00),(311,939,'2120109','CONSTRUCTORA ALGA, S.A.','\0',0.00,0.00,0.00,0.00),(312,963,'2120110','JOSE LUIS GUZMAN (LAPSTEC)','\0',0.00,0.00,0.00,0.00),(313,964,'2120111','GRUPO FERROSA, S.A.','\0',0.00,0.00,0.00,0.00),(314,1054,'2120112','LOGIMERK','\0',0.00,0.00,0.00,0.00),(315,1142,'2120113','LOVERDE,S.A.','\0',-11218.00,0.00,0.00,-11218.00),(316,1144,'2120114','GILBERTO DE JESUS MARROQUIN VELASQUEZ','\0',0.00,0.00,0.00,0.00),(317,1158,'2120115','PROYECTOS Y ELECTRICIDAD, S.A.','\0',0.00,0.00,0.00,0.00),(318,1171,'2120116','INDUSTRIA DE MATERIALES DECORATIVOS','\0',0.00,0.00,0.00,0.00),(319,641,'2120199','DIVERSOS','\0',0.00,0.00,0.00,0.00),(320,642,'21202','ACREEDORES','',-75517.14,0.00,0.00,-75517.14),(321,643,'2120201','GUATEL','\0',0.00,0.00,0.00,0.00),(322,644,'2120202','E. E. G. S. A.','\0',-22452.27,0.00,0.00,-22452.27),(323,744,'2120203','EMPAGUA','\0',-49082.84,0.00,0.00,-49082.84),(324,745,'2120204','ACREEDORES VARIOS','\0',0.00,0.00,0.00,0.00),(325,746,'2120205','ANTONIO RAMIREZ','\0',0.00,0.00,0.00,0.00),(326,849,'2120206','COMCEL','\0',398.00,0.00,0.00,398.00),(327,867,'2120207','TELGUA, S. A.','\0',-2870.04,0.00,0.00,-2870.04),(328,871,'2120208','CAELSA','\0',0.00,0.00,0.00,0.00),(329,876,'2120209','GRUPO DE SERVICIOS DE INFORMACION,S.A.','\0',0.00,0.00,0.00,0.00),(330,924,'2120210','GAMALERO SUCS., S. A.','\0',0.00,0.00,0.00,0.00),(331,932,'2120211','JORGE ROBERTO ROBLES MORALES','\0',0.00,0.00,0.00,0.00),(332,935,'2120212','PROFESIONAL DE SERVICIOS, S. A.','\0',0.00,0.00,0.00,0.00),(333,936,'2120213','SERVICIOS NUEVOS, S. A.','\0',0.00,0.00,0.00,0.00),(334,955,'2120214','CUENTA UTILIZADA EN POLIZA INICIAL INCOR','',0.00,0.00,0.00,0.00),(335,986,'2120215','SERCOM','\0',0.00,0.00,0.00,0.00),(336,987,'2120216','DUWEST RECUBRIMIENTO, S.A.','\0',0.00,0.00,0.00,0.00),(337,989,'2120217','IBEX, S.A.','\0',0.01,0.00,0.00,0.01),(338,991,'2120218','S.I.P.P.S.A.','\0',0.00,0.00,0.00,0.00),(339,1038,'2120219','FRANCISCO MENENDEZ','\0',0.00,0.00,0.00,0.00),(340,1039,'2120220','TALLERES PEREZ','\0',0.00,0.00,0.00,0.00),(341,1049,'2120221','INGENIEROS VALUADORES, S.A.','\0',0.00,0.00,0.00,0.00),(342,1063,'2120222','DISTRIBUIDORA CHAY No. 2','\0',0.00,0.00,0.00,0.00),(343,1082,'2120223','SOLULERSA','\0',-4300.00,0.00,0.00,-4300.00),(344,1125,'2120224','DISTRIBUIDORA HERNANDEZ','\0',0.00,0.00,0.00,0.00),(345,1108,'2120225','NELY CAROLINA','\0',0.00,0.00,0.00,0.00),(346,1109,'2120226','CELASA','\0',0.00,0.00,0.00,0.00),(347,1126,'2120227','CITY PARKING GUATEMALA','\0',0.00,0.00,0.00,0.00),(348,1128,'2120228','GRUPO COMUDISA','\0',0.00,0.00,0.00,0.00),(349,1130,'2120229','PONCIANO DE JESUS ORTIZ','\0',0.00,0.00,0.00,0.00),(350,1131,'2120230','LABIND','\0',0.00,0.00,0.00,0.00),(351,1147,'2120231','FRANCISCO COC','\0',3500.00,0.00,0.00,3500.00),(352,1148,'2120232','DEKOPINTURAS, S.A.','\0',0.00,0.00,0.00,0.00),(353,1149,'2120233','ARCHILA RIVERA Y COMPA¥IA LIMITADA','\0',0.00,0.00,0.00,0.00),(354,1162,'2120234','MAYORISTAS DE ELECTRICIDAD, S.A.','\0',0.00,0.00,0.00,0.00),(355,1163,'2120235','INVERSIONES RUSSELL, S.A.','\0',0.00,0.00,0.00,0.00),(356,1167,'2120236','MARIO GODINEZ','\0',0.00,0.00,0.00,0.00),(357,1176,'2120237','GRANT THORNTON','\0',0.00,0.00,0.00,0.00),(358,1182,'2120238','ING. ROLANDO CHINCHILLA','\0',0.00,0.00,0.00,0.00),(359,1183,'2120239','TASA MUNICIPAL E.E.G.S.A.','\0',0.00,0.00,0.00,0.00),(360,1184,'2120240','PISOS PROFESIONALES DE CONCRETO, S.A.','\0',0.00,0.00,0.00,0.00),(361,1188,'2120241','GRUPO CLC, S.A.','\0',0.00,0.00,0.00,0.00),(362,1203,'2120242','GRUPO SOLID (GUATEMALA), S.A.','\0',0.00,0.00,0.00,0.00),(363,645,'2120299','DIVERSOS','\0',-710.00,0.00,0.00,-710.00),(364,646,'21203','IMPUESTOS POR PAGAR','',-557696.22,92692.24,295248.32,-760252.30),(365,647,'2120301','IVA POR PAGAR','\0',-557323.80,0.00,292638.32,-849962.12),(366,747,'2120302','ISR POR PAGAR','\0',-372.42,0.00,0.00,-372.42),(367,748,'2120303','IMPUESTO UNICO SOBRE INMUEBLES','\0',0.00,92692.24,2610.00,90082.24),(368,749,'2120304','CUOTA ANUAL DE SOCIEDADES','\0',0.00,0.00,0.00,0.00),(369,850,'2120305','CUOTA EMPRESAS MERCANTILES Y AGROP.','\0',0.00,0.00,0.00,0.00),(370,1179,'2120306','LOGIMERK, S.A.','\0',0.00,0.00,0.00,0.00),(371,648,'2120399','DIVERSOS','\0',0.00,0.00,0.00,0.00),(372,649,'21204','RETENCIONES','',-44153.58,22608.94,15768.96,-37313.60),(373,650,'2120401','IGSS CUOTA LABORAL','\0',-26971.68,5707.74,5730.73,-26994.67),(374,730,'2120402','DESCUENTO JUDICIAL WILSON ARRIOLA','\0',0.00,0.00,0.00,0.00),(375,822,'2120403','RETENCION ISR','\0',-17181.90,16901.20,10038.23,-10318.93),(376,846,'2120404','ISET POR PAGAR','\0',0.00,0.00,0.00,0.00),(377,750,'2120499','DIVERSOS','\0',0.00,0.00,0.00,0.00),(378,651,'21205','PRESTAMOS BANCARIOS','',-10066275.32,0.00,0.00,-10066275.32),(379,652,'2120501','BANCO G&T CONTINENTAL','\0',-10000000.00,0.00,0.00,-10000000.00),(380,653,'2120599','DIVERSOS','\0',-66275.32,0.00,0.00,-66275.32),(381,654,'21206','OTRAS CUENTAS POR PAGAR','',-81226812.42,22283.37,15143.69,-81219672.74),(382,655,'2120601','IGSS CUOTA PATRONAL','\0',-16412.56,15083.37,15143.69,-16472.88),(383,752,'2120602','DIVIDENDOS','\0',-72945565.88,0.00,0.00,-72945565.88),(384,753,'2120603','RAFAEL HERNANDEZ ALBIZURES','\0',0.00,0.00,0.00,0.00),(385,760,'2120604','ABRAHAM TENENMBAUM','\0',0.00,0.00,0.00,0.00),(386,761,'2120605','GEORGE TENENBAUM','\0',0.00,0.00,0.00,0.00),(387,823,'2120606','ROBIN TENENBAUM','\0',0.00,0.00,0.00,0.00),(388,851,'2120607','SUELDOS POR PAGAR','\0',0.00,0.00,0.00,0.00),(389,894,'2120608','EVELYN DE TENENBAUM','\0',0.00,7200.00,0.00,7200.00),(390,982,'2120609','INDEMNIZACION POR PAGAR','\0',0.00,0.00,0.00,0.00),(391,983,'2120610','VACACIONES POR PAGAR','\0',0.00,0.00,0.00,0.00),(392,984,'2120611','AGUINALDO POR PAGAR','\0',0.00,0.00,0.00,0.00),(393,985,'2120612','BONIF.ANUAL P/TRAB.SECTOR PRIVADO Y PUBLICO','\0',-67432.00,0.00,0.00,-67432.00),(394,1067,'2120613','ORION, S. A.','\0',0.00,0.00,0.00,0.00),(395,1068,'2120614','PARAGON, S. A.','\0',0.00,0.00,0.00,0.00),(396,1074,'2120615','IGSS CUOTA PATRONAL IVS','\0',0.00,0.00,0.00,0.00),(397,1160,'2120616','FLOR DE MARIA PEREZ','\0',0.00,0.00,0.00,0.00),(398,1173,'2120617','APORTACION SOCIOS','\0',-8197401.98,0.00,0.00,-8197401.98),(399,1192,'2120618','EMPRESA TURISTICA, S. A.','\0',0.00,0.00,0.00,0.00),(400,1193,'2120619','INVERSIONES BADRIAN, S. A.','\0',0.00,0.00,0.00,0.00),(401,1194,'2120620','ATESA, S. A.','\0',0.00,0.00,0.00,0.00),(402,1209,'2120621','BIENES INMOBILIARIOS, S. A.','\0',0.00,0.00,0.00,0.00),(403,7107,'2120622','INTERESES POR PAGAR S/PRESTAMOS','\0',0.00,0.00,0.00,0.00),(404,762,'2120699','DIVERSOS','\0',0.00,0.00,0.00,0.00),(405,809,'21207','ANTICIPOS RECIBIDOS DE CLIENTES','',-1920985.45,0.00,0.00,-1920985.45),(406,751,'2120701','GERMANIA SPON MIRANDA','\0',0.00,0.00,0.00,0.00),(407,763,'2120702','EDGAR MIRANDA SANCHEZ','\0',0.00,0.00,0.00,0.00),(408,764,'2120703','ROSA ARMEJO DUBON','\0',0.00,0.00,0.00,0.00),(409,765,'2120704','BEATRIZ ECHEVERRIA Z.','\0',0.00,0.00,0.00,0.00),(410,766,'2120705','E.HASNBORGE','\0',0.00,0.00,0.00,0.00),(411,782,'2120706','M. MARTHA MIRON JABANIS','\0',0.00,0.00,0.00,0.00),(412,767,'2120707','FRANCISCO DAVID MORALES S.','\0',0.00,0.00,0.00,0.00),(413,768,'2120708','ALFREDO ROSI LORENESI','\0',0.00,0.00,0.00,0.00),(414,769,'2120709','HOTEL CAMINO REAL, S. A.','\0',0.00,0.00,0.00,0.00),(415,770,'2120710','ARGENTINA FERNANDEZ VASQUEZ','\0',0.00,0.00,0.00,0.00),(416,771,'2120711','GUILLERMO GARCIA CHUPINA','\0',0.00,0.00,0.00,0.00),(417,772,'2120712','ESTUARDO GUZMAN','\0',0.00,0.00,0.00,0.00),(418,773,'2120713','COMERCIAL TESALPA','\0',0.00,0.00,0.00,0.00),(419,774,'2120714','ESTUARDO GUZMAN','\0',0.00,0.00,0.00,0.00),(420,775,'2120715','SUPERMERCADO EL HOGAR','\0',0.00,0.00,0.00,0.00),(421,776,'2120716','DE LOS SOSA','\0',0.00,0.00,0.00,0.00),(422,777,'2120717','GUSTAVO SOLOMBRINO','\0',0.00,0.00,0.00,0.00),(423,778,'2120718','FERNANDO GABRIEL RAMIREZ','\0',0.00,0.00,0.00,0.00),(424,779,'2120719','ELECTROBODEGAS, S. A.','\0',0.00,0.00,0.00,0.00),(425,780,'2120720','AMERICAN DOUGHNUTS','\0',0.00,0.00,0.00,0.00),(426,781,'2120721','ELECTRICOS EN GENERAL','\0',0.00,0.00,0.00,0.00),(427,808,'2120722','CARLOS A. IRIARTE','\0',0.00,0.00,0.00,0.00),(428,817,'2120723','VICTORIA AMIEL DE GARCIA','\0',0.00,0.00,0.00,0.00),(429,821,'2120724','LIBRERIA ELGIN','\0',0.00,0.00,0.00,0.00),(430,827,'2120725','SRITA. POKORNY','\0',0.00,0.00,0.00,0.00),(431,829,'2120726','CYAUTO, S. A.','\0',0.00,0.00,0.00,0.00),(432,857,'2120727','FARMACIAS GODOY, S.A.','\0',0.00,0.00,0.00,0.00),(433,858,'2120728','BIN-OLEOCOLOR','\0',0.00,0.00,0.00,0.00),(434,859,'2120729','AMALIA DE CAMPOS/BAKERY Y CAFE','\0',0.00,0.00,0.00,0.00),(435,860,'2120730','JOSE ANTONIO CHAN/REST. LA ESPERANZA','\0',-22277.22,0.00,0.00,-22277.22),(436,861,'2120731','VILMA COLON DE CHUPINA','\0',0.00,0.00,0.00,0.00),(437,862,'2120732','SIR SPEEDY','\0',0.00,0.00,0.00,0.00),(438,863,'2120733','BANCO DE LA REPUBLICA, S.A.','\0',0.00,0.00,0.00,0.00),(439,864,'2120734','CENTRO MEDICO OCULAR','\0',0.00,0.00,0.00,0.00),(440,865,'2120735','DISAR, S.A.','\0',0.00,0.00,0.00,0.00),(441,877,'2120736','QUASAR VIDEO JUEGOS','\0',0.00,0.00,0.00,0.00),(442,878,'2120737','RONEL TOURS','\0',0.00,0.00,0.00,0.00),(443,879,'2120738','BARBERIA EL PADRINO/ROBERTO PORTILLO','\0',0.00,0.00,0.00,0.00),(444,885,'2120739','TECNO MARKET, S.A.','\0',0.00,0.00,0.00,0.00),(445,886,'2120740','DISMACASA','\0',0.00,0.00,0.00,0.00),(446,892,'2120741','JANINE GISELLE SIKAFFY MENA','\0',0.00,0.00,0.00,0.00),(447,898,'2120742','ESTUDIO GITANO/NORMA DE SANCHINELLI','\0',0.00,0.00,0.00,0.00),(448,899,'2120743','LA SERCHA','\0',0.00,0.00,0.00,0.00),(449,900,'2120744','LUIS ESTUARDO AGUILAR FIGUEROA','\0',0.00,0.00,0.00,0.00),(450,902,'2120745','CREDOMATIC','\0',-23550.00,0.00,0.00,-23550.00),(451,906,'2120746','JOSE OBDULIO GARRIDO RUIZ','\0',0.00,0.00,0.00,0.00),(452,914,'2120747','ERICK ROLANDO MORALES VELIZ','\0',-7970.00,0.00,0.00,-7970.00),(453,917,'2120748','INDUSTRIA DE LAVANDERIA Y MANTENIMIENTO','\0',0.00,0.00,0.00,0.00),(454,921,'2120749','JOSE ISMAEL OVALLE ESTRADA / IMARQ','\0',0.00,0.00,0.00,0.00),(455,922,'2120750','ELBA N. CERNA DE HUESO','\0',-7245.00,0.00,0.00,-7245.00),(456,925,'2120751','LICASTA DE PEREZ / KEMPO KARATE-KIA','\0',-6961.50,0.00,0.00,-6961.50),(457,927,'2120752','M.LON  L-#13','\0',0.00,0.00,0.00,0.00),(458,930,'2120753','PAPELERIA GRAFOS L#5','\0',-3582.00,0.00,0.00,-3582.00),(459,931,'2120754','CONSULTORIA INTEGRAL ATLANTA S. A.','\0',0.00,0.00,0.00,0.00),(460,940,'2120755','EMUSA, S.A.','\0',-41595.85,0.00,0.00,-41595.85),(461,946,'2120756','LABORATORIOS Y PRODUCTOS MEDICOS, S.A.','\0',0.00,0.00,0.00,0.00),(462,954,'2120757','EMPRESAS ESPA¥OLAS, S.A.','\0',-9.92,0.00,0.00,-9.92),(463,958,'2120758','EGL EAGLE GLOBAL LOGISTICA DE GUATEMALA','\0',0.00,0.00,0.00,0.00),(464,959,'2120759','SML DE GUATEMALA, S.A.','\0',0.00,0.00,0.00,0.00),(465,979,'2120760','HUB LOGISTICS, S.A.','\0',0.00,0.00,0.00,0.00),(466,995,'2120761','CADBURY ADAMS GUATEMALA, S.A.','\0',0.00,0.00,0.00,0.00),(467,998,'2120762','EMPACADORA TOLEDO, S.A.','\0',-27528.00,0.00,0.00,-27528.00),(468,999,'2120763','JOSE LUIS GUZMAN (LAPSTEC)','\0',0.00,0.00,0.00,0.00),(469,1001,'2120764','BODEGAS FRIAS, S.A.','\0',-595.00,0.00,0.00,-595.00),(470,1004,'2120765','CONSTRUCTORA NABLA, S. A.','\0',0.00,0.00,0.00,0.00),(471,1019,'2120766','LANCO','\0',-29026.15,0.00,0.00,-29026.15),(472,1020,'2120767','IN JA JUNG','\0',0.00,0.00,0.00,0.00),(473,1022,'2120768','IMPORTADORA LO QUE SEA, S.A.','\0',0.00,0.00,0.00,0.00),(474,1024,'2120769','ERWIN ESTUARDO BELTRAN REYES','\0',-4251.50,0.00,0.00,-4251.50),(475,1026,'2120770','PATRIOTAS AMBIENTALES','\0',-17.35,0.00,0.00,-17.35),(476,1027,'2120771','LA ESTIC DE GUATEMALA, S.A.','\0',0.00,0.00,0.00,0.00),(477,1028,'2120772','FARMACIAS PAIZ RODRIGUEZ, S.A.','\0',0.00,0.00,0.00,0.00),(478,1030,'2120773','JAIME QUAN QUAN','\0',0.00,0.00,0.00,0.00),(479,1034,'2120774','ALUCAPS CENTROAMERICANA, S.A.','\0',-81868.23,0.00,0.00,-81868.23),(480,1035,'2120775','MULTI-NEGOCIOS PROFESIONALES, S.A.','\0',-16038.00,0.00,0.00,-16038.00),(481,1052,'2120776','CONSTRUCCION E INGENIERIA, S.A.','\0',0.00,0.00,0.00,0.00),(482,1053,'2120777','PAPEL Y LAPIZ, S.A.','\0',0.00,0.00,0.00,0.00),(483,1057,'2120778','JUEGOS DIVERSOS, S.A./ JUDISA','\0',-46440.00,0.00,0.00,-46440.00),(484,1058,'2120779','LAPSTEC DE CENTROAMERICA, S.A.','\0',0.00,0.00,0.00,0.00),(485,1061,'2120780','PRONE PROMOCIONES Y NEGOCIOS, S.A.','\0',-5850.00,0.00,0.00,-5850.00),(486,1065,'2120781','INVERSIONES AHBE, S.A./EL ELEFANTE VERDE','\0',0.00,0.00,0.00,0.00),(487,1069,'2120782','VALMET','\0',0.00,0.00,0.00,0.00),(488,1073,'2120783','LETICIA CAMPOLLO DE WOC/ ANDALUCIA','\0',-10125.00,0.00,0.00,-10125.00),(489,1077,'2120784','CIA. DE JUEGOS Y ENTRETENIMIENTO, S.A.','\0',-4980.00,0.00,0.00,-4980.00),(490,1078,'2120785','FALMAR DE GUATEMALA, S.A.','\0',-4150.00,0.00,0.00,-4150.00),(491,1081,'2120786','DONAS AMERICANAS','\0',0.00,0.00,0.00,0.00),(492,1084,'2120787','ASISTENCIA GLOBAL DE GUATEMALA, S.A.','\0',-44382.52,0.00,0.00,-44382.52),(493,1085,'2120788','DRONENA, S.A.','\0',0.00,0.00,0.00,0.00),(494,1093,'2120789','PROVEEDORA MEDICA, S.A.','\0',-17496.00,0.00,0.00,-17496.00),(495,1096,'2120790','NUEVOS ALMACENES, S.A./ CEMACO','\0',0.00,0.00,0.00,0.00),(496,1098,'2120791','MARIO RODAS','\0',-6075.00,0.00,0.00,-6075.00),(497,1105,'2120792','LABORATORIO DE IDEAS, S.A.','\0',0.00,0.00,0.00,0.00),(498,1110,'2120793','WORLD CONNECTION','\0',-93280.00,0.00,0.00,-93280.00),(499,1117,'2120794','JULIO LUX/IGLESIA MISIONERA','\0',-3750.00,0.00,0.00,-3750.00),(500,1118,'2120795','TRANSPORTES VIKINGO, S.A.','\0',-695.25,0.00,0.00,-695.25),(501,1119,'2120796','FOX INTERNATIONAL CHANNEL GUATEMALA','\0',-248800.14,0.00,0.00,-248800.14),(502,1120,'2120797','GRUPO FABRIL C & T, S.A.','\0',0.00,0.00,0.00,0.00),(503,1122,'2120798','CEVA FREIGHT MANAGEMENT GUATEMALA LTDA.','\0',0.00,0.00,0.00,0.00),(504,759,'2120799','CLIENTES VARIOS','\0',-1162445.82,0.00,0.00,-1162445.82),(505,1189,'2130236','','\0',0.00,0.00,0.00,0.00),(506,656,'3','CAPITAL, RESERVAS Y RESULTADOS','',-14361222.51,0.00,0.00,-14361222.51),(507,657,'311','CAPITAL','',-29937895.52,0.00,0.00,-29937895.52),(508,658,'31101','CAPITAL','',-75000.00,0.00,0.00,-75000.00),(509,659,'3110101','CAPITAL SOCIAL','\0',-75000.00,0.00,0.00,-75000.00),(510,660,'31102','RESERVA LEGAL','',-6623309.94,0.00,0.00,-6623309.94),(511,661,'3110201','RESERVA LEGAL','\0',-6623309.94,0.00,0.00,-6623309.94),(512,662,'31103','RESERVAS Y AMORTIZACIONES','',-23239585.58,0.00,0.00,-23239585.58),(513,663,'3110301','RESERVA DEP. INMUEBLES','\0',-21777405.61,0.00,0.00,-21777405.61),(514,664,'3110302','RESERVA DEP. VEHICULOS','\0',-18411.53,0.00,0.00,-18411.53),(515,665,'3110303','RESERVA DEP. MOBILIARIO Y EQUIPO','\0',-595947.70,0.00,0.00,-595947.70),(516,666,'3110304','RESERVA DEP. EQUIPO DE COMPUTACION','\0',-194229.98,0.00,0.00,-194229.98),(517,667,'3110305','RESERVA DEP. HERRAMIENTAS','\0',0.00,0.00,0.00,0.00),(518,754,'3110306','RESERVA REVALUACION INMUEBLES','\0',-653590.76,0.00,0.00,-653590.76),(519,755,'3110307','RESERVA AMORTIZACION GASTOS','\0',0.00,0.00,0.00,0.00),(520,756,'3110308','','\0',0.00,0.00,0.00,0.00),(521,757,'3110399','OTRAS RESERVAS ( INDEMNIZACION )','\0',0.00,0.00,0.00,0.00),(522,787,'312','PERDIDAS Y GANANCIAS','',15576673.01,0.00,0.00,15576673.01),(523,870,'31201','PERDIDAS Y GANANCIAS','',15576673.01,0.00,0.00,15576673.01),(524,788,'3120101','PERDIDAS Y GANANCIAS','\0',15576673.01,0.00,0.00,15576673.01),(525,668,'4','I N G R E S O S','',-34903918.85,0.00,2438652.52,-37342571.37),(526,669,'411','VENTAS','',-34903918.85,0.00,2438652.52,-37342571.37),(527,670,'41101','INGRESOS','',-34903918.85,0.00,2438652.52,-37342571.37),(528,671,'4110101','ALQUILERES','\0',-31834426.05,0.00,2206814.78,-34041240.83),(529,672,'4110102','PARQUEO','\0',-23711.90,0.00,1647.80,-25359.70),(530,673,'4110103','SERVICIOS VARIOS','\0',-3045780.90,0.00,230189.94,-3275970.84),(531,674,'5','C O S T O S   Y  G A S T O S','',14640922.44,579957.15,0.00,15220879.59),(532,675,'511','GASTOS DE OPERACION','',0.00,0.00,0.00,0.00),(533,676,'51101','GASTOS DE VENTA','',0.00,0.00,0.00,0.00),(534,677,'512','GASTOS DE ADMINISTRACION','',14640922.44,579957.15,0.00,15220879.59),(535,678,'51201','GASTOS DE PERSONAL','',3391306.73,230280.82,0.00,3621587.55),(536,679,'5120101','SUELDOS Y SALARIOS ORDINARIOS','\0',1737403.85,121085.00,0.00,1858488.85),(537,680,'5120102','SUELDOS Y SALARIOS EXTRAORDINARIOS','\0',13881.29,1286.11,0.00,15167.40),(538,681,'5120103','BONIFICACION INCENTIVO DECRETO. 78-89','\0',945209.85,69316.00,0.00,1014525.85),(539,682,'5120104','VACACIONES','\0',70698.58,338.30,0.00,71036.88),(540,683,'5120105','INDEMNIZACION','\0',39745.74,16611.85,0.00,56357.59),(541,684,'5120106','AGUINALDOS','\0',114254.92,909.65,0.00,115164.57),(542,685,'5120107','BONIF. ANUAL P/TRAB.SECTOR PRIVADO Y PUBLICO','\0',139687.84,2059.88,0.00,141747.72),(543,686,'5120108','COMISIONES','\0',0.00,0.00,0.00,0.00),(544,687,'5120109','CUOTA IGSS','\0',246426.98,15143.69,0.00,261570.67),(545,688,'5120110','GRATIFICACIONES AL PERSONAL','\0',27152.00,3422.00,0.00,30574.00),(546,689,'5120111','SEGURO SOCIAL','\0',0.00,0.00,0.00,0.00),(547,690,'5120112','GASTOS DE REPRESENTACION/BIENESTAR EMPL.','\0',54785.76,108.34,0.00,54894.10),(548,691,'5120113','GASTOS MEDICOS/MEDICINAS','\0',10.82,0.00,0.00,10.82),(549,692,'5120114','DIETAS','\0',0.00,0.00,0.00,0.00),(550,693,'5120115','CUOTA IGSS IVS','\0',0.00,0.00,0.00,0.00),(551,1092,'5120116','IMPUESTO SOBRE COMBUSTIBLE','\0',2049.10,0.00,0.00,2049.10),(552,694,'5120199','DIVERSOS','\0',0.00,0.00,0.00,0.00),(553,695,'51202','GASTOS POR SERVICIOS','',931734.37,56736.58,0.00,988470.95),(554,696,'5120201','TELEFONO','\0',45152.16,3276.14,0.00,48428.30),(555,697,'5120202','ENERGIA ELECTRICA','\0',195769.53,15078.77,0.00,210848.30),(556,698,'5120203','CUOTA AGUA','\0',671357.19,37006.09,0.00,708363.28),(557,893,'5120204','TASA MUNICIPAL E.E.G.S.A.','\0',19375.13,1375.58,0.00,20750.71),(558,699,'5120299','GASTOS VARIOS','\0',80.36,0.00,0.00,80.36),(559,700,'51203','GASTOS GENERALES','',4295201.78,233712.25,0.00,4528914.03),(560,701,'5120301','SEGUROS Y FIANZAS','\0',28088.88,0.00,0.00,28088.88),(561,702,'5120302','COMBUSTIBLES Y LUBRICANTES','\0',4830.15,0.00,0.00,4830.15),(562,703,'5120303','PAPELERIA Y UTILES DE OFICINA','\0',15182.20,522.27,0.00,15704.47),(563,704,'5120304','PUBLICIDAD','\0',15919.09,0.00,0.00,15919.09),(564,705,'5120305','CORREOS','\0',1972.55,0.00,0.00,1972.55),(565,706,'5120306','PARQUEOS','\0',197.30,29.46,0.00,226.76),(566,707,'5120307','GASTOS BANCARIOS','\0',1660.84,80.00,0.00,1740.84),(567,708,'5120308','UNIFORMES Y EQUIPO','\0',20613.58,0.00,0.00,20613.58),(568,709,'5120309','PASAJES','\0',235.55,0.00,0.00,235.55),(569,710,'5120310','GASTOS DE VIAJE','\0',0.00,0.00,0.00,0.00),(570,711,'5120311','HONORARIOS VARIOS','\0',1250412.82,32035.00,0.00,1282447.82),(571,712,'5120312','TRASLADO DE PLANILLA','\0',0.00,0.00,0.00,0.00),(572,713,'5120313','ANUNCIO Y PROPAGANDA','\0',56983.98,0.00,0.00,56983.98),(573,714,'5120314','ALQUILERES','\0',954876.49,63955.29,0.00,1018831.78),(574,715,'5120315','GASTOS DE COMPUTACION','\0',669.64,0.00,0.00,669.64),(575,716,'5120316','VIGILANCIA','\0',1615220.63,124714.27,0.00,1739934.90),(576,717,'5120317','LIMPIEZA','\0',78741.03,17.86,0.00,78758.89),(577,718,'5120318','DONACIONES Y CONTRIBUCIONES','\0',0.00,0.00,0.00,0.00),(578,719,'5120319','GASTOS LEGALES','\0',1976.36,125.00,0.00,2101.36),(579,721,'5120320','HERRAMIENTAS MENORES','\0',23947.40,3820.31,0.00,27767.71),(580,720,'5120321','FLETES','\0',6858.93,0.00,0.00,6858.93),(581,722,'5120322','CHAPEO','\0',0.00,0.00,0.00,0.00),(582,818,'5120323','CAPACITACION PERSONAL','\0',8841.96,0.00,0.00,8841.96),(583,819,'5120324','GRATIFICACIONES','\0',0.00,0.00,0.00,0.00),(584,820,'5120325','IVA SOBRE COMPRAS','\0',0.00,0.00,0.00,0.00),(585,847,'5120326','HELIOGRAFICAS ( PLANOS )','\0',0.00,0.00,0.00,0.00),(586,945,'5120327','COMISIONES','\0',0.00,0.00,0.00,0.00),(587,1153,'5120328','SUMINISTROS DE PARQUEO','\0',3348.22,3866.07,0.00,7214.29),(588,1155,'5120329','INSUMOS DE PARQUEO','\0',38427.23,0.00,0.00,38427.23),(589,1197,'5120330','PRUEBA POLIGRAFICA','\0',851.79,0.00,0.00,851.79),(590,1199,'5120331','EVENTOS CENTROS COMERCIALES','\0',1608.93,0.00,0.00,1608.93),(591,1213,'5120332','HONORARIOS INGENIERIA Y ARQUITECTURA','\0',110224.82,0.00,0.00,110224.82),(592,1214,'5120333','HONORARIOS LEGALES','\0',34966.77,261.00,0.00,35227.77),(593,1215,'5120334','EXTRACCION DE BASURA','\0',8571.44,4285.72,0.00,12857.16),(594,1216,'5120335','FUMIGACION','\0',9973.20,0.00,0.00,9973.20),(595,7103,'5120336','Impuesto sobre combustible','\0',0.00,0.00,0.00,0.00),(596,723,'5120399','GASTOS VARIOS','\0',0.00,0.00,0.00,0.00),(597,724,'51204','IMPUESTOS FISCALES Y MUNICIPALES','',362523.96,9040.00,0.00,371563.96),(598,725,'5120401','IMPUESTOS FISCALES Y MUNICIPALES','\0',362523.96,9040.00,0.00,371563.96),(599,726,'51205','MANTENIMIENTO Y REPARACIONES','',854950.23,50187.50,0.00,905137.73),(600,727,'5120501','MANTENIMIENTO Y REPARACION DE VEHICULOS','\0',16765.73,506.25,0.00,17271.98),(601,909,'5120502','MANTENIMIENTO EDIFICIOS','\0',79047.42,0.00,0.00,79047.42),(602,728,'5120503','MANTENIMIENTO Y REP. DE COMPUTACION','\0',861.61,0.00,0.00,861.61),(603,729,'5120504','MANTENIMIENTO Y REPARACIONES','\0',228792.08,1051.78,0.00,229843.86),(604,807,'5120505','TRABAJOS DE ELECTRICIDAD','\0',53586.60,1044.22,0.00,54630.82),(605,910,'5120506','TRABAJOS DE PLOMERIA','\0',32327.29,7980.89,0.00,40308.18),(606,911,'5120507','TRABAJOS DE ALBA¥ILERIA','\0',144002.49,4045.44,0.00,148047.93),(607,915,'5120508','TRABAJOS DE HERRERIA','\0',6266.52,0.00,0.00,6266.52),(608,1217,'5120509','TOPOGRAFIA','\0',0.00,0.00,0.00,0.00),(609,1218,'5120510','EQUIPO DE SEGURIDAD','\0',6662.68,0.00,0.00,6662.68),(610,1219,'5120511','HIDROSANITARIO','\0',27542.12,5491.07,0.00,33033.19),(611,1220,'5120513','PINTURA','\0',82576.25,775.89,0.00,83352.14),(612,1221,'5120514','JARDINERIA Y RIEGO','\0',155773.16,29291.96,0.00,185065.12),(613,1222,'5120515','PAVIMENTO Y ADOQUIN','\0',5275.48,0.00,0.00,5275.48),(614,1223,'5120516','HERRAMIENTAS MENORES','\0',12351.34,0.00,0.00,12351.34),(615,7083,'5120517','EQUIPOS DE AIRE ACONDICIONADO','\0',0.00,0.00,0.00,0.00),(616,783,'5120599','TRABAJOS VARIOS','\0',3119.46,0.00,0.00,3119.46),(617,789,'51206','DEPRECIACIONES Y AMORTIZACIONES','',4775179.53,0.00,0.00,4775179.53),(618,790,'5120601','DEPRECIACION INMUEBLES','\0',4570445.70,0.00,0.00,4570445.70),(619,791,'5120602','DEPRECIACION VEHICULOS','\0',17072.43,0.00,0.00,17072.43),(620,792,'5120603','DEPRECIACION MOBILIARIO Y EQUIPO','\0',162854.19,0.00,0.00,162854.19),(621,793,'5120604','DEPRECIACION EQUIPO DE COMPUTACION','\0',24775.96,0.00,0.00,24775.96),(622,794,'5120605','DEPRECIACION HERRAMIENTAS','\0',31.25,0.00,0.00,31.25),(623,795,'5120606','DEPRECIACION MAQUINARIA','\0',0.00,0.00,0.00,0.00),(624,796,'5120607','AMORTIZACION GASTOS DE ORGANIZACION','\0',0.00,0.00,0.00,0.00),(625,797,'5120608','','\0',0.00,0.00,0.00,0.00),(626,798,'5120609','','\0',0.00,0.00,0.00,0.00),(627,799,'5120699','DIVERSOS','\0',0.00,0.00,0.00,0.00),(628,839,'51207','GASTOS NO DEDUCIBLES','',29574.95,0.00,0.00,29574.95),(629,840,'5120701','IVA','\0',0.00,0.00,0.00,0.00),(630,841,'5120702','MULTA E INTERESES','\0',346.94,0.00,0.00,346.94),(631,842,'5120703','IMPUESTO UNICO S/INMUEBLES','\0',0.00,0.00,0.00,0.00),(632,848,'5120704','ISR A¤OS ANTERIORES','\0',0.00,0.00,0.00,0.00),(633,919,'5120705','IEMA','\0',0.00,0.00,0.00,0.00),(634,920,'5120706','IMPUESTO CIRCULACION DE VEHICULOS','\0',47.10,0.00,0.00,47.10),(635,1187,'5120707','Gastos varios','\0',0.00,0.00,0.00,0.00),(636,7108,'5120799','Gastos no deducibles varios','\0',29180.91,0.00,0.00,29180.91),(637,806,'512504','MANTENIMIENTO Y REPARACIONES','\0',450.89,0.00,0.00,450.89),(638,800,'6','GASTOS Y PRODUCTOS FINANCIEROS','',774041.96,0.00,0.00,774041.96),(639,7099,'61101','GASTOS FINANCIEROS','',806055.90,0.00,0.00,806055.90),(640,801,'6110101','ISR S/INTERESES BANCARIOS','\0',26823.19,0.00,0.00,26823.19),(641,802,'6110102','PERDIDA EN VENTA DE ACTIVOS FIJOS','\0',0.00,0.00,0.00,0.00),(642,1190,'6110103','DIFERENCIAL CAMBIARIO','\0',218888.75,0.00,0.00,218888.75),(643,1234,'6110104','INTERESES GASTOS S/PRESTAMOS BANCARIOS','\0',560343.96,0.00,0.00,560343.96),(644,803,'61102','PRODUCTOS FINANCIEROS','',-32013.94,0.00,0.00,-32013.94),(645,804,'6110201','INGRESOS POR INTERESES BANCARIOS','\0',-32013.94,0.00,0.00,-32013.94),(646,805,'6110202','GANANCIA EN VENTA DE ACTIVOS FIJOS','\0',0.00,0.00,0.00,0.00),(647,1191,'6110203','DIFERECIAL CAMBIARIO','\0',0.00,0.00,0.00,0.00);
/*!40000 ALTER TABLE `rptconstproc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptestadoresultados`
--

DROP TABLE IF EXISTS `rptestadoresultados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptestadoresultados` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcuenta` int(10) unsigned NOT NULL,
  `codigo` varchar(10) NOT NULL,
  `nombrecta` varchar(75) NOT NULL,
  `tipocuenta` bit(1) NOT NULL DEFAULT b'0',
  `ingresos` bit(1) NOT NULL DEFAULT b'0',
  `parasuma` bit(1) NOT NULL DEFAULT b'0',
  `estotal` bit(1) NOT NULL DEFAULT b'0',
  `saldo` decimal(20,2) NOT NULL DEFAULT '0.00',
  `s_ene` decimal(20,2) NOT NULL DEFAULT '0.00',
  `s_feb` decimal(20,2) NOT NULL DEFAULT '0.00',
  `s_mar` decimal(20,2) NOT NULL DEFAULT '0.00',
  `s_abr` decimal(20,2) NOT NULL DEFAULT '0.00',
  `s_may` decimal(20,2) NOT NULL DEFAULT '0.00',
  `s_jun` decimal(20,2) NOT NULL DEFAULT '0.00',
  `s_jul` decimal(20,2) NOT NULL DEFAULT '0.00',
  `s_ago` decimal(20,2) NOT NULL DEFAULT '0.00',
  `s_sep` decimal(20,2) NOT NULL DEFAULT '0.00',
  `s_oct` decimal(20,2) NOT NULL DEFAULT '0.00',
  `s_nov` decimal(20,2) NOT NULL DEFAULT '0.00',
  `s_dic` decimal(20,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptestadoresultados`
--

LOCK TABLES `rptestadoresultados` WRITE;
/*!40000 ALTER TABLE `rptestadoresultados` DISABLE KEYS */;
INSERT INTO `rptestadoresultados` VALUES (1,1321,'4','I N G R E S O S','','','\0','\0',-1156349.72,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(2,1322,'411','VENTAS','','','\0','\0',-1156349.72,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(3,1323,'41101','INGRESOS','','','\0','\0',-1156349.72,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(4,1324,'4110101','ALQUILERES','\0','','\0','\0',-1052066.79,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(5,1325,'4110102','INGRESOS VARIOS','\0','','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(6,1326,'4110103','SERVICIOS VARIOS','\0','','\0','\0',-104282.93,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(8,0,'','Subtotal de cuentas de ingreso que inician con 4 --->','','','','\0',-1156349.72,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(9,0,'99999','Total de ingresos','','','\0','',-1156349.72,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(10,1327,'5','C O S T O S   Y  G A S T O S','','\0','\0','\0',411796.23,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(11,1328,'511','GASTOS DE OPERACION','','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(12,1329,'51101','GASTOS DE VENTA','','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(13,1330,'512','GASTOS DE ADMINISTRACION','','\0','\0','\0',411796.23,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(14,1331,'51201','GASTOS DE PERSONAL','','\0','\0','\0',96184.45,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(15,1332,'5120101','SUELDOS Y SALARIOS ORDINARIOS','\0','\0','\0','\0',60243.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(16,1333,'5120102','SUELDOS Y SALARIOS EXTRAORDINARIOS','\0','\0','\0','\0',2987.56,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(17,1334,'5120103','BONIFICACION INCENTIVO DECRETO 78-89,7-2000 Y 37-2001','\0','\0','\0','\0',26292.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(18,1335,'5120104','VACACIONES','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(19,1336,'5120105','INDEMNIZACION','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(20,1337,'5120106','AGUINALDOS','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(21,1338,'5120107','BONO 14','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(22,1339,'5120108','COMISIONES','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(23,1340,'5120109','CUOTA IGSS','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(24,1341,'5120110','GRATIFICACIONES AL PERSONAL','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(25,1342,'5120111','SEGURO SOCIAL','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(26,1343,'5120112','GASTOS DE REPRESENTACION/BIENESTAR EMPL.','\0','\0','\0','\0',4849.42,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(27,1344,'5120113','GASTOS MEDICOS/MEDICINAS','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(28,1345,'5120114','DIETAS','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(29,1346,'5120115','','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(30,1654,'5120116','GASTOS SELECCION DE PERSONAL','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(31,1681,'5120117','IMPUESTO DE COMBUSTIBLE','\0','\0','\0','\0',71.40,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(32,1710,'5120118','PRUEBA DE POLIGRAFO','\0','\0','\0','\0',1741.07,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(33,1347,'5120199','DIVERSOS','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(34,1348,'51202','GASTOS POR SERVICIOS','','\0','\0','\0',19119.09,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(35,1349,'5120201','TELEFONO','\0','\0','\0','\0',4891.36,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(36,1350,'5120202','ENERGIA ELECTRICA','\0','\0','\0','\0',12619.36,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(37,1351,'5120203','CUOTA AGUA','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(38,1550,'5120204','TASA MUNICIPAL','\0','\0','\0','\0',1608.37,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(39,1597,'5120205','CUOTA CABLE','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(40,1352,'5120299','DIVERSOS','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(41,1353,'51203','GASTOS GENERALES','','\0','\0','\0',137756.83,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(42,1354,'5120301','SEGUROS','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(43,1355,'5120302','COMBUSTIBLES Y LUBRICANTES','\0','\0','\0','\0',275.53,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(44,1356,'5120303','PAPELERIA Y UTILES DE OFICINA','\0','\0','\0','\0',4126.98,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(45,1357,'5120304','SUSCRIPCION Y PUBLICACION','\0','\0','\0','\0',460.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(46,1358,'5120305','CORREOS','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(47,1359,'5120306','PARQUEOS','\0','\0','\0','\0',2106.25,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(48,1360,'5120307','GASTOS BANCARIOS','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(49,1361,'5120308','UNIFORMES Y EQUIPO','\0','\0','\0','\0',2142.86,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(50,1362,'5120309','PASAJES','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(51,1363,'5120310','GASTOS DE VIAJE','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(52,1364,'5120311','HONORARIOS VARIOS','\0','\0','\0','\0',12750.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(53,1365,'5120312','TRASLADO DE PLANILLA','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(54,1366,'5120313','ANUNCIO Y PROPAGANDA','\0','\0','\0','\0',728.80,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(55,1367,'5120314','ALQUILERES','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(56,1368,'5120315','GASTOS DE COMPUTACION','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(57,1369,'5120316','VIGILANCIA','\0','\0','\0','\0',107901.79,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(58,1370,'5120317','LIMPIEZA','\0','\0','\0','\0',2852.68,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(59,1371,'5120318','DONACIONES Y CONTRIBUCIONES','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(60,1372,'5120319','GASTOS LEGALES','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(61,1374,'5120320','HERRAMIENTAS MENORES','\0','\0','\0','\0',885.15,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(62,1373,'5120321','FLETES','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(63,1375,'5120322','CHAPEO','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(64,1458,'5120323','CAPACITACION PERSONAL','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(65,1459,'5120324','GRATIFICACIONES','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(66,1460,'5120325','HELIOGRAFICAS ( PLANOS )','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(67,1467,'5120326','COMISIONES S/ARRENDAMIENTOS','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(68,1683,'5120327','INSUMOS DE PARQUEO','\0','\0','\0','\0',1026.79,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(69,1725,'5120328','EVENTOS CENTROS COMERCIALES','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(70,1763,'5120329','HONORARIOS INGENIERIA Y ARQUITECTURA','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(71,1764,'5120330','HONORARIOS LEGALES','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(72,1765,'5120331','EXTRACCION DE BASURA','\0','\0','\0','\0',2500.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(73,1766,'5120332','FUMIGACION','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(74,1376,'5120399','GASTOS VARIOS','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(75,1377,'51204','IMPUESTOS FISCALES Y MUNICIPALES','','\0','\0','\0',300.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(76,1378,'5120401','IMPUESTOS FISCALES Y MUNICIPALES','\0','\0','\0','\0',300.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(77,1379,'51205','MANTENIMIENTO Y REPARACIONES','','\0','\0','\0',48269.25,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(78,1380,'5120501','VEHICULOS','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(79,1574,'5120502','EDIFICIOS','\0','\0','\0','\0',13788.56,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(80,1381,'5120503','COMPUTACION','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(81,1382,'5120504','MANTENIMIENTO Y REPARACIONES','\0','\0','\0','\0',4263.15,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(82,1444,'5120505','ELECTRICIDAD','\0','\0','\0','\0',401.79,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(83,1575,'5120506','PLOMERIA','\0','\0','\0','\0',1130.17,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(84,1577,'5120507','ALBA¥ILERIA Y HERRERIA','\0','\0','\0','\0',25770.40,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(85,1579,'5120508','HERRERIA','\0','\0','\0','\0',1696.43,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(86,1613,'5120509','CARPINTERIA','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(87,1767,'5120510','TOPOGRAFIA','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(88,1768,'5120511','EQUIPO DE SEGURIDAD','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(89,1769,'5120512','VENTANERIA','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(90,1770,'5120513','HIDROSANITARIO','\0','\0','\0','\0',1183.04,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(91,1771,'5120514','PINTURA','\0','\0','\0','\0',35.71,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(92,1772,'5120515','JARDINERIA Y RIEGOS','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(93,1773,'5120516','PAVIMENTO Y ADOQUIN','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(94,1774,'5120517','HERRAMIENTAS MENORES','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(95,1576,'5120599','TRABAJOS VARIOS','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(96,1426,'51206','DEPRECIACIONES Y AMORTIZACIONES','','\0','\0','\0',110166.61,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(97,1427,'5120601','DEPRECIACION INMUEBLES','\0','\0','\0','\0',104443.87,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(98,1428,'5120602','DEPRECIACION VEHICULOS','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(99,1429,'5120603','DEPRECIACION MOBILIARIO Y EQUIPO','\0','\0','\0','\0',5722.74,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(100,1430,'5120604','DEPRECIACION EQUIPO DE COMPUTACION','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(101,1431,'5120605','DEPRECIACION HERRAMIENTAS','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(102,1432,'5120606','DEPRECIACION MAQUINARIA','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(103,1433,'5120607','AMORTIZACION GASTOS DE ORGANIZACION','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(104,1434,'5120608','','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(105,1435,'5120609','','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(106,1436,'5120699','DIVERSOS','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(107,1469,'51207','GASTOS NO DEDUCIBLES','','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(108,1470,'5120701','I.V.A.','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(109,1471,'5120702','MULTAS','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(110,1488,'5120703','ISET (GASTO NO DEDUCIBLE)','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(111,1491,'5120704','ISR a¥os anteriores','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(112,1581,'5120705','IEMA','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(113,1606,'5120706','TIMBRES S/DIVIDENDOS','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(114,1723,'5120707','CUENTAS INCOBRABLES','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(115,1472,'5120799','DIVERSOS','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(116,7084,'5150518','EQUIPO AIRE ACONDICIONADO','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(137,0,'','Subtotal de cuentas de gasto que inician con 5 --->','','\0','','\0',411796.23,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(138,1437,'6','GASTOS Y PRODUCTOS FINANCIEROS','','\0','\0','\0',-1025.57,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(139,1523,'611','GASTOS FINANCIEROS','','\0','\0','\0',-1025.57,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(140,1438,'61101','GASTOS FINANCIEROS','','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(141,1439,'6110101','INTERESES BANCARIOS','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(142,1440,'6110102','PERDIDA EN VENTA DE ACTIVOS FIJOS','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(143,1761,'6110103','DIFERENCIAL CAMBIARIO','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(144,1445,'6110199','DIVERSOS','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(145,1441,'61102','PRODUCTOS FINANCIEROS','','\0','\0','\0',-1025.57,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(146,1442,'6110201','INGRESOS POR INTERESES BANCARIOS','\0','\0','\0','\0',-1025.57,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(147,1443,'6110202','GANANCIA EN VENTA DE ACTIVOS FIJOS','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(148,1605,'6110203','DIVIDENDOS SOBRE ACCIONES','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(149,1446,'6110299','DIVERSOS','\0','\0','\0','\0',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(153,0,'','Subtotal de cuentas de gasto que inician con 6 --->','','\0','','\0',-1025.57,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(154,0,'99999','Total de gastos','','\0','\0','',410770.66,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(155,0,'99999','Ganancia del ejercicio','','\0','\0','\0',745579.06,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00);
/*!40000 ALTER TABLE `rptestadoresultados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptlibromayor`
--

DROP TABLE IF EXISTS `rptlibromayor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptlibromayor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcuentac` int(11) NOT NULL DEFAULT '0',
  `codigo` varchar(10) NOT NULL,
  `nombrecta` varchar(75) NOT NULL,
  `tipocuenta` bit(1) NOT NULL DEFAULT b'0',
  `anterior` decimal(20,2) NOT NULL DEFAULT '0.00',
  `debe` decimal(20,2) NOT NULL DEFAULT '0.00',
  `haber` decimal(20,2) NOT NULL DEFAULT '0.00',
  `actual` decimal(20,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `CodigoASC` (`codigo`) USING BTREE,
  KEY `TipoCuentaASC` (`tipocuenta`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1024 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptlibromayor`
--

LOCK TABLES `rptlibromayor` WRITE;
/*!40000 ALTER TABLE `rptlibromayor` DISABLE KEYS */;
INSERT INTO `rptlibromayor` VALUES (1,7054,'1','ACTIVO','',60512379.53,98609653.77,93494538.36,65627494.94),(2,2,'111','ACTIVO CIRCULANTE','',8371780.94,22723136.11,28807963.28,2286953.77),(3,3,'11101','EFECTIVO','',-90561.07,7732347.49,7632363.62,9422.80),(4,4,'1110101','CAJA GENERAL','\0',-96983.87,7729347.49,7632363.62,0.00),(5,5,'1110102','CAJA CHICA','\0',6422.80,3000.00,0.00,9422.80),(6,6,'11102','BANCOS','',8462342.01,14990788.62,21175599.66,2277530.97),(7,7,'1110202','BANCO INTERNACIONAL','\0',24950.00,768600.00,512450.00,281100.00),(8,419,'1110203','BANCO AGROMERCANTIL, S.A.','\0',0.00,0.00,0.00,0.00),(9,439,'1110204','BANCO INDUSTRIAL, S.A.','\0',3190788.04,10601361.55,12870180.68,921968.91),(10,595,'1110205','BANCO INDUSTRIAL $','\0',2425743.56,3132278.59,5428574.15,129448.00),(11,596,'1110206','BANCO HSBC','\0',2820860.41,0.00,2364326.26,456534.15),(12,7057,'1110207','Banco G&T Continental, S. A.','\0',0.00,488548.48,68.57,488479.91),(13,7055,'112','CUENTAS POR COBRAR','',5318719.41,18416017.87,16910841.16,6823896.12),(14,9,'11201','CLIENTES','',875995.22,3442378.74,3395238.65,923135.31),(15,238,'1120102','COMIDAS Y SERVICIOS, S. A. (COMSSA)','\0',0.00,0.00,0.00,0.00),(16,309,'1120103','DONA, S. A.','\0',0.00,0.00,0.00,0.00),(17,326,'1120104','OFICINA DE SERVICIO CIVIL','\0',128100.00,640500.00,768600.00,0.00),(18,370,'1120105','ERICK SEIJAS','\0',0.00,0.00,0.00,0.00),(19,371,'1120106','POLLO BRUJO DE C.A.','\0',0.00,308071.78,308071.78,0.00),(20,374,'1120107','TELEFONICA MOVILES GUATEMALA, S.A.','\0',0.00,0.00,0.00,0.00),(21,375,'1120108','CREDOMATIC DE GUATEMALA, S.A.','\0',0.00,94479.75,94479.75,0.00),(22,380,'1120109','ELBA DE HUEZO','\0',6156.35,30656.23,30663.63,6148.95),(23,381,'1120110','KAPPETENANGO VERITAS','\0',0.00,0.00,0.00,0.00),(24,382,'1120111','KIA','\0',0.00,0.00,0.00,0.00),(25,383,'1120112','M. LON','\0',0.00,0.00,0.00,0.00),(26,384,'1120113','INDUSTRIA DE LAVANDERIA Y MANT, S.A.','\0',9360.00,0.00,0.00,9360.00),(27,391,'1120114','BURGOS LIMA Y CIA LTA','\0',0.00,30275.92,30275.92,0.00),(28,398,'1120115','ANIBAL IBARRA MORALES','\0',0.00,11405.24,11405.24,0.00),(29,399,'1120116','BERTHA YAC','\0',0.00,0.00,0.00,0.00),(30,400,'1120117','ADAM STANLEY CARDONA POLANCO','\0',0.00,0.00,0.00,0.00),(31,401,'1120118','JOSE ANTONIO CHAN JO','\0',0.00,143328.74,114566.03,28762.71),(32,403,'1120119','ELEFEGO ADAN AQUINO','\0',0.00,0.00,0.00,0.00),(33,405,'1120120','ARABELA DE GUATEMALA, S.A.','\0',0.00,0.00,0.00,0.00),(34,409,'1120121','SAT / GRC','\0',0.00,0.00,0.00,0.00),(35,410,'1120122','COMERCIALIZADORA Y REPRESENTACIONES ARTISTICAS','\0',0.00,0.00,0.00,0.00),(36,412,'1120123','DANIEL ANTONIO RODRIGUEZ ALVARADO','\0',0.00,0.00,0.00,0.00),(37,417,'1120124','VIAJAR ES CRECER, S.A.','\0',0.00,0.00,0.00,0.00),(38,420,'1120125','INVERSIONES PROTECTORAS','\0',0.00,0.00,0.00,0.00),(39,425,'1120126','MARIA ISABEL MENDEZ DE DE LEON/METROFARMACIA','\0',0.00,0.00,0.00,0.00),(40,430,'1120127','MOTOR EXTREMO, S.A.','\0',0.00,0.00,0.00,0.00),(41,437,'1120128','JUAN CARLOS LOPEZ CUIN','\0',0.00,0.00,0.00,0.00),(42,440,'1120129','PUBLICIDAD GRAFICA','\0',0.00,0.00,0.00,0.00),(43,445,'1120130','IDEAS COCINAS, S.A.','\0',0.00,0.00,0.00,0.00),(44,447,'1120131','JOREMAN U. CATALAN DIAZ','\0',0.00,0.00,0.00,0.00),(45,448,'1120132','ZELU, S. A.','\0',0.00,0.00,0.00,0.00),(46,449,'1120133','INVERSIONES JUVENILES, S.A.','\0',51523.91,0.00,0.00,51523.91),(47,450,'1120134','SULY MARINE CATALAN ORELLANA','\0',0.00,0.00,0.00,0.00),(48,451,'1120135','LABORATORIO DE IDEAS, S.A.','\0',5360.25,27610.69,16377.61,16593.33),(49,452,'1120136','WORLD CONNECTIOS','\0',0.00,0.00,0.00,0.00),(50,460,'1120137','VEHICULOS AUTOMOTORES DE GUATEMALA, S.A.','\0',0.00,0.00,0.00,0.00),(51,473,'1120138','CONTINENTAL MOTORES, S.A.','\0',0.00,0.00,0.00,0.00),(52,474,'1120139','INVERSIONES COMERCIALES DEL PACIFICO','\0',0.00,0.00,0.00,0.00),(53,477,'1120140','AUGUSTO CHAW CO PROPIEDAD','\0',0.00,0.00,0.00,0.00),(54,480,'1120141','ANDREA ABULARACH SAMAYOA DE MOVIL','\0',0.00,0.00,0.00,0.00),(55,481,'1120142','HEINYEL IMPORTACIONES, S.A.','\0',0.00,0.00,0.00,0.00),(56,483,'1120143','J L INTERNACIONAL, S.A.','\0',0.00,0.00,0.00,0.00),(57,485,'1120144','PARAGON','\0',0.00,0.00,0.00,0.00),(58,486,'1120145','GESTIONADORA DE SERVICIOS, S. A.','\0',626069.98,0.00,0.00,626069.98),(59,492,'1120146','YOLANDA LIZETH JIMENEZ BERGANZA','\0',0.00,0.00,0.00,0.00),(60,497,'1120147','CHRISTIAN RAUL GARCIA GARCIA','\0',0.00,0.00,0.00,0.00),(61,499,'1120148','HEYDI ADELINA REINA FLORES','\0',0.00,0.00,0.00,0.00),(62,503,'1120149','SBA TORRES GUATEMALA, S.A.','\0',0.00,45291.19,45291.19,0.00),(63,506,'1120150','SOLIDA EXPANSION, S.A.','\0',20731.25,0.00,0.00,20731.25),(64,509,'1120151','ELIOTH SOLARES/CIGARRILLOS ELECTRICOS','\0',0.00,0.00,0.00,0.00),(65,510,'1120152','ROPA DEPORTIVA','\0',0.00,0.00,0.00,0.00),(66,511,'1120153','ROSENFLOWERS','\0',4278.38,0.00,0.00,4278.38),(67,512,'1120154','OLIVERA, S. A.','\0',0.00,0.00,0.00,0.00),(68,513,'1120155','EDGAR EDUARDO LARA/INTERMEDICA','\0',0.00,0.00,0.00,0.00),(69,514,'1120156','MIA@SALON','\0',0.00,0.00,0.00,0.00),(70,515,'1120157','SALON HEADS UP','\0',0.00,0.00,0.00,0.00),(71,516,'1120158','ILUSIONES','\0',0.00,0.00,0.00,0.00),(72,526,'1120159','INVERSIONES CIFGO, S. A.','\0',6063.57,0.00,0.00,6063.57),(73,536,'1120160','AUDIO RACING SHOP','\0',0.00,26190.02,20937.76,5252.26),(74,547,'1120161','NUTRICION INICIAL, S. A. (NUTRINSA)','\0',6098.79,24280.43,30379.22,0.00),(75,548,'1120162','LINDA GABRIELA SALAZAR GUDIEL (DENTARIS)','\0',41.73,29579.60,29579.61,41.72),(76,551,'1120163','DISINCO & COPROPIEDAD','\0',6066.69,35541.05,41607.74,0.00),(77,559,'1120164','COMIDAS ESPECIALIZADAS Y SERVICIOS DE GUATEMALA','\0',0.00,0.00,0.00,0.00),(78,563,'1120165','Industria de Panificadora Isopan, S. A.','\0',0.00,36850.95,36850.95,0.00),(79,575,'1120166','ELSY YESSENIA SALMERON (SISTERS)','\0',6144.32,18323.76,24468.08,0.00),(80,597,'1120167','Grupo Solid (La Paleta)','\0',0.00,120062.51,42991.87,77070.64),(81,7059,'1120168','OPERADORA DE TIENDAS','\0',0.00,648637.99,648637.99,0.00),(82,7060,'1120169','INDUSTRIAS DE LAVANDERIA, S. A.','\0',0.00,36993.86,36993.86,0.00),(83,7113,'1120170','AIRE LIBRE, S. A.','\0',0.00,0.00,0.00,0.00),(84,7061,'1120171','MEGA SUMPLEMENTOS NUTRIMAS, S. A.','\0',0.00,41995.68,41995.68,0.00),(85,7062,'1120172','OPTICAS EXCLUSIVAS, S. A.','\0',0.00,66187.92,65937.92,250.00),(86,7063,'1120173','BANCO G&T CONTINENTAL, S. A.','\0',0.00,79073.50,79073.50,0.00),(87,7064,'1120174','INVERSIONES LUKAMI, S. A.','\0',0.00,40448.24,17000.00,23448.24),(88,7065,'1120175','MEJORES INGREDIENTES, S. A.','\0',0.00,137045.01,137045.01,0.00),(89,7066,'1120176','DROGUERIA CENTRO HISTORICO, S. A.','\0',0.00,67438.54,67438.54,0.00),(90,7067,'1120177','COMIDAS ESPECIALIZADOS Y SERV.GUATEMALA','\0',0.00,326385.22,326385.22,0.00),(91,7089,'1120178','EDGAR ELIAS VILLEGAS','\0',0.00,0.00,0.00,0.00),(92,7068,'1120179','DISTRIBUIDORA POPS, S. A.','\0',0.00,33467.03,33467.03,0.00),(93,7069,'1120180','FLUSHING, S. A.','\0',0.00,54465.19,37198.99,17266.20),(94,7070,'1120181','CORPORACION MEDICA A.R., S. A.','\0',0.00,33860.64,22981.36,10879.28),(95,7028,'1120182','BEAUTY DEPOT, S. A.','\0',0.00,43542.85,43542.85,0.00),(96,8,'1120183','FRENCH','\0',0.00,35267.43,34774.82,492.61),(97,7044,'1120184','KINGS BARBER','\0',0.00,41821.61,41613.57,208.04),(98,7045,'1120185','CIRCUS PARTY','\0',0.00,19576.67,13352.04,6224.63),(99,7046,'1120186','CAJERO INTERBANCO','\0',0.00,3328.64,3328.64,0.00),(100,7050,'1120187','CAJERO BANCO INDUSTRIAL','\0',0.00,3739.68,3739.68,0.00),(101,7047,'1120188','HILOS Y BOTONES','\0',0.00,15740.24,10364.13,5376.11),(102,7048,'1120189','LLAVINSA','\0',0.00,8017.94,2692.12,5325.82),(103,7049,'1120190','EL INJERTO','\0',0.00,4173.80,4173.80,0.00),(104,7052,'1120191','MEJORES INGREDIENTES, S. A.','\0',0.00,0.00,0.00,0.00),(105,7074,'1120192','Maria Isabel Archila ( Warehouse)','\0',0.00,0.00,0.00,0.00),(106,7078,'1120193','ORIENTAL TOWN, S. A.','\0',0.00,73284.87,73284.87,0.00),(107,7085,'1120194','TACO BELL / BELLUNO, S. A.','\0',0.00,0.00,0.00,0.00),(108,7086,'1120195','DOMINOS /MAYORPIT, S. A.','\0',0.00,0.00,0.00,0.00),(109,7090,'1120196','KATTERINNE PAOLA ARGUETA','\0',0.00,0.00,0.00,0.00),(110,7112,'1120197','DISO, S. A.','\0',0.00,0.00,0.00,0.00),(111,7087,'1120198','PARQUEO PASEO LIBERACION','\0',0.00,0.00,0.00,0.00),(112,10,'1120199','CLIENTES VARIOS','\0',0.00,5438.33,3670.65,1767.68),(113,11,'11202','CUENTAS POR LIQUIDAR','',113598.23,12701626.44,12731674.35,83550.32),(114,12,'1120201','RICARDO ABA PULUC','\0',0.00,0.00,0.00,0.00),(115,146,'1120202','FABRICA NEON, S. A.','\0',0.00,0.00,0.00,0.00),(116,148,'1120203','LLOYDS BANK PLC.-','\0',0.00,0.00,0.00,0.00),(117,149,'1120204','PLANTOR','\0',0.00,0.00,0.00,0.00),(118,150,'1120205','JUAN JOSE MUÑOZ','\0',0.00,0.00,0.00,0.00),(119,151,'1120206','TELECTRO','\0',0.00,0.00,0.00,0.00),(120,152,'1120207','MAPRI','\0',0.00,0.00,0.00,0.00),(121,154,'1120208','CENTRAL MOTRIZ','\0',0.00,0.00,0.00,0.00),(122,155,'1120209','SANTIAGO YUPE QUELEX','\0',0.00,0.00,0.00,0.00),(123,187,'1120210','LA PATRONA','\0',0.00,0.00,0.00,0.00),(124,188,'1120211','ELEVADORES Y MAQUINARIAS, S. A.','\0',0.00,0.00,0.00,0.00),(125,189,'1120212','FERSUC','\0',0.00,0.00,0.00,0.00),(126,190,'1120213','MAURO QUINTANA GUTIERREZ','\0',0.00,0.00,0.00,0.00),(127,217,'1120214','RANDOLFO GILL PELAEZ','\0',0.00,0.00,0.00,0.00),(128,216,'1120215','ANTONIO RAMIREZ','\0',0.00,0.00,0.00,0.00),(129,218,'1120216','HUMBERTO PAZ','\0',0.00,0.00,0.00,0.00),(130,219,'1120217','HUMBERTO FUENTES','\0',0.00,0.00,0.00,0.00),(131,220,'1120218','PAIZ PRADERA','\0',0.00,0.00,0.00,0.00),(132,229,'1120219','EULALIO TAQUE PLATA','\0',0.00,0.00,0.00,0.00),(133,232,'1120220','GOLAN, S. A.','\0',0.00,0.00,0.00,0.00),(134,231,'1120221','COMUNIDAD JUDIA DE GUATEMALA','\0',0.00,0.00,0.00,0.00),(135,233,'1120222','CASA HERMES','\0',0.00,0.00,0.00,0.00),(136,234,'1120223','TENCO, S. A.','\0',0.00,0.00,0.00,0.00),(137,235,'1120224','CODEINSA','\0',0.00,0.00,0.00,0.00),(138,236,'1120225','PEMUELLER & COHEN','\0',0.00,0.00,0.00,0.00),(139,239,'1120226','AUGUSTO MANSILLA','\0',0.00,0.00,0.00,0.00),(140,240,'1120227','GRUPO DE SERVICIOS DE INFORMACION,S.A.','\0',0.00,0.00,0.00,0.00),(141,241,'1120228','WER DOUHERTY ARQUITECTOS','\0',0.00,0.00,0.00,0.00),(142,242,'1120229','PROPORCION & ESCALA, S. A.','\0',0.00,0.00,0.00,0.00),(143,243,'1120230','GAMALERO SUCS. S. A.','\0',0.00,0.00,0.00,0.00),(144,244,'1120231','CUSPIDE, S. A.','\0',0.00,0.00,0.00,0.00),(145,248,'1120232','FERCO, S. A.','\0',0.00,0.00,0.00,0.00),(146,249,'1120233','TOPIS, S. A.','\0',0.00,0.00,0.00,0.00),(147,260,'1120234','MUEBLES SELECTOS, S. A.','\0',0.00,0.00,0.00,0.00),(148,261,'1120235','COMCEL','\0',0.00,0.00,0.00,0.00),(149,265,'1120236','MARCO ANTONIO GARCIA','\0',0.00,0.00,0.00,0.00),(150,266,'1120237','PLOTECNIA-AUGUSTO MORALES','\0',0.00,0.00,0.00,0.00),(151,268,'1120238','AXIS, S.A.','\0',0.00,0.00,0.00,0.00),(152,269,'1120239','KAREN DE TENENBAUM','\0',0.00,0.00,0.00,0.00),(153,271,'1120240','SIDECO, S.A.','\0',0.00,0.00,0.00,0.00),(154,275,'1120241','ING. GIOVANNI POLANCO','\0',0.00,0.00,0.00,0.00),(155,276,'1120242','GREGORIO RODRIGUEZ','\0',0.00,0.00,0.00,0.00),(156,277,'1120243','PEDRO VASQUEZ LOPEZ','\0',0.00,0.00,0.00,0.00),(157,281,'1120244','PLASTICA CONTEMPORANEA','\0',0.00,0.00,0.00,0.00),(158,282,'1120245','RENTA AUTOS','\0',0.00,0.00,0.00,0.00),(159,283,'1120246','EDGAR H. CU COBAR','\0',0.00,0.00,0.00,0.00),(160,285,'1120247','FRANCISCO MENENDEZ','\0',0.00,0.00,0.00,0.00),(161,287,'1120248','FROILAN SABAN','\0',0.00,0.00,0.00,0.00),(162,289,'1120249','SIRSA','\0',0.00,0.00,0.00,0.00),(163,291,'1120250','PONCEANO DE JESUS ORTIZ','\0',0.00,0.00,0.00,0.00),(164,292,'1120251','ARQ. LUIS FERNANDO CRUZ','\0',0.00,0.00,0.00,0.00),(165,293,'1120252','LUIS ALFREDO BORRAYO','\0',0.00,0.00,0.00,0.00),(166,294,'1120253','SUPER SERVICIO REFORMA','\0',0.00,0.00,0.00,0.00),(167,296,'1120254','ARQ.FERNANDO SAENZ','\0',0.00,0.00,0.00,0.00),(168,297,'1120255','ANTONIO NUÑEZ/JEAN ELECTRICAL SYSTEMS','\0',0.00,0.00,0.00,0.00),(169,299,'1120256','DECORMUNDO','\0',0.00,0.00,0.00,0.00),(170,300,'1120257','YEONG BOOK LEE','\0',0.00,0.00,0.00,0.00),(171,302,'1120258','E.E.G.S.A.','\0',0.00,0.00,0.00,0.00),(172,303,'1120259','ING.CARLOS MARTINEZ (SUPER PROYECTOS)','\0',0.00,0.00,0.00,0.00),(173,304,'1120260','IDLAMRESA','\0',0.00,0.00,0.00,0.00),(174,305,'1120261','MIMSA','\0',0.00,0.00,0.00,0.00),(175,307,'1120262','DECORCERAMICA','\0',0.00,0.00,0.00,0.00),(176,308,'1120263','VALLAS PUBLICITARIAS, S.A.','\0',0.00,0.00,0.00,0.00),(177,314,'1120264','JORGE R. ROBLES MORALES','\0',0.00,0.00,0.00,0.00),(178,316,'1120265','MANTYSA','\0',0.00,0.00,0.00,0.00),(179,317,'1120266','JUNKALCO, S.A.','\0',0.00,0.00,0.00,0.00),(180,318,'1120267','ARAMIS, S.A.','\0',0.00,0.00,0.00,0.00),(181,319,'1120268','PRONTOMIX, S.A.','\0',0.00,0.00,0.00,0.00),(182,322,'1120269','PLOMERIA EFICAZ','\0',0.00,0.00,0.00,0.00),(183,324,'1120270','ING. JOSE LUIS RIVERA','\0',0.00,0.00,0.00,0.00),(184,327,'1120271','TALLERES PEREZ','\0',0.00,0.00,0.00,0.00),(185,332,'1120272','FERROTECHOS','\0',0.00,0.00,0.00,0.00),(186,333,'1120273','CARLOS HUMBERTO SANDOVAL','\0',0.00,0.00,0.00,0.00),(187,334,'1120274','DICCA','\0',0.00,0.00,0.00,0.00),(188,336,'1120275','DONA, S. .A','\0',0.00,0.00,0.00,0.00),(189,342,'1120276','CONSULTORIA INMOBILIARIA, S. A.','\0',0.00,0.00,0.00,0.00),(190,349,'1120277','DAHO POZOS DE CENTROAMERICA','\0',0.00,0.00,0.00,0.00),(191,350,'1120278','JAIME HERNANDEZ / SERTECPLO','\0',0.00,0.00,0.00,0.00),(192,351,'1120279','SERGIO DANILO VASQUEZ MONTALVO','\0',0.00,0.00,0.00,0.00),(193,352,'1120280','ESTACIONAMIENTO CLUB','\0',0.00,0.00,0.00,0.00),(194,359,'1120281','SIC, S.A.','\0',0.00,0.00,0.00,0.00),(195,361,'1120282','HIRCONSA','\0',0.00,0.00,0.00,0.00),(196,366,'1120283','MULTICONCRETOS, S.A.','\0',0.00,0.00,0.00,0.00),(197,367,'1120284','RAFAEL HORACIO CORONADO FLORES','\0',0.00,0.00,0.00,0.00),(198,368,'1120285','RODOLFO CARDENAS','\0',0.00,0.00,0.00,0.00),(199,369,'1120286','ALGA, S.A.','\0',0.00,0.00,0.00,0.00),(200,385,'1120287','ARMAGUA','\0',0.00,0.00,0.00,0.00),(201,386,'1120288','OUTSOURCING SOLUTIONS, S.A.','\0',0.00,0.00,0.00,0.00),(202,390,'1120289','DEMOTORS, S.A.','',0.00,0.00,0.00,0.00),(203,392,'1120290','MEDTOP, S.A.','\0',0.00,0.00,0.00,0.00),(204,395,'1120291','EDWIN LOPEZ MONZON','\0',0.00,0.00,0.00,0.00),(205,396,'1120292','COMADEGUA, S.A.','\0',0.00,0.00,0.00,0.00),(206,397,'1120293','SIKA GUATEMALA, S.A.','\0',0.00,0.00,0.00,0.00),(207,458,'1120294','ING.ROLANDO CHINCHILLA','\0',3535.32,0.00,0.00,3535.32),(208,528,'1120295','INDUSTRIA DE MATERIALES DECORATIVOS, S.A.','\0',0.00,0.00,0.00,0.00),(209,552,'1120296','FRANCISCO COC','\0',0.00,0.00,0.00,0.00),(210,1,'1120297','DUNBAR INTERNATIONAL','\0',0.00,36000.00,0.00,36000.00),(211,13,'1120299','CUENTAS POR LIQUIDAR VARIAS','\0',110062.91,12665626.44,12731674.35,44015.00),(212,14,'11203','FUNCIONARIOS Y EMPLEADOS','',0.00,0.00,0.00,0.00),(213,230,'1120301','CESAR AMEZQUITA','\0',0.00,0.00,0.00,0.00),(214,237,'1120302','ELBA DE MAZARIEGOS','\0',0.00,0.00,0.00,0.00),(215,262,'1120303','ENRIQUE SATZ ESPINOZA','\0',0.00,0.00,0.00,0.00),(216,263,'1120304','DANIEL DEL CID','\0',0.00,0.00,0.00,0.00),(217,264,'1120305','BRENDA JEANNETTE DEL CID RODRIGUEZ','\0',0.00,0.00,0.00,0.00),(218,267,'1120306','JOSE RAMOS','\0',0.00,0.00,0.00,0.00),(219,270,'1120307','VICTOR CHINCHILLA','\0',0.00,0.00,0.00,0.00),(220,284,'1120308','LUIS ALFREDO BORRAYO','\0',0.00,0.00,0.00,0.00),(221,288,'1120309','BYRON CASTILLO','\0',0.00,0.00,0.00,0.00),(222,298,'1120310','AURA LUCRECIA MINERA','\0',0.00,0.00,0.00,0.00),(223,306,'1120311','LORENZO HERNANDEZ YOL','\0',0.00,0.00,0.00,0.00),(224,310,'1120312','JULIO RONALDO HERRARTE','\0',0.00,0.00,0.00,0.00),(225,312,'1120313','FELIPE ARNOLDO RIVAS DE LEON','\0',0.00,0.00,0.00,0.00),(226,313,'1120314','OSCAR HICHO E HICHO','\0',0.00,0.00,0.00,0.00),(227,315,'1120315','MARCO ANTONIO TZIRIN SUTUJ','\0',0.00,0.00,0.00,0.00),(228,321,'1120316','LUIS FRANCISCO MARTIN NOLASCO','\0',0.00,0.00,0.00,0.00),(229,329,'1120317','JOSE EVERARDO PABLO','\0',0.00,0.00,0.00,0.00),(230,330,'1120318','DELLANIRA SANCHEZ','\0',0.00,0.00,0.00,0.00),(231,337,'1120319','CLAUDIA PATRICIA MENDEZ BELLOSO','\0',0.00,0.00,0.00,0.00),(232,344,'1120320','MANUEL A. MENDOZA VALENZUELA','\0',0.00,0.00,0.00,0.00),(233,357,'1120321','ANGELA VELASQUEZ LOPEZ DE SALCEDO','\0',0.00,0.00,0.00,0.00),(234,372,'1120322','OSCAR ESTUARDO VALDEZ ORELLANA','\0',0.00,0.00,0.00,0.00),(235,373,'1120323','LINDA ROXANA MONTENEGRO RODRIGUEZ','\0',0.00,0.00,0.00,0.00),(236,378,'1120324','ALEJANDRO PONCE RODAS','\0',0.00,0.00,0.00,0.00),(237,379,'1120325','LUIS ALBERTO BAIZA GARCIA','\0',0.00,0.00,0.00,0.00),(238,393,'1120326','JUAN TIXTA SANCHEZ','\0',0.00,0.00,0.00,0.00),(239,406,'1120327','HECTOR ARIZANDIETA MORALES','\0',0.00,0.00,0.00,0.00),(240,407,'1120328','ROSALIO CUSHE MORALES','\0',0.00,0.00,0.00,0.00),(241,414,'1120329','LUIS PEREZ SUBUYUJ','\0',0.00,0.00,0.00,0.00),(242,415,'1120330','OSCAR ERNESTO PONCE RODAS','\0',0.00,0.00,0.00,0.00),(243,426,'1120331','LUIS ALBERTO RAXON','\0',0.00,0.00,0.00,0.00),(244,429,'1120332','ESWIN LEONEL MARTINEZ SEQUEN','\0',0.00,0.00,0.00,0.00),(245,432,'1120333','LEONARDO RAMIREZ VASQUEZ','\0',0.00,0.00,0.00,0.00),(246,433,'1120334','AGUSTIN CULAJAY EQUITE','\0',0.00,0.00,0.00,0.00),(247,438,'1120335','JUAN FRANCISCO GARAY GAITAN','\0',0.00,0.00,0.00,0.00),(248,453,'1120336','MARIO ARTURO GODINEZ ENRIQUEZ','\0',0.00,0.00,0.00,0.00),(249,455,'1120337','SANDRA LISSETTE VEGA LEMUS','\0',0.00,0.00,0.00,0.00),(250,456,'1120338','ELDER ALEJANDRO GONZALEZ','\0',0.00,0.00,0.00,0.00),(251,472,'1120339','JOSE MANUEL ARIAS MARTINEZ','\0',0.00,0.00,0.00,0.00),(252,525,'1120340','CARLOS RENE MONTERROSO GONZALEZ','\0',0.00,0.00,0.00,0.00),(253,487,'1120341','MARIO ALBERTO DUBON MOYA','\0',0.00,0.00,0.00,0.00),(254,489,'1120342','REYES ABRAHAM COGUOX DE PAZ','\0',0.00,0.00,0.00,0.00),(255,490,'1120343','JOSE FERNANDO PEREZ ALVAREZ','\0',0.00,0.00,0.00,0.00),(256,491,'1120344','ABDIEL LOPEZ XURUC','\0',0.00,0.00,0.00,0.00),(257,493,'1120345','CARLOS AUGUSTO RAZON GUAJAN','\0',0.00,0.00,0.00,0.00),(258,495,'1120346','LUIS FERNANDO SOBERANIS DE LEON','\0',0.00,0.00,0.00,0.00),(259,496,'1120347','FELIX FERNANDO AJANEL FIGUEROA','\0',0.00,0.00,0.00,0.00),(260,500,'1120348','CARLOS ADOLFO GUZMAN LOPEZ','\0',0.00,0.00,0.00,0.00),(261,501,'1120349','EMELIN ALEJANDRA HERNANDEZ SURAY','\0',0.00,0.00,0.00,0.00),(262,502,'1120350','MAXIMILIANO GIRON GUTIERREZ','\0',0.00,0.00,0.00,0.00),(263,505,'1120351','JUAN ENRIQUE SATZ','\0',0.00,0.00,0.00,0.00),(264,507,'1120352','RUBEN ALGEL MACARIO GOMEZ','\0',0.00,0.00,0.00,0.00),(265,532,'1120353','MARIA SOLEDAD BEDOYA PAREDES','\0',0.00,0.00,0.00,0.00),(266,546,'1120354','CARLOS ENRIQUE SICAN','\0',0.00,0.00,0.00,0.00),(267,549,'1120355','MELVIN ORLANDO MUÑOZ RAMIREZ','\0',0.00,0.00,0.00,0.00),(268,556,'1120356','BLANCA CECILIA RAMOS CUTERES','\0',0.00,0.00,0.00,0.00),(269,15,'1120399','ANTICIPO DE SUELDOS','\0',0.00,0.00,0.00,0.00),(270,16,'11204','IMPUESTOS POR COBRAR','',4239845.96,1607209.62,783928.16,5063127.42),(271,17,'1120401','IVA POR COBRAR','\0',4003980.85,1349745.93,424681.61,4929045.17),(272,18,'1120402','ISR POR COBRAR','\0',168371.41,216337.31,359246.55,25462.17),(273,153,'1120403','ISR AÑOS ANTERIORES','\0',0.00,0.00,0.00,0.00),(274,228,'1120404','CUOTA ANUAL EMPRESAS MERCANTILES','\0',0.00,0.00,0.00,0.00),(275,259,'1120405','ISET 1,997.-','\0',0.00,0.00,0.00,0.00),(276,377,'1120406','RETENCION IVA','\0',67493.70,41126.38,0.00,108620.08),(277,565,'11205','EMPRESAS RELACIONADAS','',89280.00,664803.07,0.00,754083.07),(278,566,'1120501','ORION, S. A.','\0',89280.00,0.00,0.00,89280.00),(279,576,'1120502','EMPRESA TURISTICA, S. A.','\0',0.00,0.00,0.00,0.00),(280,577,'1120503','HOTELES Y TURISMO, S.A.','\0',0.00,0.00,0.00,0.00),(281,7043,'1120504','karante','\0',0.00,664803.07,0.00,664803.07),(282,19,'113','INVENTARIOS','',0.00,0.00,0.00,0.00),(283,20,'11301','INVENTARIOS','',0.00,0.00,0.00,0.00),(284,21,'1130101','INVENTARIOS','\0',0.00,0.00,0.00,0.00),(285,376,'120406','RETENCION IVA','\0',0.00,0.00,0.00,0.00),(286,22,'121','ACTIVOS FIJOS','',45957881.82,57470099.79,47110400.77,56317580.84),(287,23,'12101','PROPIEDAD PLANTA Y EQUIPO','',8473290.69,47144467.74,0.00,55617758.43),(288,24,'1210101','INMUEBLES','\0',7607089.87,47110400.77,0.00,54717490.64),(289,246,'1210102','VEHICULOS','\0',0.00,0.00,0.00,0.00),(290,25,'1210103','MOBILIARIO Y EQUIPO','\0',553923.87,18391.08,0.00,572314.95),(291,26,'1210104','EQUIPO DE COMPUTACION','\0',312276.95,14873.21,0.00,327150.16),(292,27,'1210105','HERRAMIENTAS','\0',0.00,802.68,0.00,802.68),(293,28,'1210106','INSTALACION ACOMETIDA ELECTRICA','\0',0.00,0.00,0.00,0.00),(294,29,'12102','CONSTRUCCIONES','',37484591.13,10325632.05,47110400.77,699822.41),(295,30,'1210201','CONSTRUCCIONES  EN PROCESO','\0',0.00,0.00,0.00,0.00),(296,454,'1210202','CHUCK E CHEESE','\0',0.00,0.00,0.00,0.00),(297,476,'1210203','MAGIC PLACE','\0',0.00,0.00,0.00,0.00),(298,533,'1210204','PASEO LIBERACION','\0',36830629.04,10279771.73,47110400.77,0.00),(299,553,'1210205','ELEVADORES EDIFICIO PANAMERICANO','\0',653962.09,40056.75,0.00,694018.84),(300,7076,'1210206','UNISUR 3','\0',0.00,5803.57,0.00,5803.57),(301,7088,'1210207','REFORZAMIENTO ESTRUCTURAL EDIFICIO PANAMERICANO','\0',0.00,0.00,0.00,0.00),(302,7115,'1210208','DB Sur','\0',0.00,0.00,0.00,0.00),(303,31,'130','ACTIVO DIFERIDO','',11097.85,400.00,530.08,10967.77),(304,32,'1300','DIFERIDOS','',11097.85,400.00,530.08,10967.77),(305,33,'13001','GASTOS PAGADOS POR ANTICIPADO','',5497.85,0.00,530.08,4967.77),(306,34,'1300101','','\0',0.00,0.00,0.00,0.00),(307,345,'1300102','TELGUA SERV. PAG. POR ANTICIPADO','\0',5497.85,0.00,530.08,4967.77),(308,35,'1300199','DIVERSOS','\0',0.00,0.00,0.00,0.00),(309,36,'13002','DEPOSITOS VARIOS','',5600.00,400.00,0.00,6000.00),(310,37,'1300201','EMPRESA ELECTRICA','\0',2400.00,400.00,0.00,2800.00),(311,278,'1300202','EMPAGUA','\0',0.00,0.00,0.00,0.00),(312,290,'1300203','MUNICIPALIDAD DE GUATEMALA','\0',2000.00,0.00,0.00,2000.00),(313,295,'1300204','SUPER SERVICIO REFORMA','\0',0.00,0.00,0.00,0.00),(314,311,'1300205','ESTACION DE SERVICIO LIBERACION, S.A.','\0',1200.00,0.00,0.00,1200.00),(315,457,'1300206','SERVICIOS MULTIPLES CIUDAD VIEJA, S.A.','\0',0.00,0.00,0.00,0.00),(316,38,'13003','GASTOS DE ORGANIZACION','',0.00,0.00,0.00,0.00),(317,39,'1300301','GASTOS DE ORGANIZACION','\0',0.00,0.00,0.00,0.00),(318,40,'131','OTROS ACTIVOS','',665153.07,0.00,664803.07,350.00),(319,41,'13101','OTROS ACTIVOS','',665153.07,0.00,664803.07,350.00),(320,42,'1310101','MARCAS Y PATENTES','\0',0.00,0.00,0.00,0.00),(321,43,'1310102','INVERSIONES','\0',664803.07,0.00,664803.07,0.00),(322,44,'1310103','DERECHO TELEFONICO','\0',0.00,0.00,0.00,0.00),(323,157,'1310104','PAJA DE AGUA','\0',350.00,0.00,0.00,350.00),(324,274,'1310105','INVERSIONES \"B\"','\0',0.00,0.00,0.00,0.00),(325,156,'1310199','DEPOSITOS VARIOS','\0',0.00,0.00,0.00,0.00),(326,191,'132','DEFICIT','',187746.44,0.00,0.00,187746.44),(327,192,'13201','DEFICIT','',187746.44,0.00,0.00,187746.44),(328,193,'1320101','DEFICIT','\0',187746.44,0.00,0.00,187746.44),(329,45,'2','P A S I V O S','',-53069522.42,437841.88,5709930.72,-58341611.26),(330,46,'212','PASIVOS CIRCULANTE','',-53069522.42,437841.88,5709930.72,-58341611.26),(331,158,'2120','CUENTAS POR PAGAR','',-53069522.42,437841.88,5709930.72,-58341611.26),(332,47,'21201','PROVEEDORES','',154.73,1595.98,1808.71,-58.00),(333,48,'2120101','GRAND LUX, S.A.','\0',0.00,0.00,0.00,0.00),(334,49,'2120102','FERSUC, S. A.','\0',0.00,0.00,0.00,0.00),(335,50,'2120103','FANEON, S. A.','\0',0.00,0.00,0.00,0.00),(336,51,'2120104','HERRERIA MANSILLA (AUGUSTO MANSILLA)','\0',0.00,0.00,0.00,0.00),(337,52,'2120105','DIPROBA (PEMUELLER & COHEN)','\0',0.00,0.00,0.00,0.00),(338,53,'2120106','SERVIJARDIN','\0',0.00,0.00,0.00,0.00),(339,54,'2120107','CAJA CHICA','\0',0.00,0.00,0.00,0.00),(340,55,'2120108','COMCEL','\0',0.00,1595.98,1595.98,0.00),(341,56,'2120109','TELGUA, S.A.','\0',0.00,0.00,58.00,-58.00),(342,347,'2120110','FULLER Y CIA. DE CENTRO AMERICA S.A.','\0',0.00,0.00,0.00,0.00),(343,353,'2120111','TRANSPORTE DE AGUA EMANUEL','\0',0.00,0.00,0.00,0.00),(344,354,'2120112','ARMAGUA','\0',0.00,0.00,0.00,0.00),(345,355,'2120113','SERGIO DANILO VASQUEZ MONTALV','\0',0.00,0.00,0.00,0.00),(346,413,'2120114','DHL, S.A.','\0',0.00,0.00,0.00,0.00),(347,423,'2120115','SUPER PROYECTOS','\0',0.00,0.00,0.00,0.00),(348,475,'2120116','DIDELASA','\0',0.00,0.00,0.00,0.00),(349,523,'2120139','SALON HEADS UP','\0',0.00,0.00,0.00,0.00),(350,57,'2120199','DIVERSOS','\0',154.73,0.00,154.73,0.00),(351,58,'21202','ACREEDORES','',-2870962.50,2777.50,125464.41,-2993649.41),(352,59,'2120201','GUATEL','\0',0.00,0.00,0.00,0.00),(353,60,'2120202','E.E.G.S.A.','\0',0.00,0.00,19703.08,-19703.08),(354,159,'2120203','EMPAGUA','\0',0.00,0.00,12628.63,-12628.63),(355,160,'2120204','ACREEDORES VARIOS','\0',0.00,2351.37,2351.37,0.00),(356,161,'2120205','CARLOS ALFONSO PORTILLO','\0',0.00,0.00,0.00,0.00),(357,162,'2120206','JUSTO PASTOR MOLINA','\0',0.00,0.00,0.00,0.00),(358,163,'2120207','PRENSA LIBRE, S. A.','\0',0.00,0.00,0.00,0.00),(359,164,'2120208','JAIME HERNANDEZ (SERTECPLO)','\0',0.00,0.00,0.00,0.00),(360,215,'2120209','COMCEL','\0',0.00,426.13,426.13,0.00),(361,272,'2120210','TALLER GARCIA','\0',0.00,0.00,0.00,0.00),(362,273,'2120211','ACREEDORES \"B\"','\0',0.00,0.00,0.00,0.00),(363,279,'2120212','PROPORCION & ESCALA, S. A.','\0',0.00,0.00,0.00,0.00),(364,280,'2120213','TELGUA, S. A.','\0',0.00,0.00,5938.98,-5938.98),(365,286,'2120214','GRUPO DE SERVICIOS DE INFORMACION, S. A.','\0',0.00,0.00,0.00,0.00),(366,301,'2120215','SUPER SERVICIO REFORMA','\0',0.00,0.00,0.00,0.00),(367,348,'2120216','JUNKALCO','',0.00,0.00,0.00,0.00),(368,358,'2120217','FRANCISCO MENENDEZ FRANCO','\0',0.00,0.00,0.00,0.00),(369,540,'2120218','TASA MUNICIPAL E.E.G.S.A.','\0',0.00,0.00,0.00,0.00),(370,331,'2120220','TELEFONICA CENTROAMERICA GUATEMALA, S.A.','\0',0.00,0.00,0.00,0.00),(371,387,'2120221','ESTACIONAMIENTO CLUB, S.A.','\0',0.00,0.00,0.00,0.00),(372,388,'2120222','SERCOM','\0',0.00,0.00,0.00,0.00),(373,411,'2120223','JORGE CASIA','\0',0.00,0.00,0.00,0.00),(374,422,'2120224','ANTILLON','\0',0.00,0.00,0.00,0.00),(375,434,'2120225','MUGASA','\0',0.00,0.00,0.00,0.00),(376,459,'2120226','DISTRIBUIDORA ELECTRONICA, S.A.','\0',0.00,0.00,0.00,0.00),(377,461,'2120227','TECNOLOGIA ACCESO & SEGURIDAD, S.A.','\0',0.00,0.00,0.00,0.00),(378,462,'2120228','DUWEST RECUBRIMIENTOS, S.A.','\0',0.00,0.00,0.00,0.00),(379,463,'2120229','CONSTRUCCIONES CARDENAS','\0',0.00,0.00,0.00,0.00),(380,464,'2120230','DISTRIBUIDORA HERNANDEZ','\0',0.00,0.00,0.00,0.00),(381,465,'2120231','BETANTECNICA, S.A.','\0',0.00,0.00,0.00,0.00),(382,466,'2120232','CASSA','\0',0.00,0.00,0.00,0.00),(383,468,'2120233','CARGO EXPRESO, S.A.','\0',0.00,0.00,0.00,0.00),(384,467,'2120234','CARGO EXPRESO, S.A.','\0',0.00,0.00,0.00,0.00),(385,484,'2120235','FRANCISCO COC','\0',0.00,0.00,0.00,0.00),(386,529,'2120236','INDUSTRIA DE MATERIALES DECORATIVOS, S.A.','\0',0.00,0.00,0.00,0.00),(387,530,'2120237','SERVICIOS MULTIPLES CIUDAD VIEJA, S.A.','\0',0.00,0.00,0.00,0.00),(388,531,'2120238','HOTELES Y TURISMO, S. A.','\0',-2870962.50,0.00,0.00,-2870962.50),(389,534,'2120239','JORGE ROBERTO ROBLES','\0',0.00,0.00,0.00,0.00),(390,537,'2120240','AUDIO RACING SHOP','\0',0.00,0.00,0.00,0.00),(391,539,'2120241','FEDEX, S.A.','\0',0.00,0.00,0.00,0.00),(392,561,'2120242','SOLUCIONES LOGISTICAS, S.A.','\0',0.00,0.00,0.00,0.00),(393,61,'2120299','DIVERSOS','\0',0.00,0.00,84416.22,-84416.22),(394,62,'21203','IMPUESTOS POR PAGAR','',-32641.64,423993.14,412763.08,-21411.58),(395,63,'2120301','IVA POR PAGAR','\0',-32641.64,423993.14,391351.50,0.00),(396,165,'2120302','ISR POR PAGAR','\0',0.00,0.00,0.00,0.00),(397,166,'2120303','IMPUESTO UNICO SOBRE INMUEBLES','\0',0.00,0.00,21411.58,-21411.58),(398,167,'2120304','CUOTA ANUAL DE SOCIEDADES','\0',0.00,0.00,0.00,0.00),(399,258,'2120305','IMPUESTO EMPRESAS MERCANTILES Y AGROP.','\0',0.00,0.00,0.00,0.00),(400,435,'2120325','MUGASA','\0',0.00,0.00,0.00,0.00),(401,535,'2120327','PROFESIONAL DE SERVICIOS, S.A.','\0',0.00,0.00,0.00,0.00),(402,538,'2120328','JOSE FERNANDO SAMAYOA ROLDAN','\0',0.00,0.00,0.00,0.00),(403,541,'2120329','MEDELIN YESENIA CANEL SANDOVAL','\0',0.00,0.00,0.00,0.00),(404,542,'2120330','CONSTRUCCION EN PROCESO PLAZA LIBERACION','\0',0.00,0.00,0.00,0.00),(405,64,'2120399','DIVERSOS','\0',0.00,0.00,0.00,0.00),(406,65,'21204','RETENCIONES','',466.43,9475.26,10345.77,-404.08),(407,66,'2120401','IGSS CUOTA LABORAL','\0',0.00,0.00,0.00,0.00),(408,147,'2120402','BANCO DE LOS TRABAJADORES','\0',0.00,0.00,0.00,0.00),(409,224,'2120403','RETENCION I.S.R.','\0',466.43,9475.26,10345.77,-404.08),(410,245,'2120404','ISET POR PAGAR','\0',0.00,0.00,0.00,0.00),(411,168,'2120499','DIVERSOS','\0',0.00,0.00,0.00,0.00),(412,67,'21205','PRESTAMOS BANCARIOS','',-18437575.00,0.00,62569.48,-18500144.48),(413,7097,'2120501','Banco Industrial, S. A.','\0',-18437575.00,0.00,0.00,-18437575.00),(414,68,'2120599','DIVERSOS','\0',0.00,0.00,62569.48,-62569.48),(415,69,'21206','OTRAS CUENTAS POR PAGAR','',-31097762.48,0.00,5023791.25,-36121553.73),(416,70,'2120601','IGSS CUOTA PATRONAL','\0',0.00,0.00,0.00,0.00),(417,169,'2120602','DIVIDENDOS','\0',-6446906.15,0.00,1158291.25,-7605197.40),(418,170,'2120603','SUELDOS POR PAGAR','\0',0.00,0.00,0.00,0.00),(419,171,'2120604','ABRAHAM TENENBAUM','\0',0.00,0.00,0.00,0.00),(420,172,'2120605','GEORGE TENENBAUM','\0',0.00,0.00,0.00,0.00),(421,173,'2120606','ROBIN TENENBAUM','\0',0.00,0.00,0.00,0.00),(422,174,'2120607','INMUEBLES, S. A.','\0',0.00,0.00,0.00,0.00),(423,175,'2120608','RAFAEL HERNANDEZ ALBIZURES','\0',0.00,0.00,0.00,0.00),(424,255,'2120609','INDEMINIZACION POR PAGAR','\0',-19053.04,0.00,0.00,-19053.04),(425,256,'2120610','AGUINALDOS POR PAGAR','\0',-346.52,0.00,0.00,-346.52),(426,257,'2120611','BONI.ANUAL P/TRAB.SECTOR POR POR PAGAR','\0',-2056.77,0.00,0.00,-2056.77),(427,323,'2120612','EVELYN DE TENENBAUM','\0',0.00,0.00,0.00,0.00),(428,325,'2120613','ORION, S. A.','\0',0.00,0.00,0.00,0.00),(429,427,'2120614','PARAGON, S. A.','\0',0.00,0.00,0.00,0.00),(430,557,'2120615','HOTELES Y TURISMO, S. A.','\0',-14613800.00,0.00,3500000.00,-18113800.00),(431,573,'2120616','EMPRESA TURISTICA, S. A.','\0',-10015600.00,0.00,0.00,-10015600.00),(432,7101,'2120617','karante','\0',0.00,0.00,365500.00,-365500.00),(433,7104,'2120618','INTERESES POR PAGAR S/PRESTAMOS','\0',0.00,0.00,0.00,0.00),(434,356,'2120699','DIVERSOS','\0',0.00,0.00,0.00,0.00),(435,176,'21207','ANTICIPOS RECIBIDOS DE CLIENTES','',-631201.96,0.00,73188.02,-704389.98),(436,177,'2120701','POLLO BRUJO DE C. A.','\0',0.00,0.00,0.00,0.00),(437,225,'2120702','DONA, S. A.','\0',-47151.11,0.00,0.00,-47151.11),(438,226,'2120703','COMIDAS Y SERVICIOS, S. A.','\0',-199218.72,0.00,0.00,-199218.72),(439,362,'2120704','MODISA','\0',0.00,0.00,0.00,0.00),(440,363,'2120705','PELUQUERIA DONALDS','\0',0.00,0.00,0.00,0.00),(441,364,'2120706','GLADYBERTH','\0',0.00,0.00,0.00,0.00),(442,328,'2120707','PUBLIGRAFIC, S.A.','\0',-2000.00,0.00,0.00,-2000.00),(443,365,'2120708','ERICK SEIJAS','\0',0.00,0.00,0.00,0.00),(444,389,'2120709','ADAM STANLEY CARDONA POLANCO','\0',0.00,0.00,0.00,0.00),(445,394,'2120710','JOSE ANTONIO CHANG JO','\0',-6312.00,0.00,0.00,-6312.00),(446,402,'2120711','ELFEGO ADAN AQUINO JACOBO','\0',0.00,0.00,0.00,0.00),(447,404,'2120712','EUFEMIA ESTEBAN CHAVEZ','\0',-1741.50,0.00,0.00,-1741.50),(448,408,'2120713','DANILO RODRIGUEZ','\0',0.00,0.00,0.00,0.00),(449,416,'2120714','ARABELA DE GUATEMALA, S.A.','\0',0.00,0.00,0.00,0.00),(450,421,'2120715','COMERCIALIZADORA Y REPRESENTACIONES ARTISTICAS, S.A.','\0',0.00,0.00,0.00,0.00),(451,424,'2120716','METROFARMACIAS/MARIA ISABEL MONZON','\0',0.00,0.00,0.00,0.00),(452,428,'2120717','MOTOR EXTREMO, S.A.','\0',-4080.00,0.00,0.00,-4080.00),(453,431,'2120718','CREDOMATIC DE GUATEMALA, S.A.','\0',0.00,0.00,0.00,0.00),(454,436,'2120719','BURGOS LIMA Y CIA. LTDA.','\0',0.00,0.00,0.00,0.00),(455,441,'2120720','SALLY CATALAN ORELLANA','\0',-3120.00,0.00,0.00,-3120.00),(456,442,'2120721','LABORATORIO DE IDEAS, S.A.','\0',-3510.01,0.00,0.00,-3510.01),(457,443,'2120722','JOREMAN CATALAN','\0',-11062.20,0.00,0.00,-11062.20),(458,444,'2120723','IDEAS COCINAS, S.A.','\0',-7172.90,0.00,0.00,-7172.90),(459,446,'2120724','VIAJAR ES CRECER, S.A.','\0',0.00,0.00,0.00,0.00),(460,469,'2120725','CONTINENTAL MOTORES','\0',0.00,0.00,0.00,0.00),(461,470,'2120726','VEHICULOS AUTOMOTORES','\0',0.00,0.00,0.00,0.00),(462,479,'2120727','AUGUSTO CHAW CO','\0',-5000.00,0.00,0.00,-5000.00),(463,482,'2120728','JL INTERNACIONAL','\0',0.00,0.00,0.00,0.00),(464,488,'2120729','LIZETH JIMENEZ','\0',0.00,0.00,0.00,0.00),(465,494,'2120730','INVERSIONES JUVENILES,S.A.','\0',0.00,0.00,0.00,0.00),(466,498,'2120731','HEIDI REINA FLORES DE ORELLANA','\0',0.00,0.00,0.00,0.00),(467,504,'2120732','ELBA DE HUEZO','\0',0.00,0.00,0.00,0.00),(468,517,'2120733','ELIOTH SOLARES/CIGARRILLOS ELECTRICOS','\0',0.00,0.00,0.00,0.00),(469,518,'2120734','ROPA DEPORTIVA','\0',0.00,0.00,0.00,0.00),(470,519,'2120735','ROSENFLOWERS','\0',0.00,0.00,0.00,0.00),(471,520,'2120736','OLIVERA, S. A.','\0',0.00,0.00,0.00,0.00),(472,521,'2120737','INTERMEDICA','\0',0.00,0.00,0.00,0.00),(473,522,'2120738','MIA@SALON','\0',0.00,0.00,0.00,0.00),(474,550,'2120739','DISINCO Y COPROPIEDAD','\0',-5031.00,0.00,2414.37,-7445.37),(475,524,'2120740','ILUSIONES','\0',0.00,0.00,0.00,0.00),(476,527,'2120741','SOLIDA EXPANSION, S.A.','\0',-822.25,0.00,0.00,-822.25),(477,543,'2120742','NUTRICION INICIAL, S.A.','\0',-5076.50,0.00,0.00,-5076.50),(478,544,'2120743','LINDA GABRIELA SALAZAR GUDIEL','\0',-5400.66,0.00,0.00,-5400.66),(479,545,'2120744','FREDY ORLANDO CRUZ ESTRADA','\0',0.00,0.00,0.00,0.00),(480,558,'2120745','COMIDAS ESPECIALIZADAS Y SERVICIOS DE GUATEMALA, RL / DENNIS','\0',-91915.08,0.00,0.00,-91915.08),(481,560,'2120746','DISTRIBUIDORA POPS, S.A.','\0',-8838.80,0.00,0.00,-8838.80),(482,562,'2120747','INDUSTRIA PANIFICADORA ISOPAN, S.A.','\0',-11856.00,0.00,0.00,-11856.00),(483,564,'2120748','INDUSTRIAS DE LAVANDERIA, S.A.','\0',-10032.00,0.00,0.00,-10032.00),(484,567,'2120749','LLAVES Y CONTROLES, S.A.','\0',-2280.00,0.00,0.00,-2280.00),(485,568,'2120750','ESTILISTAS INTERNACIONALES, S.A.','\0',0.00,0.00,0.00,0.00),(486,569,'2120751','SISTERS','\0',-4940.00,0.00,0.00,-4940.00),(487,570,'2120752','MEGA-SUPLEMENTOS NUTRIMAX, S. A.','\0',-11666.13,0.00,0.00,-11666.13),(488,571,'2120753','OPTICAS EXCLUSIVAS, S. A.','\0',-35767.00,0.00,0.00,-35767.00),(489,572,'2120754','INVERSIONES LUMAKI, S. A./SALON LIZZO','\0',-10577.90,0.00,0.00,-10577.90),(490,590,'2120755','RODRIGO CORONADO','\0',-10425.70,0.00,0.00,-10425.70),(491,591,'2120756','MEJORES INVERSIONES, S. A.','\0',-34853.91,0.00,0.00,-34853.91),(492,592,'2120757','DROGUERIA CENTRO HISTORICO, S. A.','\0',-17948.90,0.00,0.00,-17948.90),(493,593,'2120758','Corporación Medica AR, S. A.','\0',-8366.14,0.00,1073.90,-9440.04),(494,594,'2120759','INVERSIONES BANSSER, S. A.','\0',-10773.50,0.00,0.00,-10773.50),(495,598,'2120760','Grupo Solid (La Paleta)','\0',-31699.75,0.00,0.00,-31699.75),(496,7091,'2120761','FLUSHING, S. A.','\0',-13875.60,0.00,0.00,-13875.60),(497,7092,'2120762','SELMA GARCIA CHAVARRIA','\0',-8686.70,0.00,0.00,-8686.70),(498,7029,'2120763','BEAUTY DEPOT, S. A.','\0',0.00,0.00,11981.01,-11981.01),(499,7034,'2120764','EUGENIA RAMIREZ/HILOS Y BOTONES','\0',0.00,0.00,3700.00,-3700.00),(500,7040,'2120765','Karina de Dieguez','\0',0.00,0.00,4554.66,-4554.66),(501,7056,'2120766','ORIENTAL TOWN, S. A.','\0',0.00,0.00,40034.00,-40034.00),(502,7072,'2120767','JOSE IGNACIO PINTO MOLLER','\0',0.00,0.00,5208.43,-5208.43),(503,7073,'2120768','LINADI, S. A.','\0',0.00,0.00,492.61,-492.61),(504,7081,'2120769','EDGAR ELIAS VILLEGAS','\0',0.00,0.00,0.00,0.00),(505,7082,'2120770','TECNOPRIM','\0',0.00,0.00,0.00,0.00),(506,7102,'2120771','AIRE LIBRE, S. A.','\0',0.00,0.00,0.00,0.00),(507,7110,'2120772','RBDBVAS MART, S. A.','\0',0.00,0.00,0.00,0.00),(508,7116,'2120773','BANRURAL','\0',0.00,0.00,0.00,0.00),(509,178,'2120799','DIVERSOS','\0',0.00,0.00,3729.04,-3729.04),(510,179,'21208','','',0.00,0.00,0.00,0.00),(511,180,'2120801','','\0',0.00,0.00,0.00,0.00),(512,181,'21209','UTILIDADES NO DISTRIBUIDAS','',0.00,0.00,0.00,0.00),(513,182,'2120901','','\0',0.00,0.00,0.00,0.00),(514,71,'3','CAPITAL, RESERVAS Y RESULTADOS','',-6592352.19,1597408.21,694201.13,-5689145.11),(515,72,'311','CAPITAL','',-6592352.19,0.00,694201.13,-7286553.32),(516,73,'31101','CAPITAL','',-2196000.00,0.00,0.00,-2196000.00),(517,74,'3110101','CAPITAL SOCIAL','\0',-2196000.00,0.00,0.00,-2196000.00),(518,75,'31102','RESERVA LEGAL','',-1628727.58,0.00,79870.41,-1708597.99),(519,76,'3110201','RESERVA LEGAL','\0',-1628727.58,0.00,79870.41,-1708597.99),(520,77,'31103','RESERVAS Y AMORTIZACIONES','',-2767624.61,0.00,614330.72,-3381955.33),(521,78,'3110301','RESERVA DEP. INMUEBLES','\0',-1932465.33,0.00,588880.02,-2521345.35),(522,79,'3110302','RESERVA DEP. VEHICULOS','\0',0.00,0.00,0.00,0.00),(523,80,'3110303','RESERVA DEP. MOBILIARIO Y EQUIPO','\0',-495729.83,0.00,13165.40,-508895.23),(524,81,'3110304','RESERVA DEP. EQUIPO DE COMPUTACION','\0',-253243.40,0.00,12285.30,-265528.70),(525,82,'3110305','RESERVA DEP. HERRAMIENTAS','\0',0.00,0.00,0.00,0.00),(526,183,'3110306','RESERVA DEP. ACOMETIDA ELECTRICA','\0',0.00,0.00,0.00,0.00),(527,184,'3110307','RESERVA AMORTIZACION GASTOS','\0',0.00,0.00,0.00,0.00),(528,185,'3110308','RESERVA REVALUACION DE INMUEBLES','\0',-86186.05,0.00,0.00,-86186.05),(529,186,'3110399','OTRAS RESERVAS ( INDEMNIZACION )','\0',0.00,0.00,0.00,0.00),(530,205,'312','PERDIDAS Y GANANCIAS','',0.00,1597408.21,0.00,1597408.21),(531,227,'31201','PERDIDAS Y GANANCIAS','',0.00,1597408.21,0.00,1597408.21),(532,206,'3120101','PERDIDAS Y GANANCIAS','\0',0.00,1597408.21,0.00,1597408.21),(533,83,'4','I N G R E S O S','',-1973689.00,0.00,3261262.06,-5234951.06),(534,84,'411','VENTAS','',-1973689.00,0.00,3261262.06,-5234951.06),(535,85,'41101','INGRESOS','',-1973689.00,0.00,3261262.06,-5234951.06),(536,86,'4110101','ALQUILERES','\0',-1863208.14,0.00,2930771.08,-4793979.22),(537,87,'4110102','PARQUEOS','\0',0.00,0.00,3722.29,-3722.29),(538,88,'4110103','SERVICIOS VARIOS','\0',-110480.86,0.00,326768.69,-437249.55),(539,89,'5','C O S T O S   Y  G A S T O S','',857442.17,1817080.00,21411.58,2653110.59),(540,90,'511','GASTOS DE OPERACION','',0.00,0.00,0.00,0.00),(541,91,'51101','','',0.00,0.00,0.00,0.00),(542,92,'512','GASTOS DE ADMINISTRACION','',857442.17,1817080.00,21411.58,2653110.59),(543,93,'51201','GASTOS DE PERSONAL','',22891.57,5517.11,0.00,28408.68),(544,94,'5120101','SUELDOS Y SALARIOS ORDINARIOS','\0',0.00,0.00,0.00,0.00),(545,95,'5120102','SUELDOS Y SALARIOS EXTRAORDINARIOS','\0',0.00,0.00,0.00,0.00),(546,96,'5120103','BONIF.INCENTIVO DECTO.78-89/7-2000/37-2001','\0',0.00,0.00,0.00,0.00),(547,97,'5120104','VACACIONES','\0',0.00,0.00,0.00,0.00),(548,98,'5120105','INDEMNIZACION','\0',19053.04,0.00,0.00,19053.04),(549,99,'5120106','AGUINALDOS','\0',346.52,0.00,0.00,346.52),(550,100,'5120107','BONIF.ANUAL P/TRAB.SECTOR PRIVADO Y PUBLICO','\0',2056.77,0.00,0.00,2056.77),(551,101,'5120108','COMISIONES','\0',0.00,30.20,0.00,30.20),(552,102,'5120109','CUOTA IGSS','\0',0.00,0.00,0.00,0.00),(553,103,'5120110','GRATIFICACIONES AL PERSONAL','\0',0.00,0.00,0.00,0.00),(554,104,'5120111','SEGURO SOCIAL','\0',0.00,0.00,0.00,0.00),(555,105,'5120112','GASTOS DE REPRESENTACION/BIENESTAR EMPL.','\0',1435.24,5486.91,0.00,6922.15),(556,106,'5120113','GASTOS MEDICOS/MEDICINAS','\0',0.00,0.00,0.00,0.00),(557,107,'5120114','DIETAS','\0',0.00,0.00,0.00,0.00),(558,108,'5120115','','\0',0.00,0.00,0.00,0.00),(559,109,'5120199','DIVERSOS','\0',0.00,0.00,0.00,0.00),(560,110,'51202','GASTOS POR SERVICIOS','',111564.70,247011.40,0.00,358576.10),(561,111,'5120201','TELEFONO','\0',31893.36,32082.57,0.00,63975.93),(562,112,'5120202','ENERGIA ELECTRICA','\0',16864.89,76201.82,0.00,93066.71),(563,113,'5120203','CUOTA AGUA','\0',60735.37,128865.26,0.00,189600.63),(564,320,'5120204','TASA MUNICIPAL E.E.G.S.A.','\0',2071.08,9861.75,0.00,11932.83),(565,114,'5120299','DIVERSOS','\0',0.00,0.00,0.00,0.00),(566,115,'51203','GASTOS GENERALES','',485286.67,651708.77,0.00,1136995.44),(567,116,'5120301','SEGUROS','\0',6700.30,90334.51,0.00,97034.81),(568,117,'5120302','COMBUSTIBLES Y LUBRICANTES','\0',63856.52,49017.92,0.00,112874.44),(569,118,'5120303','PAPELERIA Y UTILES DE OFICINA','\0',26034.84,21580.62,0.00,47615.46),(570,119,'5120304','SUSCRIPCION Y PUBLICACION','\0',1253.57,0.00,0.00,1253.57),(571,120,'5120305','CORREOS','\0',2311.06,1926.37,0.00,4237.43),(572,121,'5120306','PARQUEOS','\0',50356.26,35956.17,0.00,86312.43),(573,122,'5120307','GASTOS BANCARIOS','\0',675.63,522.31,0.00,1197.94),(574,123,'5120308','UNIFORMES Y EQUIPO','\0',0.00,1968.75,0.00,1968.75),(575,124,'5120309','PASAJES','\0',250.00,0.00,0.00,250.00),(576,125,'5120310','GASTOS DE VIAJE','\0',0.00,0.00,0.00,0.00),(577,126,'5120311','HONORARIOS VARIOS','\0',203071.21,51350.54,0.00,254421.75),(578,127,'5120312','TRASLADO DE PLANILLA','\0',0.00,0.00,0.00,0.00),(579,128,'5120313','ANUNCIO Y PROPAGANDA','\0',0.00,75488.85,0.00,75488.85),(580,129,'5120314','ALQUILERES','\0',0.00,0.00,0.00,0.00),(581,130,'5120315','GASTOS DE COMPUTACION','\0',23872.40,23839.28,0.00,47711.68),(582,131,'5120316','VIGILANCIA','\0',60803.57,167744.27,0.00,228547.84),(583,132,'5120317','LIMPIEZA','\0',5299.12,74642.94,0.00,79942.06),(584,133,'5120318','DONACIONES Y CONTRIBUCIONES','\0',25090.00,0.00,0.00,25090.00),(585,134,'5120319','GASTOS LEGALES','\0',653.50,170.00,0.00,823.50),(586,136,'5120320','HERRAMIENTAS MENORES','\0',512.66,1508.11,0.00,2020.77),(587,135,'5120321','FLETES','\0',0.00,535.71,0.00,535.71),(588,137,'5120322','CHAPEO','\0',0.00,0.00,0.00,0.00),(589,221,'5120323','CAPACITACION PERSONAL','\0',0.00,0.00,0.00,0.00),(590,222,'5120324','GRATIFICACIONES','\0',0.00,0.00,0.00,0.00),(591,223,'5120325','IVA SOBRE COMPRAS','\0',0.00,0.00,0.00,0.00),(592,247,'5120326','HELIOGRAFICAS ( PLANOS )','\0',0.00,0.00,0.00,0.00),(593,360,'5120327','COMISIONES','\0',0.00,0.00,0.00,0.00),(594,471,'5120328','IMPUESTO DISTRIBUCION DE PETROLEO','\0',382.41,242.17,0.00,624.58),(595,478,'5120329','ALMACENAJE PAPELERIA','\0',7467.19,94.64,0.00,7561.83),(596,508,'5120330','INSUMOS DE PARQUEO','\0',0.00,1205.36,0.00,1205.36),(597,555,'5120331','ADMINISTRACION DE PARQUEO','\0',0.00,0.00,0.00,0.00),(598,585,'5120332','HONORARIOS INGENIERIA Y ARQUITECTURA','\0',0.00,0.00,0.00,0.00),(599,586,'5120333','HONORARIOS LEGALES','\0',6696.43,50464.17,0.00,57160.60),(600,587,'5120334','EXTRACCION DE BASURA','\0',0.00,1785.72,0.00,1785.72),(601,588,'5120335','FUMIGACION','\0',0.00,1330.36,0.00,1330.36),(602,138,'5120399','GASTOS VARIOS','\0',0.00,0.00,0.00,0.00),(603,139,'51204','IMPUESTOS FISCALES Y MUNICIPALES','',49424.58,73752.61,0.00,123177.19),(604,140,'5120401','IMPUESTOS FISCALES Y MUNICIPALES','\0',49424.58,73752.61,0.00,123177.19),(605,141,'51205','MANTENIMIENTO Y REPARACIONES','',55764.78,98106.98,0.00,153871.76),(606,142,'5120501','VEHICULOS','\0',8889.15,1739.56,0.00,10628.71),(607,338,'5120502','EDIFICIOS','\0',15436.87,7199.99,0.00,22636.86),(608,143,'5120503','EQUIPO DE COMPUTACION','\0',12469.67,12667.11,0.00,25136.78),(609,144,'5120504','MANTENIMIENTO Y REPARACIONES','\0',1093.75,16000.16,0.00,17093.91),(610,145,'5120505','ELECTRICIDAD','\0',10324.94,4144.51,0.00,14469.45),(611,339,'5120506','PLOMERIA','\0',1102.68,5161.67,0.00,6264.35),(612,341,'5120507','ALBAÑILERIA Y HERRERIA','\0',3833.78,6958.75,0.00,10792.53),(613,343,'5120508','PINTURA','\0',1057.68,2145.94,0.00,3203.62),(614,418,'5120509','CARPINTERIA','\0',0.00,0.00,0.00,0.00),(615,554,'5120510','ADMINISTRACION DE PARQUEO','\0',0.00,0.00,0.00,0.00),(616,578,'5120511','TOPOGRAFIA','\0',0.00,0.00,0.00,0.00),(617,579,'5120512','EQUIPO DE SEGURIDAD','\0',0.00,9017.86,0.00,9017.86),(618,580,'5120513','VENTANERIA','\0',0.00,5357.14,0.00,5357.14),(619,581,'5120514','HIDROSANITARIO','\0',1556.26,10544.64,0.00,12100.90),(620,582,'5120515','PINTURA','\0',0.00,0.00,0.00,0.00),(621,583,'5120516','JARDINERIA Y RIEGO','\0',0.00,17169.65,0.00,17169.65),(622,584,'5120517','PAVIMENTACION Y ADOQUIN','\0',0.00,0.00,0.00,0.00),(623,589,'5120518','HERRAMIENTAS MENORES','\0',0.00,0.00,0.00,0.00),(624,340,'5120599','TRABAJOS VARIOS','\0',0.00,0.00,0.00,0.00),(625,194,'51206','DEPRECIACIONES Y AMORTIZACIONES','',35630.98,614330.72,0.00,649961.70),(626,195,'5120601','DEPRECIACION INMUEBLES','\0',0.00,588880.02,0.00,588880.02),(627,196,'5120602','DEPRECIACION VEHICULOS','\0',0.00,0.00,0.00,0.00),(628,197,'5120603','DEPRECIACION MOBILIARIO Y EQUIPO','\0',18431.56,13165.40,0.00,31596.96),(629,198,'5120604','DEPRECIACION EQUIPO DE COMPUTACION','\0',17199.42,12285.30,0.00,29484.72),(630,199,'5120605','DEPRECIACION HERRAMIENTAS','\0',0.00,0.00,0.00,0.00),(631,200,'5120606','DEPRECIACION ACOMETIDA ELECTRICA','\0',0.00,0.00,0.00,0.00),(632,201,'5120607','AMORTIZACION GASTOS DE ORGANIZACION','\0',0.00,0.00,0.00,0.00),(633,202,'5120608','','\0',0.00,0.00,0.00,0.00),(634,203,'5120609','','\0',0.00,0.00,0.00,0.00),(635,204,'5120699','DIVERSOS','\0',0.00,0.00,0.00,0.00),(636,250,'51207','GASTOS NO DEDUCIBLES','',96878.89,126652.41,21411.58,202119.72),(637,251,'5120701','IVA','\0',0.00,0.00,0.00,0.00),(638,252,'5120702','MULTAS','\0',0.00,29705.56,0.00,29705.56),(639,253,'5120703','IMPUESTO S/INMUEBLES','\0',21411.58,0.00,21411.58,0.00),(640,254,'5120704','ISR AñOS ANTERIORES','\0',0.00,0.00,0.00,0.00),(641,346,'5120705','IEMA','\0',0.00,0.00,0.00,0.00),(642,7093,'5120706','CUENTAS INCOBRABLES','\0',75467.31,0.00,0.00,75467.31),(643,335,'5120799','GASTOS VARIOS NO DEDUCIBLES','\0',0.00,96946.85,0.00,96946.85),(644,207,'6','GASTOS Y PRODUCTOS FINANCIEROS','',265741.91,719645.59,285.60,985101.90),(645,214,'611','GASTOS FINANCIEROS','',265741.91,719645.59,285.60,985101.90),(646,208,'61101','GASTOS FINANCIEROS','',387849.28,719645.59,0.00,1107494.87),(647,209,'6110101','INTERESES BANCARIOS','\0',387849.28,422672.12,0.00,810521.40),(648,210,'6110102','PERDIDA EN VENTA DE ACTIVOS FIJOS','\0',0.00,0.00,0.00,0.00),(649,7098,'6110103','DIFERENCIAL CAMBIARIO','\0',0.00,296973.47,0.00,296973.47),(650,211,'61102','PRODUCTOS FINANCIEROS','',-122107.37,0.00,285.60,-122392.97),(651,212,'6110201','INGRESOS POR INTERESES BANCARIOS','\0',-122107.37,0.00,285.60,-122392.97),(652,213,'6110202','GANANCIA EN VENTA DE ACTIVOS FIJOS','\0',0.00,0.00,0.00,0.00),(653,574,'6110203','DIFERENCIAL CAMBIARIO','\0',0.00,0.00,0.00,0.00);
/*!40000 ALTER TABLE `rptlibromayor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviciobasico`
--

DROP TABLE IF EXISTS `serviciobasico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serviciobasico` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpadre` int(10) unsigned NOT NULL DEFAULT '0',
  `nivel` int(10) unsigned NOT NULL DEFAULT '0',
  `idtiposervicio` int(10) unsigned NOT NULL,
  `idproveedor` int(10) unsigned NOT NULL DEFAULT '0',
  `numidentificacion` varchar(50) NOT NULL,
  `numreferencia` varchar(50) NOT NULL,
  `idempresa` int(11) NOT NULL,
  `pagacliente` bit(1) NOT NULL DEFAULT b'0',
  `preciomcubsug` decimal(20,2) DEFAULT NULL,
  `mcubsug` decimal(20,2) DEFAULT NULL,
  `asignado` bit(1) NOT NULL DEFAULT b'0',
  `espropio` bit(1) NOT NULL DEFAULT b'0',
  `ubicadoen` varchar(100) DEFAULT NULL,
  `ultimalectura` decimal(20,2) unsigned NOT NULL DEFAULT '0.00',
  `ultimalecturafact` decimal(20,2) unsigned NOT NULL DEFAULT '0.00',
  `debaja` bit(1) NOT NULL DEFAULT b'0',
  `fechabaja` date DEFAULT NULL,
  `cobrar` bit(1) DEFAULT b'1',
  `notas` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IdEmpresaASC` (`idempresa`) USING BTREE,
  KEY `IdProveedorASC` (`idproveedor`) USING BTREE,
  KEY `IdTipoServicioASC` (`idtiposervicio`) USING BTREE,
  KEY `EsPropioASC` (`espropio`) USING BTREE,
  KEY `IdPadreASC` (`idpadre`) USING BTREE,
  KEY `NivelASC` (`nivel`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviciobasico`
--

LOCK TABLES `serviciobasico` WRITE;
/*!40000 ALTER TABLE `serviciobasico` DISABLE KEYS */;
/*!40000 ALTER TABLE `serviciobasico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitudot`
--

DROP TABLE IF EXISTS `solicitudot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solicitudot` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idtipogasto` int(11) unsigned NOT NULL,
  `idgastocontable` int(11) unsigned NOT NULL,
  `idempresa` int(11) unsigned NOT NULL,
  `idproveedor` int(11) unsigned NOT NULL,
  `idproyecto` int(11) unsigned NOT NULL,
  `numorden` int(12) unsigned NOT NULL,
  `fechasolicitud` date DEFAULT NULL,
  `valormaterial` decimal(20,2) DEFAULT NULL,
  `valorobramano` decimal(20,2) DEFAULT NULL,
  `montosolicita` decimal(20,2) DEFAULT NULL,
  `descripcion` text,
  `trabajomayor` tinyint(1) DEFAULT NULL,
  `ivaincluido` tinyint(1) DEFAULT NULL,
  `dolares` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitudot`
--

LOCK TABLES `solicitudot` WRITE;
/*!40000 ALTER TABLE `solicitudot` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitudot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subtipogasto`
--

DROP TABLE IF EXISTS `subtipogasto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subtipogasto` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idtipogasto` int(10) unsigned NOT NULL DEFAULT '0',
  `descripcion` varchar(50) NOT NULL,
  `idcuentac` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `DescripcionASC` (`descripcion`) USING BTREE,
  KEY `IdTipoGastoASC` (`idtipogasto`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subtipogasto`
--

LOCK TABLES `subtipogasto` WRITE;
/*!40000 ALTER TABLE `subtipogasto` DISABLE KEYS */;
/*!40000 ALTER TABLE `subtipogasto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabla`
--

DROP TABLE IF EXISTS `tabla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabla` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombredb` varchar(45) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `NombreDBASC` (`nombredb`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla`
--

LOCK TABLES `tabla` WRITE;
/*!40000 ALTER TABLE `tabla` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_activo`
--

DROP TABLE IF EXISTS `tipo_activo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_activo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_activo`
--

LOCK TABLES `tipo_activo` WRITE;
/*!40000 ALTER TABLE `tipo_activo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_activo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_adjunto`
--

DROP TABLE IF EXISTS `tipo_adjunto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_adjunto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_adjunto`
--

LOCK TABLES `tipo_adjunto` WRITE;
/*!40000 ALTER TABLE `tipo_adjunto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_adjunto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_proyecto`
--

DROP TABLE IF EXISTS `tipo_proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_proyecto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_proyecto`
--

LOCK TABLES `tipo_proyecto` WRITE;
/*!40000 ALTER TABLE `tipo_proyecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_proyecto_orden`
--

DROP TABLE IF EXISTS `tipo_proyecto_orden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_proyecto_orden` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `idtipo_proyecto` int(11) NOT NULL,
  `idtipolocal` int(11) NOT NULL,
  `orden` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `TIPOPROYECTO` (`idtipo_proyecto`,`idtipolocal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_proyecto_orden`
--

LOCK TABLES `tipo_proyecto_orden` WRITE;
/*!40000 ALTER TABLE `tipo_proyecto_orden` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_proyecto_orden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipocambio`
--

DROP TABLE IF EXISTS `tipocambio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipocambio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `tipocambio` decimal(20,10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fecha` (`fecha`),
  UNIQUE KEY `FechaDESC` (`fecha`) USING BTREE,
  KEY `IdDesc` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipocambio`
--

LOCK TABLES `tipocambio` WRITE;
/*!40000 ALTER TABLE `tipocambio` DISABLE KEYS */;
INSERT INTO `tipocambio` VALUES (1,'2018-07-23',7.4763200000);
/*!40000 ALTER TABLE `tipocambio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipocliente`
--

DROP TABLE IF EXISTS `tipocliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipocliente` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `desctipocliente` varchar(50) NOT NULL,
  `porisr` decimal(20,2) NOT NULL DEFAULT '0.00',
  `poriva` decimal(20,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `DescTipoClienteASC` (`desctipocliente`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipocliente`
--

LOCK TABLES `tipocliente` WRITE;
/*!40000 ALTER TABLE `tipocliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipocliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipocombustible`
--

DROP TABLE IF EXISTS `tipocombustible`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipocombustible` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(20) NOT NULL,
  `impuesto` decimal(20,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipocombustible`
--

LOCK TABLES `tipocombustible` WRITE;
/*!40000 ALTER TABLE `tipocombustible` DISABLE KEYS */;
INSERT INTO `tipocombustible` VALUES (1,'Superior',4.70),(2,'Regular',4.60),(3,'Diesel',1.30);
/*!40000 ALTER TABLE `tipocombustible` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipocompra`
--

DROP TABLE IF EXISTS `tipocompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipocompra` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `desctipocompra` varchar(50) NOT NULL,
  `idcuentac` int(10) unsigned NOT NULL DEFAULT '0',
  `idcuentacventa` int(10) unsigned NOT NULL DEFAULT '0',
  `paraventa` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `DescripcionASC` (`desctipocompra`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipocompra`
--

LOCK TABLES `tipocompra` WRITE;
/*!40000 ALTER TABLE `tipocompra` DISABLE KEYS */;
INSERT INTO `tipocompra` VALUES (1,'Bien',0,0,'\0'),(2,'Servicio',0,0,''),(3,'Combustible',0,0,'\0'),(4,'Activo',0,0,'\0'),(5,'Excento',0,0,'\0');
/*!40000 ALTER TABLE `tipocompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoconfigconta`
--

DROP TABLE IF EXISTS `tipoconfigconta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoconfigconta` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `desctipoconfconta` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `DesTipoConfASC` (`desctipoconfconta`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoconfigconta`
--

LOCK TABLES `tipoconfigconta` WRITE;
/*!40000 ALTER TABLE `tipoconfigconta` DISABLE KEYS */;
INSERT INTO `tipoconfigconta` VALUES (4,'Cheques'),(7,'Cuentas por cobrar'),(5,'Cuentas por liquidar'),(6,'Cuentas por pagar'),(10,'Diferencial cambiario'),(9,'I.D.P.'),(8,'I.S.R. Retenido'),(2,'I.V.A. por cobrar'),(1,'I.V.A. por pagar'),(11,'Ingresos por diferencial cambiario'),(3,'Proveedores'),(13,'Ret. ISR venta'),(14,'Ret. IVA venta'),(12,'Tasa municipal EEGSA');
/*!40000 ALTER TABLE `tipoconfigconta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipodocproy`
--

DROP TABLE IF EXISTS `tipodocproy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipodocproy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `DescripcionASC` (`descripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodocproy`
--

LOCK TABLES `tipodocproy` WRITE;
/*!40000 ALTER TABLE `tipodocproy` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipodocproy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipodocsoptranban`
--

DROP TABLE IF EXISTS `tipodocsoptranban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipodocsoptranban` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idtipomovtranban` int(10) unsigned NOT NULL,
  `desctipodoc` varchar(45) NOT NULL,
  `abreviatipodoc` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `DescTipoDocASC` (`desctipodoc`),
  KEY `IdTipoMovASC` (`idtipomovtranban`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodocsoptranban`
--

LOCK TABLES `tipodocsoptranban` WRITE;
/*!40000 ALTER TABLE `tipodocsoptranban` DISABLE KEYS */;
INSERT INTO `tipodocsoptranban` VALUES (1,1,'Factura de compra','FC'),(2,1,'Reembolso','RC');
/*!40000 ALTER TABLE `tipodocsoptranban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipofactura`
--

DROP TABLE IF EXISTS `tipofactura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipofactura` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `desctipofact` varchar(50) NOT NULL,
  `siglas` varchar(10) NOT NULL,
  `generaiva` bit(1) NOT NULL DEFAULT b'1',
  `paracompra` bit(1) NOT NULL DEFAULT b'0',
  `paraventa` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `DescTipoFactASC` (`desctipofact`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipofactura`
--

LOCK TABLES `tipofactura` WRITE;
/*!40000 ALTER TABLE `tipofactura` DISABLE KEYS */;
INSERT INTO `tipofactura` VALUES (1,'Electrónica','FCE','','',''),(2,'Cambiaria','FC','','','\0'),(3,'Pequeño contribuyente','FPC','\0','','\0'),(4,'Especial','FE','','','\0'),(5,'Recibo','REC','\0','','\0'),(6,'Compra','FC','','','\0'),(7,'Factura','FC','','\0',''),(8,'Copia de factura electrónica','CFCE','','\0','');
/*!40000 ALTER TABLE `tipofactura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipogasto`
--

DROP TABLE IF EXISTS `tipogasto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipogasto` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `desctipogast` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idtipgast` (`desctipogast`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipogasto`
--

LOCK TABLES `tipogasto` WRITE;
/*!40000 ALTER TABLE `tipogasto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipogasto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoimpresioncheque`
--

DROP TABLE IF EXISTS `tipoimpresioncheque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoimpresioncheque` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(75) NOT NULL,
  `formato` varchar(75) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoimpresioncheque`
--

LOCK TABLES `tipoimpresioncheque` WRITE;
/*!40000 ALTER TABLE `tipoimpresioncheque` DISABLE KEYS */;
INSERT INTO `tipoimpresioncheque` VALUES (1,'Chequera-BI','printchequera'),(2,'Voucher','printcheck'),(3,'Chequera-G&T','printchequeragyt'),(4,'Chequera Internacional','printchequeraint');
/*!40000 ALTER TABLE `tipoimpresioncheque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoipc`
--

DROP TABLE IF EXISTS `tipoipc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoipc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoipc`
--

LOCK TABLES `tipoipc` WRITE;
/*!40000 ALTER TABLE `tipoipc` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipoipc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipolocal`
--

DROP TABLE IF EXISTS `tipolocal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipolocal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  `esrentable` bit(1) NOT NULL DEFAULT b'0',
  `orden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `DescripcionASC` (`descripcion`),
  KEY `OrdenASC` (`orden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipolocal`
--

LOCK TABLES `tipolocal` WRITE;
/*!40000 ALTER TABLE `tipolocal` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipolocal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipomovtranban`
--

DROP TABLE IF EXISTS `tipomovtranban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipomovtranban` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `abreviatura` varchar(3) NOT NULL,
  `descripcion` varchar(75) NOT NULL,
  `suma` bit(1) NOT NULL DEFAULT b'0',
  `orden` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `abreviatura_UNIQUE` (`abreviatura`),
  KEY `OrdenASC` (`orden`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipomovtranban`
--

LOCK TABLES `tipomovtranban` WRITE;
/*!40000 ALTER TABLE `tipomovtranban` DISABLE KEYS */;
INSERT INTO `tipomovtranban` VALUES (1,'C','Cheque','\0',2),(2,'D','Depósito','',1),(3,'R','Nota de crédito','',3),(4,'B','Nota de débito','\0',4);
/*!40000 ALTER TABLE `tipomovtranban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiporeembolso`
--

DROP TABLE IF EXISTS `tiporeembolso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiporeembolso` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `desctiporeembolso` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `DescTipoReembolsoASC` (`desctiporeembolso`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiporeembolso`
--

LOCK TABLES `tiporeembolso` WRITE;
/*!40000 ALTER TABLE `tiporeembolso` DISABLE KEYS */;
INSERT INTO `tiporeembolso` VALUES (2,'Caja chica'),(1,'Reembolso');
/*!40000 ALTER TABLE `tiporeembolso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiporptconfcont`
--

DROP TABLE IF EXISTS `tiporptconfcont`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiporptconfcont` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  `orden` int(10) unsigned NOT NULL,
  `estres` bit(1) NOT NULL DEFAULT b'0',
  `ingresos` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orden` (`orden`),
  UNIQUE KEY `orden_UNIQUE` (`orden`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiporptconfcont`
--

LOCK TABLES `tiporptconfcont` WRITE;
/*!40000 ALTER TABLE `tiporptconfcont` DISABLE KEYS */;
INSERT INTO `tiporptconfcont` VALUES (1,'Ingresos',1,'',''),(2,'Gastos',2,'','\0'),(3,'Activo',3,'\0','\0'),(4,'Pasivo',4,'\0','\0'),(5,'Capital',5,'\0','\0');
/*!40000 ALTER TABLE `tiporptconfcont` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiposervicio`
--

DROP TABLE IF EXISTS `tiposervicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiposervicio` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `DescripASC` (`descripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiposervicio`
--

LOCK TABLES `tiposervicio` WRITE;
/*!40000 ALTER TABLE `tiposervicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiposervicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiposervicioventa`
--

DROP TABLE IF EXISTS `tiposervicioventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiposervicioventa` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `desctiposervventa` varchar(50) NOT NULL,
  `cuentac` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `DescTipoASC` (`desctiposervventa`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiposervicioventa`
--

LOCK TABLES `tiposervicioventa` WRITE;
/*!40000 ALTER TABLE `tiposervicioventa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiposervicioventa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tranban`
--

DROP TABLE IF EXISTS `tranban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tranban` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idbanco` int(10) unsigned NOT NULL,
  `tipotrans` varchar(1) NOT NULL,
  `numero` bigint(20) unsigned NOT NULL,
  `fecha` date NOT NULL,
  `monto` decimal(20,2) NOT NULL,
  `beneficiario` varchar(300) NOT NULL,
  `concepto` varchar(2000) DEFAULT NULL,
  `operado` bit(1) NOT NULL DEFAULT b'0',
  `fechaoperado` date DEFAULT NULL,
  `anticipo` bit(1) NOT NULL DEFAULT b'0',
  `idbeneficiario` int(10) unsigned NOT NULL DEFAULT '0',
  `origenbene` int(10) unsigned NOT NULL DEFAULT '0',
  `idrazonanulacion` int(10) unsigned NOT NULL DEFAULT '0',
  `anulado` bit(1) NOT NULL DEFAULT b'0',
  `fechaanula` date DEFAULT NULL,
  `tipocambio` decimal(20,10) NOT NULL DEFAULT '1.0000000000',
  `impreso` bit(1) NOT NULL DEFAULT b'0',
  `fechaliquida` date DEFAULT NULL,
  `esnegociable` bit(1) NOT NULL DEFAULT b'0',
  `idproyecto` int(10) unsigned NOT NULL DEFAULT '0',
  `iddetpresup` int(10) unsigned NOT NULL DEFAULT '0',
  `iddetpagopresup` int(10) unsigned NOT NULL DEFAULT '0',
  `bancofox` varchar(4) DEFAULT NULL,
  `tipofox` varchar(1) DEFAULT NULL,
  `documentofox` varchar(10) DEFAULT NULL,
  `idempresa` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `BcoTipoNumeASC` (`idbanco`,`tipotrans`,`numero`),
  KEY `IdBancoASC` (`idbanco`),
  KEY `TipoTransASC` (`tipotrans`),
  KEY `FechaASC` (`fecha`),
  KEY `OperadoASC` (`operado`),
  KEY `FechaLiquidaASC` (`fechaliquida`) USING BTREE,
  KEY `FechaOperadoASC` (`fechaoperado`) USING BTREE,
  KEY `ColsFox` (`bancofox`,`tipofox`,`documentofox`,`idempresa`),
  KEY `IdProyecto` (`idproyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tranban`
--

LOCK TABLES `tranban` WRITE;
/*!40000 ALTER TABLE `tranban` DISABLE KEYS */;
/*!40000 ALTER TABLE `tranban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidad`
--

DROP TABLE IF EXISTS `unidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidad` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idempresa` int(10) unsigned NOT NULL DEFAULT '0',
  `idproyecto` int(10) unsigned NOT NULL DEFAULT '0',
  `idtipolocal` int(10) unsigned NOT NULL DEFAULT '0',
  `nombre` varchar(50) NOT NULL,
  `mcuad` decimal(20,4) unsigned NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `nolineastel` int(11) DEFAULT '0',
  `numeros` varchar(500) DEFAULT NULL,
  `conteegsa` varchar(50) DEFAULT NULL,
  `observaciones` varchar(500) DEFAULT NULL,
  `multiunidad` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `NombreASC` (`nombre`),
  KEY `IdEmpresaASC` (`idempresa`),
  KEY `IdTipoASC` (`idtipolocal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidad`
--

LOCK TABLES `unidad` WRITE;
/*!40000 ALTER TABLE `unidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `unidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidadservicio`
--

DROP TABLE IF EXISTS `unidadservicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidadservicio` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idunidad` int(10) unsigned NOT NULL,
  `idserviciobasico` int(10) unsigned NOT NULL,
  `fini` date NOT NULL,
  `ffin` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FIniASC` (`fini`) USING BTREE,
  KEY `IdServicioASC` (`idserviciobasico`) USING BTREE,
  KEY `IdUnidadASC` (`idunidad`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidadservicio`
--

LOCK TABLES `unidadservicio` WRITE;
/*!40000 ALTER TABLE `unidadservicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `unidadservicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(75) NOT NULL,
  `iniciales` varchar(10) DEFAULT NULL,
  `usuario` varchar(15) NOT NULL,
  `contrasenia` varchar(150) NOT NULL,
  `correoe` varchar(50) NOT NULL,
  `idultimaempresa` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UsrContraASC` (`usuario`,`contrasenia`),
  KEY `NombreASC` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Administrador','ADM','admin','PoChoco2016','jaragon@spcdatapro.com',0);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarioproyecto`
--

DROP TABLE IF EXISTS `usuarioproyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarioproyecto` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idusuario` int(10) unsigned NOT NULL DEFAULT '0',
  `idproyecto` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UsrProyASC` (`idusuario`,`idproyecto`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarioproyecto`
--

LOCK TABLES `usuarioproyecto` WRITE;
/*!40000 ALTER TABLE `usuarioproyecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarioproyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'karante'
--

--
-- Dumping routines for database 'karante'
--
/*!50003 DROP FUNCTION IF EXISTS `digits` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `digits`( str CHAR(250) ) RETURNS char(250) CHARSET utf8
BEGIN
  DECLARE i, len SMALLINT DEFAULT 1;
  DECLARE ret CHAR(250) DEFAULT '';
  DECLARE c CHAR(1);

  IF str IS NULL
  THEN 
    RETURN "";
  END IF;

  SET len = CHAR_LENGTH( str );
  REPEAT
    BEGIN
      SET c = MID( str, i, 1 );
      IF c BETWEEN '0' AND '9' THEN 
        SET ret=CONCAT(ret,c);
      END IF;
      SET i = i + 1;
    END;
  UNTIL i > len END REPEAT;
  RETURN ret;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `DirFacturarA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `DirFacturarA`(IdCliente INT UNSIGNED, IdServicio INT UNSIGNED) RETURNS varchar(250) CHARSET utf8
BEGIN
	DECLARE facta VARCHAR(250);
    
    SET facta = NULL;
    
    SELECT a.direccion INTO facta FROM detclientefact a INNER JOIN detclienteserv b ON a.id = b.iddetclientefact WHERE a.idcliente = IdCliente AND a.fal IS NULL AND b.idservicioventa = IdServicio LIMIT 1;
    
    IF facta IS NULL THEN
		SELECT a.direccion INTO facta FROM detclientefact a LEFT JOIN detclienteserv b ON a.id = b.iddetclientefact WHERE a.idcliente = IdCliente AND a.fal IS NULL AND b.id IS NULL LIMIT 1;
	END IF;
RETURN facta;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `FacturarA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `FacturarA`(IdCliente INT UNSIGNED, IdServicio INT UNSIGNED) RETURNS varchar(250) CHARSET utf8
BEGIN
	DECLARE facta VARCHAR(250);
    
    SET facta = NULL;
    
    SELECT a.facturara INTO facta FROM detclientefact a INNER JOIN detclienteserv b ON a.id = b.iddetclientefact WHERE a.idcliente = IdCliente AND a.fal IS NULL AND b.idservicioventa = IdServicio LIMIT 1;
    
    IF facta IS NULL THEN
		SELECT a.facturara INTO facta FROM detclientefact a LEFT JOIN detclienteserv b ON a.id = b.iddetclientefact WHERE a.idcliente = IdCliente AND a.fal IS NULL AND b.id IS NULL LIMIT 1;
	END IF;

RETURN facta;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `FechaLecturaAnterior` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `FechaLecturaAnterior`(QIdServicio INT UNSIGNED, QMes INT UNSIGNED, QAnio INT UNSIGNED) RETURNS date
BEGIN

	SET @MesAnterior = 0;
    SET @AnioAnterior = QAnio;
    SET @UltimaLectura = NULL; 
    
    IF QMes > 1 THEN
		SET @MesAnterior = QMes - 1;
	ELSE
		SET @MesAnterior = 12;
        SET @AnioAnterior = QAnio - 1;
    END IF;
    
    SELECT fechacorte INTO @UltimaLectura FROM lecturaservicio WHERE idserviciobasico = QIdServicio AND mes = @MesAnterior AND anio = @AnioAnterior; 
    
    #IF @UltimaLectura IS NULL THEN SET @UltimaLectura = 0.00; END IF;

RETURN @UltimaLectura;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getIsrTranBan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getIsrTranBan`(IdTranBan INT UNSIGNED) RETURNS decimal(20,2)
BEGIN
	DECLARE isrtranban DECIMAL(20, 2);
    
    SELECT SUM(isr) INTO isrtranban FROM (
		SELECT SUM(y.isr) AS isr FROM doctotranban z INNER JOIN compra y ON y.id = z.iddocto WHERE z.idtipodoc = 1 AND z.idtranban = IdTranBan
		UNION 
		SELECT SUM(x.isr) AS isr FROM doctotranban z INNER JOIN reembolso y ON y.id = z.iddocto INNER JOIN compra x ON y.id = x.idreembolso WHERE z.idtipodoc = 2 AND z.idtranban = IdTranBan
	) w;

RETURN isrtranban;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `LecturaAnterior` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `LecturaAnterior`(QIdServicio INT UNSIGNED, QMes INT UNSIGNED, QAnio INT UNSIGNED) RETURNS decimal(20,2)
BEGIN

	SET @MesAnterior = 0;
    SET @AnioAnterior = QAnio;
    SET @UltimaLectura = NULL; 
    
    IF QMes > 1 THEN
		SET @MesAnterior = QMes - 1;
	ELSE
		SET @MesAnterior = 12;
        SET @AnioAnterior = QAnio - 1;
    END IF;
    
    SELECT lectura INTO @UltimaLectura FROM lecturaservicio WHERE idserviciobasico = QIdServicio AND mes = @MesAnterior AND anio = @AnioAnterior; 
    
    IF @UltimaLectura IS NULL THEN SET @UltimaLectura = 0.00; END IF;

RETURN @UltimaLectura;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `limpiaString` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `limpiaString`(str VARCHAR(255)) RETURNS varchar(255) CHARSET utf8
BEGIN
	DECLARE cadena VARCHAR(255);
    
    SELECT REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(str, ',', ''), '-', ''), '(', ''), ')', ''), 'Ñ', 'N'), 'ñ', 'n'), 'Á', 'A'), 'á', 'a'), 'É', 'E'), 'é', 'e'), 'Í', 'I'), 'í', 'i'), 'Ó', 'O'), 'ó', 'o'), 'Ú', 'U'), 'ú', 'u'), '.', ' ') INTO cadena;

RETURN cadena;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `MCuadPorContrato` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `MCuadPorContrato`(IdContrato INT UNSIGNED) RETURNS decimal(20,4)
BEGIN
	
    DECLARE Unidades DECIMAL(20, 4);
	
    SELECT SUM(c.mcuad) INTO Unidades 
	FROM(
		SELECT b.id, a.nombre AS unidad, a.idtipolocal, a.mcuad
		FROM unidad a, contrato b 
		WHERE FIND_IN_SET(a.id, b.idunidad)
	) c
	WHERE id = IdContrato
	GROUP BY id;

RETURN IFNULL(Unidades, 0.0000);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `NitFacturarA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `NitFacturarA`(IdCliente INT UNSIGNED, IdServicio INT UNSIGNED) RETURNS varchar(25) CHARSET utf8
BEGIN
	DECLARE facta VARCHAR(25);
    
    SET facta = NULL;
    
    SELECT a.nit INTO facta FROM detclientefact a INNER JOIN detclienteserv b ON a.id = b.iddetclientefact WHERE a.idcliente = IdCliente AND a.fal IS NULL AND b.idservicioventa = IdServicio LIMIT 1;
    
    IF facta IS NULL THEN
		SELECT a.nit INTO facta FROM detclientefact a LEFT JOIN detclienteserv b ON a.id = b.iddetclientefact WHERE a.idcliente = IdCliente AND a.fal IS NULL AND b.id IS NULL LIMIT 1;
	END IF;
RETURN facta;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ProyectoServicio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `ProyectoServicio`(IdServicio INT UNSIGNED) RETURNS varchar(80) CHARSET utf8
BEGIN
	DECLARE np VARCHAR(250);
    
    SET np = NULL;
    
    SELECT TRIM(c.nomproyecto) INTO np FROM unidadservicio a INNER JOIN unidad b ON b.id = a.idunidad INNER JOIN proyecto c ON c.id = b.idproyecto WHERE a.ffin IS NULL AND a.idserviciobasico = IdServicio LIMIT 1;

RETURN np;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `RetISR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `RetISR`(IdCliente INT UNSIGNED, IdServicio INT UNSIGNED) RETURNS bit(1)
BEGIN
	DECLARE retiene BIT(1);
    
    SET retiene = NULL;
    
    SELECT a.retisr INTO retiene FROM detclientefact a INNER JOIN detclienteserv b ON a.id = b.iddetclientefact WHERE a.idcliente = IdCliente AND a.fal IS NULL AND b.idservicioventa = IdServicio LIMIT 1;
    
    IF retiene IS NULL THEN
		SELECT a.retisr INTO retiene FROM detclientefact a LEFT JOIN detclienteserv b ON a.id = b.iddetclientefact WHERE a.idcliente = IdCliente AND a.fal IS NULL AND b.id IS NULL LIMIT 1;
	END IF;

RETURN retiene;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `RetIVA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `RetIVA`(IdCliente INT UNSIGNED, IdServicio INT UNSIGNED) RETURNS bit(1)
BEGIN
	DECLARE retiene BIT(1);
    
    SET retiene = NULL;
    
    SELECT a.retiva INTO retiene FROM detclientefact a INNER JOIN detclienteserv b ON a.id = b.iddetclientefact WHERE a.idcliente = IdCliente AND a.fal IS NULL AND b.idservicioventa = IdServicio LIMIT 1;
    
    IF retiene IS NULL THEN
		SELECT a.retiva INTO retiene FROM detclientefact a LEFT JOIN detclienteserv b ON a.id = b.iddetclientefact WHERE a.idcliente = IdCliente AND a.fal IS NULL AND b.id IS NULL LIMIT 1;
	END IF;

RETURN retiene;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `UnidadesPorContrato` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `UnidadesPorContrato`(IdContrato INT UNSIGNED) RETURNS varchar(5000) CHARSET utf8
BEGIN

	SELECT GROUP_CONCAT(DISTINCT unidad ORDER BY idtipolocal, CAST(digits(unidad) AS UNSIGNED), unidad SEPARATOR ', ') INTO @Unidades 
	FROM(
		SELECT b.id, a.nombre AS unidad, a.idtipolocal
		FROM unidad a, contrato b 
		WHERE FIND_IN_SET(a.id, IF(b.inactivo = 0, b.idunidad, b.idunidadbck))
	) c
	WHERE id = IdContrato
	GROUP BY id;

RETURN @Unidades;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-23 12:44:43
