-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: tubes_basdat
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `guest`
--

DROP TABLE IF EXISTS `guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guest` (
  `ID_Guest` varchar(10) NOT NULL,
  `Nama` varchar(50) DEFAULT NULL,
  `No_HP` varchar(25) DEFAULT NULL,
  `Asal_Negara` varchar(20) DEFAULT NULL,
  `Sex` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID_Guest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest`
--

LOCK TABLES `guest` WRITE;
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;
INSERT INTO `guest` VALUES ('G01','Salim Halim','+62 8779373476','Indonesia','Laki-Laki'),('G02','Deza Sepuh Gacha','+62 89853853476','Indonesia','Laki-Laki'),('G03','Billie Eilish','+62 82139723520','Indonesia','Perempuan'),('G04','Lem Tang Seng','+65 6692-7089','Singapura','Laki-Laki'),('G05','Jeniffer Oliver','+1 555-058-8920','Amerika Serikat','Perempuan'),('G06','Sugiono Pamungkas','+62 85307769648','Indonesia','Laki-Laki'),('G07','Isabella Anne','+49 3010893222','Jerman','Perempuan'),('G08','Zhao Lusi','+86 10123456789','China','Perempuan'),('G09','Hol I Zhi','+886 212749821','Taiwan','Laki-Laki'),('G10','Bambang Wijaya','+60 392187392','Malaysia','Laki-Laki');
/*!40000 ALTER TABLE `guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jabatan`
--

DROP TABLE IF EXISTS `jabatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jabatan` (
  `id_jabatan` varchar(10) NOT NULL,
  `Nama_jabatan` varchar(30) DEFAULT NULL,
  `Gaji` decimal(10,0) DEFAULT NULL,
  `Lama_Kontrak_Tahun` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_jabatan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jabatan`
--

LOCK TABLES `jabatan` WRITE;
/*!40000 ALTER TABLE `jabatan` DISABLE KEYS */;
INSERT INTO `jabatan` VALUES ('JBT001','Manager',15000000,5),('JBT002','Resepsionis',5000000,1),('JBT003','FnB Manager',7500000,5),('JBT004','HouseKeeper',4500000,2),('JBT005','Concierge',3000000,1),('JBT006','Waiter',3500000,2),('JBT007','Porter',3000000,1),('JBT008','Maintenance Staff',4000000,3),('JBT009','SalesnMarketing',4500000,3),('JBT010','Purchasing',3500000,2);
/*!40000 ALTER TABLE `jabatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kamar`
--

DROP TABLE IF EXISTS `kamar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kamar` (
  `ID_Kamar` varchar(4) NOT NULL,
  `Status` char(6) DEFAULT NULL,
  `Nama_Kamar` varchar(20) DEFAULT NULL,
  `ID_TipeKamar` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`ID_Kamar`),
  KEY `ID_TipeKamar` (`ID_TipeKamar`),
  CONSTRAINT `kamar_ibfk_1` FOREIGN KEY (`ID_TipeKamar`) REFERENCES `tipe_kamar` (`ID_Tipekamar`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kamar`
--

LOCK TABLES `kamar` WRITE;
/*!40000 ALTER TABLE `kamar` DISABLE KEYS */;
INSERT INTO `kamar` VALUES ('R01','Kosong','Diamond 1','TR10'),('R02','Terisi','Diamond 2','TR10'),('R03','Terisi','Emerald 1','TR09'),('R04','Kosong','Emerald 2','TR09'),('R05','Terisi','Ruby 1','TR08'),('R06','Terisi','Ruby 2','TR08'),('R07','Kosong','Obsidian 1','TR07'),('R08','Kosong','Obsidian 2','TR07'),('R09','Kosong','Topaz 1','TR06'),('R10','Terisi','Topaz 2','TR06'),('R11','Kosong','Lapiz 1','TR05'),('R12','Terisi','Lapiz 2','TR05'),('R13','Terisi','Amethyst 1','TR04'),('R14','Kosong','Amethyst 2','TR04'),('R15','Terisi','Opal 1','TR03'),('R16','Kosong','Opal 2','TR03'),('R17','Kosong','Shappire 1','TR02'),('R18','Terisi','Shappire 2','TR02'),('R19','Terisi','Aquamarine 1','TR01'),('R20','Kosong','Aquamarine 2','TR01');
/*!40000 ALTER TABLE `kamar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pegawai`
--

DROP TABLE IF EXISTS `pegawai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pegawai` (
  `id_pegawai` varchar(10) NOT NULL,
  `Nama` varchar(30) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `No_HP` varchar(30) DEFAULT NULL,
  `Sex` varchar(15) DEFAULT NULL,
  `Id_jabatan` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_pegawai`),
  KEY `Id_jabatan` (`Id_jabatan`),
  CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`Id_jabatan`) REFERENCES `jabatan` (`id_jabatan`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pegawai`
--

LOCK TABLES `pegawai` WRITE;
/*!40000 ALTER TABLE `pegawai` DISABLE KEYS */;
INSERT INTO `pegawai` VALUES ('PG001','Ryan Gosling','SigmaRyan@gmail.com','088822334464','Laki-Laki','JBT001'),('PG002','Adi Hadidi','Adihadi@gmail.com','088822334456','Laki-Laki','JBT003'),('PG003','Maliki Salamun','MalSam@gmail.com','088822334457','Laki-Laki','JBT003'),('PG004','Antum Bedentum','Andentum@gmail.com','088822334458','Perempuan','JBT004'),('PG005','Rahmawati','Rahmawati1998@gmail.com','088822334459','Perempuan','JBT002'),('PG006','Suklima','Suklima2004@gmail.com','088822334460','Perempuan','JBT002'),('PG007','Dika Permana','dikapermana@gmail.com','088822334461','Laki-Laki','JBT005'),('PG008','Pratama Putra','PratamaPutra2000@gmail.com','088822334462','Laki-Laki','JBT004'),('PG009','Kirigaya Kirito','BokuKirito@gmail.com','088822334463','Laki-Laki','JBT002'),('PG010','Asep Surasep','asepsurasep@gmail.com','088822334455','Laki-Laki','JBT005'),('PG011','Alex Brahmin','AlexBrahmin@gmail.com','083133637291','Laki-Laki','JBT007'),('PG012','Kamaludin','UdinKamaludin@gmail.com','083886559040','Laki-Laki','JBT007'),('PG013','Mei Putri','RaidenMei@gmail.com','088822334457','Perempuan','JBT010'),('PG014','Bronya Zaychik','RandBronya@gmail.com','087257321526','Perempuan','JBT009'),('PG015','Kiana Kaslana','Kiana423@gmail.com','081311869598','Perempuan','JBT008'),('PG016','Seele Vollerei','Seele2023@gmail.com','087843881028','Perempuan','JBT009'),('PG017','Welt Yang','Weltyang1990@gmail.com','083438044420','Laki-Laki','JBT008'),('PG018','Budi Setiawan','Budidididi@gmail.com','084287884221','Laki-Laki','JBT006'),('PG019','Gunawan Satrio','GunawanSatrio1995@gmail.com','089582154129','Laki-Laki','JBT006'),('PG020','Imca Ica','ImcaIca2001@gmail.com','088429601053','Perempuan','JBT010');
/*!40000 ALTER TABLE `pegawai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservasi`
--

DROP TABLE IF EXISTS `reservasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservasi` (
  `ID_reservasi` varchar(10) NOT NULL,
  `ID_Guest` varchar(10) DEFAULT NULL,
  `ID_Kamar` varchar(4) DEFAULT NULL,
  `id_pegawai` varchar(10) DEFAULT NULL,
  `Uang_muka` decimal(10,0) DEFAULT NULL,
  `Total_harga` decimal(10,0) DEFAULT NULL,
  `tgl_checkin` date DEFAULT NULL,
  `tgl_checkout` date DEFAULT NULL,
  PRIMARY KEY (`ID_reservasi`),
  KEY `ID_Guest` (`ID_Guest`),
  KEY `ID_Kamar` (`ID_Kamar`),
  KEY `id_pegawai` (`id_pegawai`),
  CONSTRAINT `reservasi_ibfk_1` FOREIGN KEY (`ID_Guest`) REFERENCES `guest` (`ID_Guest`) ON DELETE CASCADE,
  CONSTRAINT `reservasi_ibfk_2` FOREIGN KEY (`ID_Kamar`) REFERENCES `kamar` (`ID_Kamar`) ON DELETE CASCADE,
  CONSTRAINT `reservasi_ibfk_3` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservasi`
--

LOCK TABLES `reservasi` WRITE;
/*!40000 ALTER TABLE `reservasi` DISABLE KEYS */;
INSERT INTO `reservasi` VALUES ('RB01','G01','R10','PG009',3360000,8400000,'0000-00-00','0000-00-00'),('RB02','G02','R05','PG005',6720000,16800000,'0000-00-00','0000-00-00'),('RB03','G03','R06','PG006',1440000,3600000,'0000-00-00','0000-00-00'),('RB04','G04','R18','PG005',1700000,4250000,'0000-00-00','0000-00-00'),('RB05','G05','R03','PG005',3000000,7500000,'0000-00-00','0000-00-00'),('RB06','G06','R12','PG009',2700000,6750000,'0000-00-00','0000-00-00'),('RB07','G07','R15','PG009',200000,500000,'0000-00-00','0000-00-00'),('RB08','G08','R02','PG006',2400000,6000000,'0000-00-00','0000-00-00'),('RB09','G09','R19','PG006',1820000,4550000,'0000-00-00','0000-00-00'),('RB10','G10','R13','PG006',3000000,7500000,'0000-00-00','0000-00-00');
/*!40000 ALTER TABLE `reservasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipe_kamar`
--

DROP TABLE IF EXISTS `tipe_kamar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipe_kamar` (
  `ID_Tipekamar` varchar(4) NOT NULL,
  `TipeKamar` varchar(30) DEFAULT NULL,
  `Harga` decimal(10,0) DEFAULT NULL,
  `Kapasitas` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Tipekamar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipe_kamar`
--

LOCK TABLES `tipe_kamar` WRITE;
/*!40000 ALTER TABLE `tipe_kamar` DISABLE KEYS */;
INSERT INTO `tipe_kamar` VALUES ('TR01','Standar Room',650000,2),('TR02','Superior Room',850000,2),('TR03','Single Room',500000,1),('TR04','Twin Room',750000,2),('TR05','Double Room',750000,2),('TR06','Family Room',1200000,5),('TR07','Connecting Room',1000000,4),('TR08','Deluxe Room',1200000,2),('TR09','Cabana Room',1500000,2),('TR10','Presidential Suite',2000000,2);
/*!40000 ALTER TABLE `tipe_kamar` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-22 23:41:09
