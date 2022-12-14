-- MySQL dump 10.19  Distrib 10.3.34-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: dragNdrop
-- ------------------------------------------------------
-- Server version	10.3.34-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `linux_playbooks`
--

DROP TABLE IF EXISTS `linux_playbooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linux_playbooks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playbook_name` varchar(60) NOT NULL,
  `playbook_class_name` varchar(60) NOT NULL,
  `playbook_display_name` varchar(60) NOT NULL,
  `playbook_html` text NOT NULL,
  `playbook_path` varchar(60) NOT NULL,
  `playbook_inputs` int(11) NOT NULL,
  `playbook_outputs` int(11) NOT NULL,
  `playbook_vault_password_path` varchar(60) DEFAULT NULL,
  `playbook_module_path` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `playbook_name_UNIQUE` (`playbook_name`),
  UNIQUE KEY `playbook_class_name_UNIQUE` (`playbook_class_name`),
  UNIQUE KEY `playbook_display_name_UNIQUE` (`playbook_display_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linux_playbooks`
--

LOCK TABLES `linux_playbooks` WRITE;
/*!40000 ALTER TABLE `linux_playbooks` DISABLE KEYS */;
INSERT INTO `linux_playbooks` VALUES (1,'process_ports_linux.yaml','process_ports_linux','Process Ports','PGRpdj4NCiAgICAgICAgPGRpdiBjbGFzcz0idGl0bGUtYm94Ij48aSBjbGFzcz0iZmFiIGZhLWxpbnV4ICI+PC9pPiBQcm9jZXNzIFBvcnRzIDwvZGl2Pg0KICAgICAgICA8ZGl2Pg0KICAgICAgICAgIDxidXR0b24gY2xhc3M9ImRyb3BidG5wYXJhbWV0ZXJzIiBvbmNsaWNrPSJzaG93UGFyYW1ldGVyKCd1bmlxdWVJRCcpIj4gUGFyYW1ldGVycyA8L2J1dHRvbj4NCiAgICAgICAgICA8ZGl2IGlkPXVuaXF1ZUlEIGNsYXNzPSJkcm9wZG93bi1jb250ZW50LXBhcmFtZXRlcnMiPg0KICAgICAgICAgICAgPGRpdiBjbGFzcz0iYm94Ij4NCiAgICAgICAgICAgICAgPHA+SG9zdHM8L3A+DQogICAgICAgICAgICAgIDxpbnB1dCB0eXBlPSJ0ZXh0IiBwbGFjZWhvbGRlcj0iaG9zdDE6aG9zdDIiIGRmLWhvc3RfbmFtZXM+DQogICAgICAgICAgICA8L2Rpdj4NCiAgICAgICAgICA8L2Rpdj4NCiAgICAgICAgPC9kaXY+DQogICAgICA8L2Rpdj4=','/home/sam/',1,1,NULL,NULL),(2,'process_list_linux.yaml','process_list_linux','Process List','PGRpdj4NCiAgICAgICAgPGRpdiBjbGFzcz0idGl0bGUtYm94Ij48aSBjbGFzcz0iZmFiIGZhLWxpbnV4ICI+PC9pPiBQcm9jZXNzIExpc3QgPC9kaXY+DQogICAgICAgIDxkaXY+DQogICAgICAgICAgPGJ1dHRvbiBjbGFzcz0iZHJvcGJ0bnBhcmFtZXRlcnMiIG9uY2xpY2s9InNob3dQYXJhbWV0ZXIoJ3VuaXF1ZUlEJykiPiBQYXJhbWV0ZXJzIDwvYnV0dG9uPg0KICAgICAgICAgIDxkaXYgaWQ9dW5pcXVlSUQgY2xhc3M9ImRyb3Bkb3duLWNvbnRlbnQtcGFyYW1ldGVycyI+DQogICAgICAgICAgICA8ZGl2IGNsYXNzPSJib3giPg0KICAgICAgICAgICAgICA8cD5Ib3N0czwvcD4NCiAgICAgICAgICAgICAgPGlucHV0IHR5cGU9InRleHQiIHBsYWNlaG9sZGVyPSJob3N0MTpob3N0MiIgZGYtaG9zdF9uYW1lcz4NCiAgICAgICAgICAgIDwvZGl2Pg0KICAgICAgICAgIDwvZGl2Pg0KICAgICAgICA8L2Rpdj4NCiAgICAgIDwvZGl2Pg==','/home/sam/',1,1,NULL,NULL),(3,'global.yaml','finding_deleting_linux','Find & Delete a File','PGRpdj4NCiAgICAgICAgPGRpdiBjbGFzcz0idGl0bGUtYm94Ij48aSBjbGFzcz0iZmFiIGZhLWxpbnV4ICI+PC9pPiBGaW5kICYgRGVsZXRlIGEgRmlsZSA8L2Rpdj4NCiAgICAgICAgPGRpdj4NCiAgICAgICAgICA8YnV0dG9uIGNsYXNzPSJkcm9wYnRucGFyYW1ldGVycyIgb25jbGljaz0ic2hvd1BhcmFtZXRlcigndW5pcXVlSUQnKSI+IFBhcmFtZXRlcnMgPC9idXR0b24+DQogICAgICAgICAgPGRpdiBpZD11bmlxdWVJRCBjbGFzcz0iZHJvcGRvd24tY29udGVudC1wYXJhbWV0ZXJzIj4NCiAgICAgICAgICAgIDxkaXYgY2xhc3M9ImJveCI+DQogICAgICAgICAgICAgIDxwPkhvc3RzPC9wPg0KICAgICAgICAgICAgICA8aW5wdXQgdHlwZT0idGV4dCIgcGxhY2Vob2xkZXI9Imhvc3QxOmhvc3QyIiBkZi1ob3N0X25hbWVzPg0KICAgICAgICAgICAgPC9kaXY+DQogICAgICAgICAgICA8ZGl2IGNsYXNzPSJib3giPg0KICAgICAgICAgICAgICA8cD5GaWxlIFBhdGg8L3A+DQogICAgICAgICAgICAgIDxpbnB1dCB0eXBlPSJ0ZXh0IiBwbGFjZWhvbGRlcj0iL2hvbWUvc2FtLyAiIGRmLWZpbGVfcGF0aD4NCiAgICAgICAgICAgIDwvZGl2Pg0KICAgICAgICAgICAgPGRpdiBjbGFzcz0iYm94Ij4NCiAgICAgICAgICAgICAgPHA+RmlsZSBOYW1lPC9wPg0KICAgICAgICAgICAgICA8aW5wdXQgdHlwZT0idGV4dCIgcGxhY2Vob2xkZXI9ImZpbGUudHh0ICIgZGYtZmlsZV9uYW1lPg0KICAgICAgICAgICAgPC9kaXY+DQogICAgICAgICAgPC9kaXY+DQogICAgICAgIDwvZGl2Pg0KICAgICAgPC9kaXY+','/home/sam/',1,1,NULL,NULL),(4,'iptables_playbook.yaml','isolating_linux_host','Isolating Hosts','PGRpdj4KICAgICAgICA8ZGl2IGNsYXNzPSJ0aXRsZS1ib3giPjxpIGNsYXNzPSJmYWIgZmEtbGludXgiPjwvaT4gSXNvbGF0ZSBIb3N0cyA8L2Rpdj4KICAgICAgICA8ZGl2PgogICAgICAgICAgPGJ1dHRvbiBjbGFzcz0iZHJvcGJ0bnBhcmFtZXRlcnMiIG9uY2xpY2s9InNob3dQYXJhbWV0ZXIoJ3VuaXF1ZUlEJykiPiBQYXJhbWV0ZXJzIDwvYnV0dG9uPgogICAgICAgICAgPGRpdiBpZD11bmlxdWVJRCBjbGFzcz0iZHJvcGRvd24tY29udGVudC1wYXJhbWV0ZXJzIj4KICAgICAgICAgICAgPGRpdiBjbGFzcz0iYm94Ij4KICAgICAgICAgICAgICA8cD5Ib3N0czwvcD4KICAgICAgICAgICAgICA8aW5wdXQgdHlwZT0idGV4dCIgcGxhY2Vob2xkZXI9Imhvc3QxOmhvc3QyIiBkZi1ob3N0X25hbWVzPgogICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgIDwvZGl2PgogICAgICAgIDwvZGl2PgogICAgICA8L2Rpdj4=','/home/sam/',1,1,'','/usr/lib/'),(5,'iptables_revoke_playbook.yaml','isolating_linux_host_revoke','Revoke Isolated Hosts','PGRpdj4KICAgICAgICA8ZGl2IGNsYXNzPSJ0aXRsZS1ib3giPjxpIGNsYXNzPSJmYWIgZmEtbGludXgiPjwvaT4gUmV2b2tlIElzb2xhdGVkIEhvc3RzIDwvZGl2PgogICAgICAgIDxkaXY+CiAgICAgICAgICA8YnV0dG9uIGNsYXNzPSJkcm9wYnRucGFyYW1ldGVycyIgb25jbGljaz0ic2hvd1BhcmFtZXRlcigndW5pcXVlSUQnKSI+IFBhcmFtZXRlcnMgPC9idXR0b24+CiAgICAgICAgICA8ZGl2IGlkPXVuaXF1ZUlEIGNsYXNzPSJkcm9wZG93bi1jb250ZW50LXBhcmFtZXRlcnMiPgogICAgICAgICAgICA8ZGl2IGNsYXNzPSJib3giPgogICAgICAgICAgICAgIDxwPkhvc3RzPC9wPgogICAgICAgICAgICAgIDxpbnB1dCB0eXBlPSJ0ZXh0IiBwbGFjZWhvbGRlcj0iaG9zdDE6aG9zdDIiIGRmLWhvc3RfbmFtZXM+CiAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgPC9kaXY+CiAgICAgICAgPC9kaXY+CiAgICAgIDwvZGl2Pg==','/home/sam/',1,1,NULL,'/usr/lib/'),(6,'locking_linux_host.yaml','locking_linux_host','Lock Hosts','PGRpdj4KICAgICAgICA8ZGl2IGNsYXNzPSJ0aXRsZS1ib3giPjxpIGNsYXNzPSJmYWIgZmEtbGludXgiPjwvaT4gTG9jayBIb3N0cyA8L2Rpdj4KICAgICAgICA8ZGl2PgogICAgICAgICAgPGJ1dHRvbiBjbGFzcz0iZHJvcGJ0bnBhcmFtZXRlcnMiIG9uY2xpY2s9InNob3dQYXJhbWV0ZXIoJ3VuaXF1ZUlEJykiPiBQYXJhbWV0ZXJzIDwvYnV0dG9uPgogICAgICAgICAgPGRpdiBpZD11bmlxdWVJRCBjbGFzcz0iZHJvcGRvd24tY29udGVudC1wYXJhbWV0ZXJzIj4KICAgICAgICAgICAgPGRpdiBjbGFzcz0iYm94Ij4KICAgICAgICAgICAgICA8cD5Ib3N0czwvcD4KICAgICAgICAgICAgICA8aW5wdXQgdHlwZT0idGV4dCIgcGxhY2Vob2xkZXI9Imhvc3QxOmhvc3QyIiBkZi1ob3N0X25hbWVzPgogICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgPGRpdiBjbGFzcz0iYm94Ij4KICAgICAgICAgICAgICAgPHA+VXNlcjwvcD4KICAgICAgICAgICAgICAgPGlucHV0IHR5cGU9InRleHQiIHBsYWNlaG9sZGVyPSJqb24iIGRmLXVzZXJfbmFtZT4KICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgPC9kaXY+CiAgICAgICAgPC9kaXY+CiAgICAgIDwvZGl2Pg==','/home/sam/',1,1,NULL,NULL),(7,'unlocking_linux_host.yaml','unlocking_linux_host','Unlock Hosts','PGRpdj4KICAgICAgICA8ZGl2IGNsYXNzPSJ0aXRsZS1ib3giPjxpIGNsYXNzPSJmYWIgZmEtbGludXgiPjwvaT4gVW5sb2NrIEhvc3RzIDwvZGl2PgogICAgICAgIDxkaXY+CiAgICAgICAgICA8YnV0dG9uIGNsYXNzPSJkcm9wYnRucGFyYW1ldGVycyIgb25jbGljaz0ic2hvd1BhcmFtZXRlcigndW5pcXVlSUQnKSI+IFBhcmFtZXRlcnMgPC9idXR0b24+CiAgICAgICAgICA8ZGl2IGlkPXVuaXF1ZUlEIGNsYXNzPSJkcm9wZG93bi1jb250ZW50LXBhcmFtZXRlcnMiPgogICAgICAgICAgICA8ZGl2IGNsYXNzPSJib3giPgogICAgICAgICAgICAgIDxwPkhvc3RzPC9wPgogICAgICAgICAgICAgIDxpbnB1dCB0eXBlPSJ0ZXh0IiBwbGFjZWhvbGRlcj0iaG9zdDE6aG9zdDIiIGRmLWhvc3RfbmFtZXM+CiAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICA8ZGl2IGNsYXNzPSJib3giPgogICAgICAgICAgICAgICA8cD5Vc2VyPC9wPgogICAgICAgICAgICAgICA8aW5wdXQgdHlwZT0idGV4dCIgcGxhY2Vob2xkZXI9ImpvbiIgZGYtdXNlcl9uYW1lPgogICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICA8L2Rpdj4KICAgICAgICA8L2Rpdj4KICAgICAgPC9kaXY+','/home/sam/',1,1,NULL,NULL),(8,'process_dump_linux.yaml','process_dump_linux','Process Dump','PGRpdj4KICAgICAgICA8ZGl2IGNsYXNzPSJ0aXRsZS1ib3giPjxpIGNsYXNzPSJmYWIgZmEtbGludXgiPjwvaT4gUHJvY2VzcyBEdW1wIDwvZGl2PgogICAgICAgIDxkaXY+CiAgICAgICAgICA8YnV0dG9uIGNsYXNzPSJkcm9wYnRucGFyYW1ldGVycyIgb25jbGljaz0ic2hvd1BhcmFtZXRlcigndW5pcXVlSUQnKSI+IFBhcmFtZXRlcnMgPC9idXR0b24+CiAgICAgICAgICA8ZGl2IGlkPXVuaXF1ZUlEIGNsYXNzPSJkcm9wZG93bi1jb250ZW50LXBhcmFtZXRlcnMiPgogICAgICAgICAgICA8ZGl2IGNsYXNzPSJib3giPgogICAgICAgICAgICAgIDxwPkhvc3RzPC9wPgogICAgICAgICAgICAgIDxpbnB1dCB0eXBlPSJ0ZXh0IiBwbGFjZWhvbGRlcj0iaG9zdDE6aG9zdDIiIGRmLWhvc3RfbmFtZXM+CiAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICA8ZGl2IGNsYXNzPSJib3giPgogICAgICAgICAgICAgIDxwPlByb2Nlc3MgSUQ8L3A+CiAgICAgICAgICAgICAgPGlucHV0IHR5cGU9InRleHQiIHBsYWNlaG9sZGVyPSI0NzAwIiBkZi1wcm9jZXNzX2lkPgogICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgPGRpdiBjbGFzcz0iYm94Ij4KICAgICAgICAgICAgICA8cD5GaWxlIE5hbWU8L3A+CiAgICAgICAgICAgICAgPGlucHV0IHR5cGU9InRleHQiIHBsYWNlaG9sZGVyPSJjaHJvbWUiIGRmLWZpbGVfbmFtZT4KICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICA8L2Rpdj4KICAgICAgICA8L2Rpdj4KICAgICAgPC9kaXY+','/home/sam/',1,1,'','/home/sam/');
/*!40000 ALTER TABLE `linux_playbooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `other_playbooks`
--

DROP TABLE IF EXISTS `other_playbooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `other_playbooks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playbook_name` varchar(60) NOT NULL,
  `playbook_class_name` varchar(60) NOT NULL,
  `playbook_display_name` varchar(60) NOT NULL,
  `playbook_html` text NOT NULL,
  `playbook_path` varchar(60) NOT NULL,
  `playbook_inputs` int(11) NOT NULL,
  `playbook_outputs` int(11) NOT NULL,
  `playbook_vault_password_path` varchar(60) DEFAULT NULL,
  `playbook_module_path` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `playbook_name_UNIQUE` (`playbook_name`),
  UNIQUE KEY `playbook_class_name_UNIQUE` (`playbook_class_name`),
  UNIQUE KEY `playbook_display_name_UNIQUE` (`playbook_display_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `other_playbooks`
--

LOCK TABLES `other_playbooks` WRITE;
/*!40000 ALTER TABLE `other_playbooks` DISABLE KEYS */;
INSERT INTO `other_playbooks` VALUES (1,'slack_notification.yaml','slack_notification','Slack Notification','PGRpdj4NCiAgICAgICAgPGRpdiBjbGFzcz0idGl0bGUtYm94Ij48aSBjbGFzcz0iZmFzIGZhLXNjcm9sbCI+PC9pPiBTbGFjayBOb3RpZmljYXRpb24gPC9kaXY+DQogICAgICAgIDxkaXY+DQogICAgICAgICAgPGJ1dHRvbiBjbGFzcz0iZHJvcGJ0bnBhcmFtZXRlcnMtb3RoZXIiIG9uY2xpY2s9InNob3dQYXJhbWV0ZXIoJ3VuaXF1ZUlEJykiPiBQYXJhbWV0ZXJzIDwvYnV0dG9uPg0KICAgICAgICAgIDxkaXYgaWQ9dW5pcXVlSUQgY2xhc3M9ImRyb3Bkb3duLWNvbnRlbnQtcGFyYW1ldGVycyI+DQogICAgICAgICAgICA8ZGl2IGNsYXNzPSJib3giPg0KICAgICAgICAgICAgICA8cD5DaGFubmVsczwvcD4NCiAgICAgICAgICAgICAgPGlucHV0IHR5cGU9InRleHQiIHBsYWNlaG9sZGVyPSJbJ2NoYW5uZWwxJywnY2hhbm5lbDInXSIgZGYtY2hhbm5lbHM+DQogICAgICAgICAgICA8L2Rpdj4NCiAgICAgICAgICAgIDxkaXYgY2xhc3M9ImJveCI+DQogICAgICAgICAgICAgIDxwPk1lc3NhZ2U8L3A+DQogICAgICAgICAgICAgIDxpbnB1dCB0eXBlPSJ0ZXh0IiBwbGFjZWhvbGRlcj0idHlwZSB5b3VyIG1lc3NhZ2UgaGVyZSIgZGYtbWVzc2FnZT4NCiAgICAgICAgICAgIDwvZGl2Pg0KICAgICAgICAgIDwvZGl2Pg0KICAgICAgICA8L2Rpdj4NCiAgICAgIDwvZGl2Pg==','/home/sam/',1,1,NULL,NULL),(2,'email_notification.yaml','email_notification','Email Notification','PGRpdj4KICAgICAgICA8ZGl2IGNsYXNzPSJ0aXRsZS1ib3giPjxpIGNsYXNzPSJmYXMgZmEtc2Nyb2xsIj48L2k+IEVtYWlsIE5vdGlmaWNhdGlvbiA8L2Rpdj4KICAgICAgICA8ZGl2PgogICAgICAgICAgPGJ1dHRvbiBjbGFzcz0iZHJvcGJ0bnBhcmFtZXRlcnMtb3RoZXIiIG9uY2xpY2s9InNob3dQYXJhbWV0ZXIoJ3VuaXF1ZUlEJykiPiBQYXJhbWV0ZXJzIDwvYnV0dG9uPgogICAgICAgICAgPGRpdiBpZD11bmlxdWVJRCBjbGFzcz0iZHJvcGRvd24tY29udGVudC1wYXJhbWV0ZXJzIj4KICAgICAgICAgICAgPGRpdiBjbGFzcz0iYm94Ij4KICAgICAgICAgICAgICA8cD5TdWJqZWN0PC9wPgogICAgICAgICAgICAgIDxpbnB1dCB0eXBlPSJ0ZXh0IiBwbGFjZWhvbGRlcj0iZW1haWwgc3ViamVjdCIgZGYtZW1haWxfc3ViamVjdD4KICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgIDxkaXYgY2xhc3M9ImJveCI+CiAgICAgICAgICAgICAgPHA+Qm9keTwvcD4KICAgICAgICAgICAgICA8aW5wdXQgdHlwZT0idGV4dCIgcGxhY2Vob2xkZXI9ImVtYWlsIGJvZHkiIGRmLWVtYWlsX2JvZHk+CiAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICA8ZGl2IGNsYXNzPSJib3giPgogICAgICAgICAgICAgIDxwPkF0dGFjaG1lbnRzPC9wPgogICAgICAgICAgICAgIDxpbnB1dCB0eXBlPSJ0ZXh0IiBwbGFjZWhvbGRlcj0iL2hvbWUvc2FtL3Rlc3QudHh0IiBkZi1lbWFpbF9hdHRhY2htZW50PgogICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgPGRpdiBjbGFzcz0iYm94Ij4KICAgICAgICAgICAgICA8cD5FbWFpbCBBZGRyZXNzZXM8L3A+CiAgICAgICAgICAgICAgPGlucHV0IHR5cGU9InRleHQiIHBsYWNlaG9sZGVyPSI8ZTFAZ21haWwuY29tPiw8ZTJAZ21haWwuY29tPiIgZGYtZW1haWxfYWRkcmVzc2VzPgogICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgIDwvZGl2PgogICAgICAgIDwvZGl2PgogICAgICA8L2Rpdj4=','/home/sam/',1,1,'/home/sam/vars/.vault_pass',NULL);
/*!40000 ALTER TABLE `other_playbooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playbook_logs`
--

DROP TABLE IF EXISTS `playbook_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playbook_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playbook_logs`
--

LOCK TABLES `playbook_logs` WRITE;
/*!40000 ALTER TABLE `playbook_logs` DISABLE KEYS */;
INSERT INTO `playbook_logs` VALUES (1,'[{\"playbook_name\":\"Process Ports\",\"data\":{\"skipped\":{},\"ok\":{},\"dark\":{\"jon\":1},\"failures\":{},\"ignored\":{},\"rescued\":{},\"processed\":{\"jon\":1},\"changed\":{}}}]'),(2,'[{\"playbook_name\":\"Process Ports\",\"data\":{\"skipped\":{},\"ok\":{},\"dark\":{\"jon\":1},\"failures\":{},\"ignored\":{},\"rescued\":{},\"processed\":{\"jon\":1},\"changed\":{}}}]'),(3,'[{\"playbook_name\":\"Process Ports\",\"data\":{\"skipped\":{},\"ok\":{},\"dark\":{\"jon\":1},\"failures\":{},\"ignored\":{},\"rescued\":{},\"processed\":{\"jon\":1},\"changed\":{}}}]'),(5,'[{\"playbook_name\":\"Process Ports\",\"data\":{\"skipped\":{},\"ok\":{},\"dark\":{\"jon\":1,\"sam\":1,\"sammy\":1,\"tom\":1,\"jack\":1},\"failures\":{},\"ignored\":{},\"rescued\":{},\"processed\":{\"jon\":1},\"changed\":{}}}]'),(7,'[{\"playbook_name\":\"Process Ports\",\"data\":{\"skipped\":{},\"ok\":{},\"dark\":{},\"failures\":{},\"ignored\":{},\"rescued\":{},\"processed\":{},\"changed\":{}}},{\"playbook_name\":\"Process List\",\"data\":{\"skipped\":{},\"ok\":{},\"dark\":{\"jon\":1},\"failures\":{},\"ignored\":{},\"rescued\":{},\"processed\":{\"jon\":1},\"changed\":{}}}]'),(8,'[{\"playbook_name\":\"Lock Hosts\",\"data\":{\"skipped\":{},\"ok\":{},\"dark\":{\"jon\":1},\"failures\":{},\"ignored\":{},\"rescued\":{},\"processed\":{\"jon\":1},\"changed\":{}}},{\"playbook_name\":\"Isolating Hosts\",\"data\":{\"skipped\":{},\"ok\":{},\"dark\":{\"jon\":1},\"failures\":{},\"ignored\":{},\"rescued\":{},\"processed\":{\"jon\":1},\"changed\":{}}}]'),(9,'[{\"playbook_name\":\"Unlock Hosts\",\"data\":{\"skipped\":{},\"ok\":{},\"dark\":{\"jack\":1,\"sam\":1,\"tom\":1,\"jon\":1,\"muhtashim\":1},\"failures\":{},\"ignored\":{},\"rescued\":{},\"processed\":{\"jack\":1,\"sam\":1,\"tom\":1,\"jon\":1,\"muhtashim\":1},\"changed\":{}}},{\"playbook_name\":\"Lock Hosts\",\"data\":{\"skipped\":{},\"ok\":{},\"dark\":{\"jack\":1,\"sam\":1,\"jon\":1,\"tom\":1,\"muhtashim\":1},\"failures\":{},\"ignored\":{},\"rescued\":{},\"processed\":{\"jack\":1,\"sam\":1,\"jon\":1,\"tom\":1,\"muhtashim\":1},\"changed\":{}}}]'),(10,'[{\"playbook_name\":\"Process Ports\",\"data\":{\"skipped\":{},\"ok\":{},\"dark\":{\"samsung\":1,\"jon\":1},\"failures\":{},\"ignored\":{},\"rescued\":{},\"processed\":{\"samsung\":1,\"jon\":1},\"changed\":{}}},{\"playbook_name\":\"Process List\",\"data\":{\"skipped\":{},\"ok\":{},\"dark\":{\"jack\":1},\"failures\":{},\"ignored\":{},\"rescued\":{},\"processed\":{\"jack\":1},\"changed\":{}}}]'),(11,'[{\"playbook_name\":\"Process Ports\",\"data\":{\"skipped\":{},\"ok\":{},\"dark\":{\"samsung\":1},\"failures\":{},\"ignored\":{},\"rescued\":{},\"processed\":{\"samsung\":1},\"changed\":{}}}]');
/*!40000 ALTER TABLE `playbook_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `windows_playbooks`
--

DROP TABLE IF EXISTS `windows_playbooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `windows_playbooks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playbook_name` varchar(60) NOT NULL,
  `playbook_class_name` varchar(60) NOT NULL,
  `playbook_display_name` varchar(60) NOT NULL,
  `playbook_html` text NOT NULL,
  `playbook_path` varchar(60) NOT NULL,
  `playbook_inputs` int(11) NOT NULL,
  `playbook_outputs` int(11) NOT NULL,
  `playbook_vault_password_path` varchar(60) DEFAULT NULL,
  `playbook_module_path` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `playbook_name_UNIQUE` (`playbook_name`),
  UNIQUE KEY `playbook_class_name_UNIQUE` (`playbook_class_name`),
  UNIQUE KEY `playbook_display_name_UNIQUE` (`playbook_display_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `windows_playbooks`
--

LOCK TABLES `windows_playbooks` WRITE;
/*!40000 ALTER TABLE `windows_playbooks` DISABLE KEYS */;
INSERT INTO `windows_playbooks` VALUES (1,'process_ports_windows.yaml','process_ports_windows','Process Ports','PGRpdj4NCiAgICAgICAgPGRpdiBjbGFzcz0idGl0bGUtYm94Ij48aSBjbGFzcz0iZmFiIGZhLXdpbmRvd3MiPjwvaT4gUHJvY2VzcyBQb3J0cyA8L2Rpdj4NCiAgICAgICAgPGRpdj4NCiAgICAgICAgICA8YnV0dG9uIGNsYXNzPSJkcm9wYnRucGFyYW1ldGVycy13aW5kb3dzIiBvbmNsaWNrPSJzaG93UGFyYW1ldGVyKCd1bmlxdWVJRCcpIj4gUGFyYW1ldGVycyA8L2J1dHRvbj4NCiAgICAgICAgICA8ZGl2IGlkPXVuaXF1ZUlEIGNsYXNzPSJkcm9wZG93bi1jb250ZW50LXBhcmFtZXRlcnMiPg0KICAgICAgICAgICAgPGRpdiBjbGFzcz0iYm94Ij4NCiAgICAgICAgICAgICAgPHA+SG9zdHM8L3A+DQogICAgICAgICAgICAgIDxpbnB1dCB0eXBlPSJ0ZXh0IiBwbGFjZWhvbGRlcj0iaG9zdDE6aG9zdDIiIGRmLWhvc3RfbmFtZXM+DQogICAgICAgICAgICA8L2Rpdj4NCiAgICAgICAgICA8L2Rpdj4NCiAgICAgICAgPC9kaXY+DQogICAgICA8L2Rpdj4=','/home/sam/',1,1,NULL,NULL),(2,'process_list_windows.yaml','process_list_windows','Process List','PGRpdj4NCiAgICAgICAgPGRpdiBjbGFzcz0idGl0bGUtYm94Ij48aSBjbGFzcz0iZmFiIGZhLXdpbmRvd3MiPjwvaT4gUHJvY2VzcyBMaXN0IDwvZGl2Pg0KICAgICAgICA8ZGl2Pg0KICAgICAgICAgIDxidXR0b24gY2xhc3M9ImRyb3BidG5wYXJhbWV0ZXJzLXdpbmRvd3MiIG9uY2xpY2s9InNob3dQYXJhbWV0ZXIoJ3VuaXF1ZUlEJykiPiBQYXJhbWV0ZXJzIDwvYnV0dG9uPg0KICAgICAgICAgIDxkaXYgaWQ9dW5pcXVlSUQgY2xhc3M9ImRyb3Bkb3duLWNvbnRlbnQtcGFyYW1ldGVycyI+DQogICAgICAgICAgICA8ZGl2IGNsYXNzPSJib3giPg0KICAgICAgICAgICAgICA8cD5Ib3N0czwvcD4NCiAgICAgICAgICAgICAgPGlucHV0IHR5cGU9InRleHQiIHBsYWNlaG9sZGVyPSJob3N0MTpob3N0MiIgZGYtaG9zdF9uYW1lcz4NCiAgICAgICAgICAgIDwvZGl2Pg0KICAgICAgICAgIDwvZGl2Pg0KICAgICAgICA8L2Rpdj4NCiAgICAgIDwvZGl2Pg==','/home/sam/',1,1,NULL,NULL),(3,'global_windows.yaml','finding_deleting_windows','Find & Delete a File','PGRpdj4NCiAgICAgICAgPGRpdiBjbGFzcz0idGl0bGUtYm94Ij48aSBjbGFzcz0iZmFiIGZhLXdpbmRvd3MiPjwvaT4gRmluZCAmIERlbGV0ZSBhIEZpbGUgPC9kaXY+DQogICAgICAgIDxkaXY+DQogICAgICAgICAgPGJ1dHRvbiBjbGFzcz0iZHJvcGJ0bnBhcmFtZXRlcnMtd2luZG93cyIgb25jbGljaz0ic2hvd1BhcmFtZXRlcigndW5pcXVlJykiPiBQYXJhbWV0ZXJzIDwvYnV0dG9uPg0KICAgICAgICAgIDxkaXYgaWQ9dW5pcXVlIGNsYXNzPSJkcm9wZG93bi1jb250ZW50LXBhcmFtZXRlcnMiPg0KICAgICAgICAgICAgPGRpdiBjbGFzcz0iYm94Ij4NCiAgICAgICAgICAgICAgPHA+SG9zdHM8L3A+DQogICAgICAgICAgICAgIDxpbnB1dCB0eXBlPSJ0ZXh0IiBwbGFjZWhvbGRlcj0iaG9zdDE6aG9zdDIiIGRmLWhvc3RfbmFtZXM+DQogICAgICAgICAgICA8L2Rpdj4NCiAgICAgICAgICAgIDxkaXYgY2xhc3M9ImJveCI+DQogICAgICAgICAgICAgIDxwPkZpbGUgUGF0aDwvcD4NCiAgICAgICAgICAgICAgPGlucHV0IHR5cGU9InRleHQiIHBsYWNlaG9sZGVyPSJDOlxVc2Vyc1xqb25cIiBkZi1maWxlX3BhdGg+DQogICAgICAgICAgICA8L2Rpdj4NCiAgICAgICAgICAgIDxkaXYgY2xhc3M9ImJveCI+IA0KICAgICAgICAgICAgICA8cD5GaWxlIE5hbWU8L3A+DQogICAgICAgICAgICAgIDxpbnB1dCB0eXBlPSJ0ZXh0IiBwbGFjZWhvbGRlcj0iZmlsZS50eHQgIiBkZi1maWxlX25hbWU+DQogICAgICAgICAgICA8L2Rpdj4NCiAgICAgICAgICA8L2Rpdj4NCiAgICAgICAgPC9kaXY+DQogICAgICA8L2Rpdj4=','/home/sam/',1,1,NULL,NULL),(4,'windows_firewall_playbook.yaml','isolating_windows_host','Isolate Hosts','PGRpdj4NCiAgICAgICAgPGRpdiBjbGFzcz0idGl0bGUtYm94Ij48aSBjbGFzcz0iZmFiIGZhLXdpbmRvd3MiPjwvaT4gSXNvbGF0ZSBIb3N0cyA8L2Rpdj4NCiAgICAgICAgPGRpdj4NCiAgICAgICAgICA8YnV0dG9uIGNsYXNzPSJkcm9wYnRucGFyYW1ldGVycy13aW5kb3dzIiBvbmNsaWNrPSJzaG93UGFyYW1ldGVyKCd1bmlxdWVJRCcpIj4gUGFyYW1ldGVycyA8L2J1dHRvbj4NCiAgICAgICAgICA8ZGl2IGlkPXVuaXF1ZUlEIGNsYXNzPSJkcm9wZG93bi1jb250ZW50LXBhcmFtZXRlcnMiPg0KICAgICAgICAgICAgPGRpdiBjbGFzcz0iYm94Ij4NCiAgICAgICAgICAgICAgPHA+SG9zdHM8L3A+DQogICAgICAgICAgICAgIDxpbnB1dCB0eXBlPSJ0ZXh0IiBwbGFjZWhvbGRlcj0iaG9zdDE6aG9zdDIiIGRmLWhvc3RfbmFtZXM+DQogICAgICAgICAgICA8L2Rpdj4NCiAgICAgICAgICA8L2Rpdj4NCiAgICAgICAgPC9kaXY+DQogICAgICA8L2Rpdj4=','/home/sam/',1,1,NULL,NULL),(5,'windows_firewall_revoke_playbook.yaml','isolating_windows_host_revoke','Revoke Isolated Hosts','PGRpdj4NCiAgICAgICAgPGRpdiBjbGFzcz0idGl0bGUtYm94Ij48aSBjbGFzcz0iZmFiIGZhLXdpbmRvd3MiPjwvaT4gUmV2b2tlIElzb2xhdGVkIEhvc3RzIDwvZGl2Pg0KICAgICAgICA8ZGl2Pg0KICAgICAgICAgIDxidXR0b24gY2xhc3M9ImRyb3BidG5wYXJhbWV0ZXJzLXdpbmRvd3MiIG9uY2xpY2s9InNob3dQYXJhbWV0ZXIoJ3VuaXF1ZUlEJykiPiBQYXJhbWV0ZXJzIDwvYnV0dG9uPg0KICAgICAgICAgIDxkaXYgaWQ9dW5pcXVlSUQgY2xhc3M9ImRyb3Bkb3duLWNvbnRlbnQtcGFyYW1ldGVycyI+DQogICAgICAgICAgICA8ZGl2IGNsYXNzPSJib3giPg0KICAgICAgICAgICAgICA8cD5Ib3N0czwvcD4NCiAgICAgICAgICAgICAgPGlucHV0IHR5cGU9InRleHQiIHBsYWNlaG9sZGVyPSJob3N0MTpob3N0MiIgZGYtaG9zdF9uYW1lcz4NCiAgICAgICAgICAgIDwvZGl2Pg0KICAgICAgICAgIDwvZGl2Pg0KICAgICAgICA8L2Rpdj4NCiAgICAgIDwvZGl2Pg==','/home/sam/',1,1,NULL,NULL),(6,'locking_windows_host.yaml','locking_windows_host','Lock Hosts','PGRpdj4NCiAgICAgICAgPGRpdiBjbGFzcz0idGl0bGUtYm94Ij48aSBjbGFzcz0iZmFiIGZhLXdpbmRvd3MiPjwvaT4gTG9jayBIb3N0cyA8L2Rpdj4NCiAgICAgICAgPGRpdj4NCiAgICAgICAgICA8YnV0dG9uIGNsYXNzPSJkcm9wYnRucGFyYW1ldGVycy13aW5kb3dzIiBvbmNsaWNrPSJzaG93UGFyYW1ldGVyKCd1bmlxdWVJRCcpIj4gUGFyYW1ldGVycyA8L2J1dHRvbj4NCiAgICAgICAgICA8ZGl2IGlkPXVuaXF1ZUlEIGNsYXNzPSJkcm9wZG93bi1jb250ZW50LXBhcmFtZXRlcnMiPg0KICAgICAgICAgICAgPGRpdiBjbGFzcz0iYm94Ij4NCiAgICAgICAgICAgICAgPHA+SG9zdHM8L3A+DQogICAgICAgICAgICAgIDxpbnB1dCB0eXBlPSJ0ZXh0IiBwbGFjZWhvbGRlcj0iaG9zdDE6aG9zdDIiIGRmLWhvc3RfbmFtZXM+DQogICAgICAgICAgICA8L2Rpdj4NCiAgICAgICAgICAgIDxkaXYgY2xhc3M9ImJveCI+DQogICAgICAgICAgICAgIDxwPlVzZXI8L3A+DQogICAgICAgICAgICAgIDxpbnB1dCB0eXBlPSJ0ZXh0IiBwbGFjZWhvbGRlcj0iam9uIiBkZi11c2VyX25hbWU+DQogICAgICAgICAgICA8L2Rpdj4NCiAgICAgICAgICA8L2Rpdj4NCiAgICAgICAgPC9kaXY+DQogICAgICA8L2Rpdj4=','/home/sam/',1,1,NULL,NULL),(7,'unlocking_windows_host.yaml','unlocking_windows_host','Unlock Hosts','PGRpdj4NCiAgICAgICAgPGRpdiBjbGFzcz0idGl0bGUtYm94Ij48aSBjbGFzcz0iZmFiIGZhLXdpbmRvd3MiPjwvaT4gVW5sb2NrIEhvc3RzIDwvZGl2Pg0KICAgICAgICA8ZGl2Pg0KICAgICAgICAgIDxidXR0b24gY2xhc3M9ImRyb3BidG5wYXJhbWV0ZXJzLXdpbmRvd3MiIG9uY2xpY2s9InNob3dQYXJhbWV0ZXIoJ3VuaXF1ZUlEJykiPiBQYXJhbWV0ZXJzIDwvYnV0dG9uPg0KICAgICAgICAgIDxkaXYgaWQ9dW5pcXVlSUQgY2xhc3M9ImRyb3Bkb3duLWNvbnRlbnQtcGFyYW1ldGVycyI+DQogICAgICAgICAgICA8ZGl2IGNsYXNzPSJib3giPg0KICAgICAgICAgICAgICA8cD5Ib3N0czwvcD4NCiAgICAgICAgICAgICAgPGlucHV0IHR5cGU9InRleHQiIHBsYWNlaG9sZGVyPSJob3N0MTpob3N0MiIgZGYtaG9zdF9uYW1lcz4NCiAgICAgICAgICAgIDwvZGl2Pg0KICAgICAgICAgICAgPGRpdiBjbGFzcz0iYm94Ij4NCiAgICAgICAgICAgICAgPHA+VXNlcjwvcD4NCiAgICAgICAgICAgICAgPGlucHV0IHR5cGU9InRleHQiIHBsYWNlaG9sZGVyPSJqb24iIGRmLXVzZXJfbmFtZT4NCiAgICAgICAgICAgIDwvZGl2Pg0KICAgICAgICAgIDwvZGl2Pg0KICAgICAgICA8L2Rpdj4NCiAgICAgIDwvZGl2Pg==','/home/sam/',1,1,NULL,NULL),(8,'installing_procdump_on_windows_host.yaml','installing_procdump_windows_host','Install Procdump on Hosts','PGRpdj4KICAgICAgICA8ZGl2IGNsYXNzPSJ0aXRsZS1ib3giPjxpIGNsYXNzPSJmYWIgZmEtd2luZG93cyI+PC9pPiBJbnN0YWxsIFByb2NkdW1wIDwvZGl2PgogICAgICAgIDxkaXY+CiAgICAgICAgICA8YnV0dG9uIGNsYXNzPSJkcm9wYnRucGFyYW1ldGVycy13aW5kb3dzIiBvbmNsaWNrPSJzaG93UGFyYW1ldGVyKCd1bmlxdWVJRCcpIj4gUGFyYW1ldGVycyA8L2J1dHRvbj4KICAgICAgICAgIDxkaXYgaWQ9dW5pcXVlSUQgY2xhc3M9ImRyb3Bkb3duLWNvbnRlbnQtcGFyYW1ldGVycyI+CiAgICAgICAgICAgIDxkaXYgY2xhc3M9ImJveCI+CiAgICAgICAgICAgICAgPHA+SG9zdHM8L3A+CiAgICAgICAgICAgICAgPGlucHV0IHR5cGU9InRleHQiIHBsYWNlaG9sZGVyPSJob3N0MTpob3N0MiIgZGYtaG9zdF9uYW1lcz4KICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICA8L2Rpdj4KICAgICAgICA8L2Rpdj4KICAgICAgPC9kaXY+','/home/sam/',1,1,NULL,NULL),(9,'process_dump_windows.yaml','process_dump_windows','Process Dump','PGRpdj4KICAgICAgICA8ZGl2IGNsYXNzPSJ0aXRsZS1ib3giPjxpIGNsYXNzPSJmYWIgZmEtd2luZG93cyI+PC9pPiBQcm9jZXNzIER1bXAgPC9kaXY+CiAgICAgICAgPGRpdj4KICAgICAgICAgIDxidXR0b24gY2xhc3M9ImRyb3BidG5wYXJhbWV0ZXJzLXdpbmRvd3MiIG9uY2xpY2s9InNob3dQYXJhbWV0ZXIoJ3VuaXF1ZUlEJykiPiBQYXJhbWV0ZXJzIDwvYnV0dG9uPgogICAgICAgICAgPGRpdiBpZD11bmlxdWVJRCBjbGFzcz0iZHJvcGRvd24tY29udGVudC1wYXJhbWV0ZXJzIj4KICAgICAgICAgICAgPGRpdiBjbGFzcz0iYm94Ij4KICAgICAgICAgICAgICA8cD5Ib3N0czwvcD4KICAgICAgICAgICAgICA8aW5wdXQgdHlwZT0idGV4dCIgcGxhY2Vob2xkZXI9Imhvc3QxOmhvc3QyIiBkZi1ob3N0X25hbWVzPgogICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgPGRpdiBjbGFzcz0iYm94Ij4KICAgICAgICAgICAgICA8cD5Qcm9jZXNzIElEPC9wPgogICAgICAgICAgICAgIDxpbnB1dCB0eXBlPSJ0ZXh0IiBwbGFjZWhvbGRlcj0iMjA2OSIgZGYtcHJvY2Vzc19pZD4KICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICA8L2Rpdj4KICAgICAgICA8L2Rpdj4KICAgICAgPC9kaXY+','/home/sam/',1,1,NULL,NULL);
/*!40000 ALTER TABLE `windows_playbooks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-01 11:22:55
