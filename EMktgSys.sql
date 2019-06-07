-- MySQL dump 10.14  Distrib 5.5.60-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: pontus
-- ------------------------------------------------------
-- Server version	5.5.60-MariaDB

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
-- Temporary table structure for view `full_party`
--

DROP TABLE IF EXISTS `full_party`;
/*!50001 DROP VIEW IF EXISTS `full_party`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `full_party` (
  `PartyID` tinyint NOT NULL,
  `FirstName` tinyint NOT NULL,
  `LastName` tinyint NOT NULL,
  `DateOfBirth` tinyint NOT NULL,
  `CountryOfOrigin` tinyint NOT NULL,
  `Sex` tinyint NOT NULL,
  `AddressLine1` tinyint NOT NULL,
  `PostCode` tinyint NOT NULL,
  `City` tinyint NOT NULL,
  `County` tinyint NOT NULL,
  `Country` tinyint NOT NULL,
  `Email` tinyint NOT NULL,
  `MobilePhone` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `lov_contract_end_reason`
--

DROP TABLE IF EXISTS `lov_contract_end_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lov_contract_end_reason` (
  `ContractEndReasonID` smallint(6) NOT NULL AUTO_INCREMENT,
  `ContractEndReasonName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ContractEntReasonDescription` longtext COLLATE utf8_unicode_ci,
  `ValidFrom` date NOT NULL,
  `ValidTo` date NOT NULL,
  `DelFlag` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ContractEndReasonID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lov_contract_status`
--

DROP TABLE IF EXISTS `lov_contract_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lov_contract_status` (
  `ContractStatusID` smallint(6) NOT NULL AUTO_INCREMENT,
  `ContractStatusName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ContractStatusDescription` longtext COLLATE utf8_unicode_ci,
  `ValidFrom` date NOT NULL,
  `ValidTo` date NOT NULL,
  `DelFlag` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ContractStatusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lov_contract_type`
--

DROP TABLE IF EXISTS `lov_contract_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lov_contract_type` (
  `ContractTypeID` smallint(6) NOT NULL AUTO_INCREMENT,
  `ContractTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ContractTypeDescription` longtext COLLATE utf8_unicode_ci,
  `ValidFrom` date NOT NULL,
  `ValidTo` date NOT NULL,
  `DelFlag` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ContractTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `part_party`
--

DROP TABLE IF EXISTS `part_party`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `part_party` (
  `PartyID` bigint(20) NOT NULL,
  `FirstName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Sex` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaritalStatus` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CountryOfOrigin` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `PermissionToContact` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ClientManager` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ClientStatus` smallint(6) DEFAULT NULL,
  `ValidFrom` date NOT NULL,
  `ValidTo` date NOT NULL,
  `DelFlag` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`PartyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `party_address`
--

DROP TABLE IF EXISTS `party_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `party_address` (
  `AddressID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PartyID` bigint(20) NOT NULL,
  `AddressType` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `AddressLine1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PostCode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `City` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `County` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ValidFrom` date NOT NULL,
  `ValidTo` date NOT NULL,
  `DelFlag` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`AddressID`)
) ENGINE=InnoDB AUTO_INCREMENT=14970 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `party_contacts`
--

DROP TABLE IF EXISTS `party_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `party_contacts` (
  `ContactID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PartyID` bigint(20) NOT NULL,
  `ContactType` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `ContactValue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ValidFrom` date NOT NULL,
  `ValidTo` date NOT NULL,
  `DelFlag` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ContactID`)
) ENGINE=InnoDB AUTO_INCREMENT=44908 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prod_catalogue`
--

DROP TABLE IF EXISTS `prod_catalogue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prod_catalogue` (
  `ProductID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ProductCode` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `ProductTypeID` smallint(6) NOT NULL,
  `ValidFrom` date NOT NULL,
  `ValidTo` date NOT NULL,
  `DelFlag` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prod_contract`
--

DROP TABLE IF EXISTS `prod_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prod_contract` (
  `ContractID` bigint(20) NOT NULL,
  `ContractStatusID` smallint(6) NOT NULL,
  `ContractTypeID` smallint(6) NOT NULL,
  `ContractStartDate` date NOT NULL,
  `ContractEndDate` date NOT NULL,
  `ContractEndReasonID` smallint(6) NOT NULL,
  `ProductID` smallint(6) NOT NULL,
  `ContractSubjectID` smallint(6) NOT NULL,
  PRIMARY KEY (`ContractID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stg_api`
--

DROP TABLE IF EXISTS `stg_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stg_api` (
  `PartyID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PartyDofbirth` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PartyFname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PartyLname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PartyGender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PartyNationality` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressCity` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressPostcode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressState` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressStreet` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ContactEmail` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ContactMobile` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ContactPhone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`PartyID`)
) ENGINE=InnoDB AUTO_INCREMENT=14977 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger insert_form_api after insert on stg_api
for each row
begin

  declare random integer;
  select rand() into random;

  insert into part_party (
  PartyID,  FirstName,  LastName,  DateOfBirth,  Sex,  CountryOfOrigin, PermissionToContact, MaritalStatus, ClientStatus, ClientManager, ValidFrom,  ValidTo,  DelFlag
  ) 
  values (
  new.PartyID,  new.PartyFname,  new.PartyLname,  substr(new.PartyDofbirth,1,10),  new.PartyGender,  new.PartyNationality, 
  case 
  when random < 0.1 then 'No'
  else 'Yes'
  end,
  case
  when year(current_date) - year(substr(new.PartyDofbirth,1,10))  < 18 then 'Single'
  when 18 <= year(current_date) - year(substr(new.PartyDofbirth,1,10)) and year(current_date) - year(substr(new.PartyDofbirth,1,10)) < 80 then
case
when 0 <= random and random <= 0.4 then 'Married'
when 0.4 < random and random <= 0.6 then 'Single'
when 0.6 < random and random <= 0.8 then 'Divorced'
else 'Widowed'
end
  when 80 < year(current_date) - year(substr(new.PartyDofbirth,1,10)) then
    case
when 0 <= random and random <= 0.4 then 'Married'
when 0.4 < random and random <= 0.5 then 'Single'
when 0.5 < random and random <= 0.7 then 'Divorced'
else 'Widowed'
end
  end,
  0,
  case
when 0 <= random and random <= 0.1 then 'MG01'
when 0.1 < random and random <= 0.2 then 'MG02'
when 0.2 < random and random <= 0.3 then 'MG03'
when 0.3 < random and random <= 0.4 then 'MG04'
when 0.4 < random and random <= 0.5 then 'MG05'
when 0.5 < random and random <= 0.6 then 'MG06'
when 0.6 < random and random <= 0.7 then 'MG07'
when 0.7 < random and random <= 0.8 then 'MG08'
when 0.8 < random and random <= 0.9 then 'MG09'
when 0.9 < random then 'MG10'
  end,
  current_date,  '2999-12-31',  'N'
    );

  insert into party_address (
  PartyID,  AddressLine1,  PostCode,  City,  County, Country,  ValidFrom,  ValidTo,  DelFlag
  )
  values (
  new.PartyID,  new.AddressStreet,  new.AddressPostcode,  new.AddressCity,  new.AddressState, new.PartyNationality, current_date,  '2999-12-31',  'N'
  );

  insert into party_contacts (
  PartyID,  ContactType,  ContactValue,  ValidFrom,  ValidTo,  DelFlag
  )
  values (
  new.PartyID,  'E',  new.ContactEmail,  current_date,  '2999-12-31',  'N'
  );

  insert into party_contacts (
  PartyID,  ContactType,  ContactValue,  ValidFrom,  ValidTo,  DelFlag
  )
  values (
  new.PartyID,  'M',  new.ContactMobile,  current_date,  '2999-12-31',  'N'
  );

  insert into party_contacts (
  PartyID,  ContactType,  ContactValue,  ValidFrom,  ValidTo,  DelFlag
  )
  values (
  new.PartyID,  'L',  new.ContactPhone,  current_date,  '2999-12-31',  'N'
  );

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `pkid` int(11) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Final view structure for view `full_party`
--

/*!50001 DROP TABLE IF EXISTS `full_party`*/;
/*!50001 DROP VIEW IF EXISTS `full_party`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `full_party` AS (select `a`.`PartyID` AS `PartyID`,`a`.`FirstName` AS `FirstName`,`a`.`LastName` AS `LastName`,`a`.`DateOfBirth` AS `DateOfBirth`,`a`.`CountryOfOrigin` AS `CountryOfOrigin`,`a`.`Sex` AS `Sex`,`b`.`AddressLine1` AS `AddressLine1`,`b`.`PostCode` AS `PostCode`,`b`.`City` AS `City`,`b`.`County` AS `County`,`b`.`Country` AS `Country`,`c`.`ContactValue` AS `Email`,`d`.`ContactValue` AS `MobilePhone` from (((`part_party` `a` join `party_address` `b` on(((`a`.`PartyID` = `b`.`PartyID`) and (`b`.`DelFlag` = 'N')))) join `party_contacts` `c` on(((`a`.`PartyID` = `c`.`PartyID`) and (`c`.`ContactType` = 'E') and (`c`.`DelFlag` = 'N')))) join `party_contacts` `d` on(((`a`.`PartyID` = `d`.`PartyID`) and (`d`.`ContactType` = 'M') and (`d`.`DelFlag` = 'N')))) where (`a`.`DelFlag` = 'N')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-03 14:18:45
