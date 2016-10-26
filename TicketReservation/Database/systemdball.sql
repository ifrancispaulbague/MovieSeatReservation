CREATE DATABASE  IF NOT EXISTS `systemdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `systemdb`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: systemdb
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `movies_id` varchar(11) NOT NULL,
  `movies_title` varchar(45) NOT NULL,
  `movies_image` longblob,
  `movies_price` decimal(10,2) NOT NULL,
  `image_size` varchar(45) DEFAULT NULL,
  `cinema` int(1) DEFAULT NULL,
  PRIMARY KEY (`movies_id`),
  UNIQUE KEY `movies_id_UNIQUE` (`movies_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES ('C10001','The Zero Theorem','�\��\�\0JFIF\0\0\0\0\0�\�\0C\0		$-!$3-663-339BTE9<N?33HcHNWW]]]9EflfZlTZ]Z�\�\0C##F((F�dUd���������������������������������������������������\��\0\0\0\0\0\0\0\0\0\0	\n\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\0\0\0\0\0\0\0	\n\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\0\0�\0o\0�\�\0\0\0?\0\�\�STJCI*�uJ\�.\�x\�_�K@�\�Ģ#�\Zd��,��E�\�\�ܮ\�q(��:u�Kw)�>c�\\\�n;i�\�_��@��nJ�e7�D�\Z\�g~\���D}NQ{\�\�H\�?Z�u��V�ŉs��\�&�T\rIQ\�6I����X���\��ŵN7O ��\�v!�\�\��M��\'\�;\�\�C�z�\�\�\\v)\�\�\�s��\������-}���s�ƹ��=�%��7<\�\�\�\"P����@>��\'���Bċ���\�F܎\�ǋ{h�\�	E��~\�\rű\�\���.Wr��\��\�\�\"*\�\�.\�\�\�?҂�6\���-\�R�|<lQ��b�;\"��s7��ȋU��>_|Ӱ�\�f\�\�3h�\�	�Y(TM\'Q��㎿�d2o�\�Q�\�%6\���7���\'��\nV-$\�E\�>\�r\'\��\���\�8��\�\�q��\�\0ا`yy�\�\� Լn<MO��J�tM��c)�5\�i.\�¹ê틞H\���c�$%���\�\�o7lE\�\\_z֝�-D���\��y�9��\�o\�F�\�2�~Z E{\\�\'iG|¶G#\'�B��r�\�d��\�zdsYi-��W#gITU$D\�\�[��M=e�\�l\�.\�!��\�R\�cfڹ�&�7\�P\��W\�Bf���\�ժ\�\��\0\�!m�\0t\����ɓisX�\�4\"\�\�$�\��8?�K�\�JwW+�\r��\��^7?z,j�ʲ\�6��\�\�?u�4Rb	6��}�\�S�y��F\���\��5I#�R�\��p����\�4�4Mj:\�\�\�f�9\�8\�t�*ȶ\�v�	�U\�&\�#W�ѵ9_I���Iແ\n\�,�Dq\'�\�f�T��Eh�\0<\��\�c�kK��\�\�\�h�f\�۝�\�\�\�q\�Ҟ\��hr�ֶ\Z�\�\�\�Ĳ��\�5�e\�\�e8\�hv��,m�\�%O�\�\�gq�\�n\�Z6��6�f�܏���=kE+����|`�\��k[M�T\�s\�\�j\�\�\�|�\�9�G\�\�wz\�m\06\0��\����Ti�\�Ɔ�\�\�웋I\�Q9p�\�\���5��\�M��\�=R�+\�ə:�j��%\�\�\�\\�[��i�ix�F��f�/\�᷑��%K\�\�\�<WE>�*%\�{\��?��\�d�V؀$<Fq�f�!?ݩ��z\�\�\�\�;y6\�l\�a^M�T�ԙ����x�\�V�\���9J�J!�\���\�\�)Ũ�\\\�X��U\ZC�2S�\�#�e�mb[8\�!s8I�\��\�\�~f�N�<�\�F�͝��6�\�s�\�\�#�Mj˖�\�Wl�g���\�c85ԕ\�\�À~\�\��?{�*/��w\�e�\�\�\�G��w\�I;\�gI\�(Ѿm:ѳ\�\�C�\0�T\�\�t\�z_\�\�\�Y\�\"M��\�WL���ؙ{�&F\�}�\�8�d\�\�`�K���t.iw\"�\�;c�k&AK\���4\�]\�S}�/_͡\�q\\��y\n\�K/ι*Emsh\�b�\�5i�\�M\�\'�\�Ė\�z\�MUd�\\�����ּ�K�K%ŉ\�1\�q\�j��J��Ul\�\�\��U�FƝ\�\�\�A<1X+\�9��\�kls\�\�/�F\�\�	\"ly\�r�CV}1��H\�ˌ\�\�\�j3�Ӿ\�\�{4�\��ذf�9\�\��L,S\�<�h\�Y\�\�q8\�\'f\�Vg+<dɏ~ՙ\��M7\�\�\�o)`BZ|\�t\�?kD��3N\�\�.�0�.&I	\�6�\�R�L̊ٯ�8㓊�.fj�����/��K[�Dv��%�\�\��O���G>\�\�\�Ҁx\���T\�s���dW��%FW�\"*h���wE\�\�	J�`\�&џ\��\�VԞ�8\�$�\rFf\�;d�,\�\�աk4s\�D6R�Ku:V+�5\��դ[\��8\�\��X�n�\�\�\�o�\�ҕO�#\�\�vxϔI���V\���MO$\�i�ݩ>I���\0\�?�iMu�3\�\��48�_��\0Z���{\�bY>�\0k�w�ⴇ��e�Y$Q�r\"\��0{�[E��К�>R)\0`�sU[\��.i�� BF޺�\�\�\�yE�E\"\��*�\�\�Ye(�y6��n3�\��fМZhƃK{)d\rU	2�\�}{U�\�Ɩ��Em8{�J\\r���pF\��\�\�M;�w\�\�\�>\�f�\�Hr\�-��8\�\�?^(�\�c)+7\Z\ni�#FX��wː�\0\rh��N\�#�U_�z��Gm�&�nf�9-\n\�B\�ij���\�5�9�\�Y�.��IM˸u/�T)=�ҢR\�\�\�\�|A�\�\�\�2��H\Z8���\�9\�\�Q\"�\�Ǎ^\�m���X�ɪ\�vm/��HCI#�A�29�h\�Ժu4�>ŭ\�-\�<�\�H|\�\�\�GR�\�\�9�T�\�]g\�\�RnHe�\�%*.��c\�\�\�\�\�tS\��[{�\�M�\��jW`�\��z��kϱ)�j�d��5��d�����`pT7\0g�Z\Z�I����{�\���*\�,�,�\�`7<��\�\�;\�h����w�>�{�}���\�\�\�\�\�9\��\�\�\�^\�蹪j�\�V6q\�dv\���<���\0!\�[%L\�vdk\"Ah�����\02�\�+5�6���\�\�\�+D��Q����W@`�\�N?:\�?r\�V�y���\�\�=�qg�=�!�9\�ޓm\�\�H\����\�\r\�Ew�w��a�I\��\�P\�J\�\�GQk\���֓<g\�!;�#�)�n��[\\�\�fތ�$��\�=iGdJ�i�_�?k�ȏ\�;|\�e��6�ҭ�Ϧ\�N*i\�hj� �\�IoW�\�~\�EܞO#�J\�vz�M��*js\�L��\��Ƀ\0\�$\��&\�:T\�z��d:|*\�V\�|,�2���Á�\�1����\��c��!�ݷ�\�F�ʑ7�8�i;\�\\ѫ\�_�\�\�S\�a\ZȬK<�������\�mY�*��J\�\�\�\�\�76@\�j�Wan9��Wl�\��.Z��<r�V\�j�Q(t\�%a�1\�ֺmk�Jֲ*j�[\�a�\�M���a\��7JϛS5����Z=�����,�\�Z��G`}�Ub4��\��S\\[\��M>VԀ�~E\�=��\�Ȩ�[�υ�k���I�Z��\0\�\�R�¢�_\�5-�y \�w\�\��[7�FVM\�\�?A\�޵��-nq͠\�\�޻Gm$��\�QK�	6�\'\�B\rݚڝݎ�s$2�ms0<I9�A���w\�\�)ӌړCn/R�$��s۹淗�8\�\�\��9J\�\�J���ĩ>��n\�$%\�s!���1ǧ<RU�\�EYX{��\�\�U&\�\�>BĦB	\�\�Wc�d�ŝ>\�c=�b�S�`B%��\�q\�)r6֧L���h_\�+�T�i�B���>8ǵj�<\�8JI�oi\�&���\�1�\�CHF\�z�3\�R�#�\�N����eoe�\�&[X�np\�\�\�\�_j禝�c�{~#Ӂ\�\�\�\0�\�K�\�\�_\�Z�멜\�\�|�W��\�+T&/\�\�k�Y�\��\0_AZSm+�M&�3�\�V\�Z��Ĳ<S�.n�\�Ozr�W}N)KDt�����Ck2-��\��Z\�x\�JqKF��\�\�GK�F\���LR�\�8\�##\��\�V6\�H\�G��[��P]HX\�	Ls޺RgW$��[x^+�\�;�\Z\�|�\�\��>����\�I\�\�\�^�p���Z[\�#\�����c�K��+sM\�#�T��bI�en�Y\r��LU$��\n1�ʵ2\��A��\�G\�4X\�r�\�Vw�T\�ɧIq��ZC��U�c�R����Mw\�\�=�[� 7?zY@@}�֙�)\�\�\�\�Ӧv�\�8\�F\�j�����\�=\�J\�Gc�\�r\��\�ƌ�<��Fĳ\��>���c\�hL�Ȯ�\'�\��L,\�%�\�n\�2\�\�ڷQ�f\�\rNf{׺�Wwfk�KH\�$��5[	��\�\�ddb\Z3�GcM\�S\�\�O�Z�\������f����\�kw~8�F\�\�H�\�.>a�\�8\�+�3w�6\�8�Վ�t\0f\��Ƅ.y<\�ltG=X)���u\"q3��\0\�ZX\�\�w3Z>Z/+#�9 ұ�d�\�\�i��a�y=\�H����m�J�\�+�\�xJ�[l�՚,\�|A\�n\�\�7`\�m\�a�\�m�\�\rN:�Q]VF`d�\���\�h\�9U�:�}J\�[KS:N��A�����y\�븞国Jՠ(���\�ǂDb�tg=�056��\�!�\�WmB/\�(Kn�\�\��M��:\�\�)P�L�b�rri\�\�\�\�]ܪM+#:�\��OVLֈپ\�tɌr)��\�9W�\�9�>�I=\n��%�_�\0\�\�p�Sd�S��\�[\'�V\"�\\��?,\��>aM*q�\�uƫ.�G�#0^�~Z{�`��8\��8��b�&�R~�Qa\�\0r���`�b\�W9��?\�jk[k�pG����JDv\�+\r\� ��\�\�\��B@Sk�7�9/@��7�=;��{���d鶀;\�\�\�J\���=�\0^�(\�h\'�->\�Ww\�\���jyJ3\�.E\�Ԯɓ+��\�;�K����\�4\�0\n���\n\�\�\�H.F\Z�\�ߊ`g?Z@9�2`�1\�;\0�M��F���o�����E#�g\� ��:��1n�94uV�)#��,���Z��}P��v�ē�T�\r�)\�\� \�&h�\�\�f��\�N*\�I�g��,pG�K$��d>P\�?/���w\�h�}?I��{�`�x��aQ\�yy�I-\�8\�\�ڒ�\�L��\�\� ��\�{u��*O\�6�@�x\�6���o\�x�Xa�\�\�\�\n$�\�H\�\'�\�\��Xl���g�\�pZWH���\�ႜ\'\�<\0=\�ݽ���;iwc$\��\\G�t��\�8���=G?R\�\�2\���B\�B\�\0	\r $\�)�Cȥ`���(��mˣ\r:\�Z\�]ؓ|�\�~nUw\�;��O\�T\�]@,\�}#M�\�\rB\��ur\�],@�\�:�\�\��\�n��B\�k\�J)b��.�\�Ӄ\�)\�ֈEK_�Wַ3]��\�Wg�ޔ\�P\�\�,n��٦\�\�D����*:o%X�\�8��Z��e�\0�y.g���k�U\Z5���]��f#��\�Oq�L\��\�@	���\Z�	\�P;\n$-ӟa\��\�\�?�c\�?�\0uZw\�Ԋ-%.\�f�\��h�e8\�ۜ{VN\�d�OčM� a[C�u��9\�z�T8\�B?\�K9\�\����3�l5�)\�C �+�\�=0h\�}��\�m\�\�<��Xg�v�D�XT\r\�pr	\�\�K���O�:a��Ar��\"!-��\�$6[��<{\�\��&\�w�{�mD\���|�\0a\�c�22ƚ�\�g!���O>ըT�PG�\�Pg43@\�\0�ofm��\�-\�8�D��\�2؏��\0�`���O�\�@\nC(\�w\�J\0�>l�\�$s@\n�I\�\��\��R��I	� �`[0\�͘\� �h\0\'\�\�l\�\0�6�h\��F0�Wpv�%��#�  ��ݙz�`A��\r�\�\���^0M�\��:�ƫ�mNg�\�M�+o\�\�\��$?\�o����u:\��gc��S9�\�\���\�6BD�\�$bV_,��zU\��+��\�mcܫ\�p�\�B$��&\0\'\�\��b��O˲��Qc��s�\'^(�,2�\�@\�>\�)Z\0�0:�\��ȹ���\�B�@�+�\0#�\�N|�\�z�4\0�z%ޤ&\�\�P\0P��Q�`\\p�r��;�7J[c��\�D�*\"cN\�P\��4Z+#6�_��E̗WR�f�姓���J\� !����s�\0_��΀\�;}:\0O4\��s�\0(\0��\n\0(�\�',200.00,'5827',NULL),('C20001','Mr. Robot','�\��\�\0JFIF\0\0\0\0\0�\�\0C\0		$-!$3-663-339BTE9<N?33HcHNWW]]]9EflfZlTZ]Z�\�\0C##F((F�dUd����������������������������������������������������\0\0�\0w\"\0�\�\0~\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1A\"Qaq2����B\�#$3RTb\��4DSr�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0?\0\�\r�\"\r�A�Fخ�\��\���kt�\0\�v�ߙVe\���\�D�a��39\�4�\�B!�����\�̱_�\r�z	\0PT``2�\�#����\�T\��|,6)�%\�ӡ\�i����,�8�d\�0s\�AVbRH\�\�$қ=��>�3� t>�ܜ�\�\�Z\�׽���R���p�N����:�\�Ʌ\�m9\�\�t��\�\�\�(\�Oo\�굟�u�\�\�y_Qr\�9\�\�\�벊��\�\�\ZM,M��\�\�\r�f{\�\�Ty,��+\���!�yRDc�H�\�Hخ��]HصAY�������9\�\�;����߈e�\�O\�s����O\�=\�\�%�u�s�\�\���A�U\�3D\�)�P��@\�\�˦�哌V�\�\�֘\�C,N\���7\��;�l�\�Oplزf\�\�F0 2�e�٠��QW)�z!3\\�\�Ңn�Gx��\��qC,2�\�$ُk%�-��\�\r�e��H`&LѼ�����\r&c4ձI6	y�\�b�(}�($\�i�\r�\�\�!s9�3#\'\�Qw\r\0\\[�ۛ\�\�[OO%%\'\n���y\�]UPbp��f\��]�����IdϚ�X?���Tǈ\��\���\�c7�\��f��9T\�\�Kl\�u4|��s�T�|�!5;��\�Y\�\�N��UF`ak�aHbI��\��F\� ��$E� ��)YӶ+a�悬p\�#R�\��OϦՏ �[4Zh��\�\�\�7*F��,F���D7�\��\�i�Xm\�\�Ħ�<�w,߼ob��\�k�=4�N\�s,2�6�@g�ve.s�F��\�M\�}�RI�4�\�\�\r�y[R\��C-tc\�e���e���($�\�w�:i}2H|l�Z�c��ce\�@\�tO�5�ɿ�����q�\�K)a�U�\�o�@q\�us\�$3��x�2���U�k�Hd�G9�\�,���78\�\�\\\��p|F�Do�\�s�\�\�nM\�ӿ�N�;Fg�C\�ܩ�W,IH`I�¤l?4�\Z�2��\�튖��<O\�ˁ;\�C��\�J��\�c�B\�wB逵L2\\�B\�ss�|Jl�Q��iσa��\�\�+X\�l�#�A��\��G�����<\�\���9\�b�tj�-!,\� \�\�\�\��\�\�w�^[uq�e�\\:�>�Mr���X�H \��\Z{��t�XrH�m��\�\r_iT\\C�TJc�h\�\rF�\�\��\�)��\�:�\r�����i�vV�!��$\��n�¸�b�h�i\�\�ϖ&՜�oe\�X��}>H:�8\�\Z\�HR5ٮFIXs�\'ഝ\�#\�T&�����q�ؘ\�쒓\"H,�4\�3}��i?\��\�\�T�b���\�PT0o$O\�TW��uO\�2\�\'qLӸh\"�\�f\�U�pD���O�Ե\�\0��\r�:րm�\�S��9�N�j\�\�\'��14w���\�\�G\n\�����!\�\�33��F�d\�;�\�T�&�{H䴛��\�\�^�\�\�l��\�O�\0}�M�د=cQ[��穨��ذ4S�JZ�x.��z�~�\�/\�[Ŗ*���2ԐXk,� \�b4;��,��\�f��1\�0\'p\�|��\Z\�<�OQ\��U=v.�z�j�\r\�X�\�N��L�\�\0�\"p�A�	c�08V\�\�\�À;\�`\�M\�$oAĶ2�6�|�O\�8o\0��uI4�$d˚\�\\\�qG���s��\�\�u�_A-;��U$a\��\0P\�\'\�\�G��|KMK2�)/2�K\�A�\\\�E��\�\�Y]�\�\"�S�##o�@\"h>k�\�\Z/�\���\0��\�\�\�j�e	�}ۃR��La\�z\��VQ��˙$r(\�1�zIe�F\�\�Xo,�\�n)\�6\�nty\�D\�\�MEޱ�;.?\�*��\Zdkc��أ�\��Ĥ�J\�ʢB34(Ԍ9�Bܥ\�zj\�N\�;PTF\�s�\��B�9�\�\Z	f�&˧ƻY�°9�n|���?\�;/0\�#\�q\�uC���M�8\�\"��5z�8\��@\�\�\��*�l��V)�\�\�Kf�\�@n٣ЄG�:CZ,#\0x(�u\\\�\�ĀWE\�\�Ҍ�\�6+��\�\���>e<���|�\�:,ƪV\�t���I�鎥\"�\�\nd��m�G\�m�\�<_܂�R5\�ς Cn�7-��\�v�{!y@�1Mk�kl�8\�{�\"l�\�\�\�$\�(����=Ӣ��\Z��M����8͔Nm�\�S_7�\�\���\�^9U�a{F��\�\�\�R\\��\�I�\���(���ʓ�\�lSY8v_C\�)ò�[��R��l\�\�\�S�\�M�h,�5\�S8\�\�3�@�+�D~h�6huЍ�\"��\�x$�Ф��mӔȦئ!M�0@��y�IK�I�\�\�bht�����D\�\�#��\"��{�D��A�i\�W4kN\�3{;m�\0���ajB��\��}d�,\�Gk\�\�{]U�L\�\��c�$$/۪hQ	�@2\nK]\�\�=�Qmt$\"���D�_�\�',250.00,'2585',NULL),('C30001','Source Code','�\��\�\0JFIF\0\0\0\0\0�\�\0C\0		$-!$3-663-339BTE9<N?33HcHNWW]]]9EflfZlTZ]Z�\�\0C##F((F�dUd����������������������������������������������������\0\0�\0o\"\0�\�\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1\"AQa2Bq�#���$3CR\��4�%Eb��\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1�\�\0\0\0?\0ζz2���.\�˰�T\�\r��\�\Zj)�Vy�n䆲,<��O5s�-Ɲ*,-���Y\�^Sh\�\�cR~�ȟi\�\rk\�\�݈���|]��2Ŋ���Z�\�ݑ-��G\��\�سZ:��@Y\�W�ѣ�|\�\�Ͳo�j݄��\�2>\�l<�<�,\�\��GO9�yϦ(���.�W�Kb(\��\�ʠ��rI:m��7�9D\�3p�~`:B�`)���ub�m�m���`�2,�Eֱ\�\�\�.m.��d�k�\"�H���jZ��ӷ�řG\�\"0\�\�}�=,=�\�\"\�Q�\�\�7��I߯\�j\�Y��\n\nGTz� ��\�j.-{����MM%8nզ[5\�e6;o\�M\�\�U����\�6#\0\��?��K)\�\�#|Y\�K\�UJ���8�utPZ2��ߺ>�|�\�xJ�>�jc��HM����<fh=�fÀ�i\�\�)�6�\�RQ\�V�P�\Z�`rt\�\�\�6�\�\�5�\�X�����Ҙ�p/�o\�\�h�{��W]\�\�&7\0�|*c`��C���1k\�y8�@�\�`9��D��8\�g\�e\�Ju5�\� \�O\�i)��V��\�ŶVf��U|�V�����`<��(xu5���fp	;c�r�i\�z��\�p]\�}OKo{�1�\�iki%v��9(�<�=M\�g\'�\�\�@qW\ZB\�/�d6\�\�l\"�)0Bfr�_b����\�g�zV��M9�\�`�\�\�!S+M,�U-��\�<��\�l\�&\�#\�\�c\n�o\�~�\'\��\0<i\�3uh�}�Ac0\�\����9��N��+�\��H�6�� \�\�U\�R�v\�\n��%n:�/�ug;�b��\"\��\�\�Xݖ8�b/�G��\�mBE+\�{EGH�F,��e�,OR@�\�ŗk�@�0��M`Z\�Oþ\Ze�r\�w�=��\n���\\�ZئKY4\�1�f<cX,[q印\�gTx�D��c7����M���N\'\��}\��Ǵٷi+\�\�X\\a��\�ˡ��E./|jds�j��#�J��%O\�\�I\�\�lƲ-QǙ\�eͥi\�Q\�\�yT5\r\�#[\r�Qp\�\�\�0�~Z�,jͬ� \ZO�c=\����R��\�7^\�3��\�#\�=1\�{\n��Ay54=0T\�c\�Df��������G\�?\�7\0�8\�1\�\�d\\5B\�K�~\�\��𶿎R��i��O\�/��\�SYIh�^\�t/�T�M.f{�:<F\�a+\��\�k�ֆ6��\�\��7q\�\�=�f\�$�r�<F�$$\�>�ӧ��hU�?`��5�\ZQ@U�\�#��nj���,�:gv#\"\���q�\�ʪ�\�ĕS�µ\�\�=�/\�W7S�ØCi7��Uٙ\�)UbQ�����\�K3 ��\0��\��\�2\�\�83Eh�Ø\�p}Ɉ+\�æ\�df\�D��S�71\�輷�:�\�k\�b#���}S.b�˖\�|�\���44Y��\�@\�T,Q�\�\ra�oG�i H7V��\��O�3jɥ\�P�\�\�#\��\�<�3(\�O�5	��� n�CX\0m��\��\�i!�\�\�be�[\n�\�\�\�C36�\�\�\�k�kPޤ\�G�S\�*�S�0�e7:�\�\��\� ���ݺ�b�\�-YX\�Y� et\�c��:\�+&�����9��ωr�\r��#j\�ڏ�\�<��k�3��҆7\�\�y�x`��\�<�lÿ\�V\'�\�z�Ԥ �\�|N\�;��\'y��\0;_j�/Z�b�ڄ\���t\�\�\n \�3�PZ�Re\'�1.=z\�q��,�\�S\r\�\�,��~X�j=]Μ���\���~s\�\����@]������i\�\�~��C�F:\"\�8YV�\"�\�\�Q*�h���?5�H��Hx�����=A�\��M�\\\�\�Њf��\�X�`:\������H�I[	Q�_�\�d\��\��P\�<d�.[�*82%7~Jh͋\�>x��c~��7�ܿL j�b�CK\'\�3e��\�\ZU�\�Q,k$\�.�F\�\0|L4�D\�[�2Қ~\�\��\�\r�\�\r�1�\��Qj*\�&e�u��w�q\�\�ڵ�}\�^\�l#\�,�J$�\�NMJ��SbO��\��w��5\�q�]v\�~�8\�o\�\��\�5�v鉍ieTuҴ�\�\�?@<�\�q\'\�aQl\�:#x\\yK\��\�\�2�\�=\�`7Ǎ[��\�vV7\�ƥ\��\�3Jq�\'��\��^�\\�2F$UD\�7(�|?`��\�4\�\�\"\�=N_S��\\��R��\�yx]\�Cf�U\�K�`\�N#���A��+{\�ko�\�\�SJ�J@ j��غ\�\�O�\�Cg�\�p�\�ef7n�-�T	i���!{\�\�\�.\�\�H�+\�\rK\�:���r\�Pk���m��rir�\��\�t�؍�\0�v�h�b\�e\�l1\���2,ΞmJ��bIűe�T\\su�ҴSN\�\�\�9aZ\�@���4-\�\�.4MS\n�>	)\�\�k�_	ISMvU��	\��>��2�>$\�@\�*Z(ޜ�\��_\�w}��Y�\�_BPH�q\�\'z\�\�\�\�?��H�AY�Hop�:\���\'7Zl������0,�֌�?0�\�sS���f��;v�K�\�\�뇎��\�p�|�\�,PMj5\�]R��\��\0�EDmw{��Z\�0�h\�룚�I��˕ec/0�\�o\�\0U���X\�v�\�-o#�\�gj\�\���*|\�L\��j\�؂\�\�H�\��f\ZA\�J?g�L�6\��;u��3�\��հ+\�\���yD|?K�J�:)\�\�/G\�\�\"�\�4�\�\�6�\\+\�\��0ƚ�x�@\�!�Q\��\"OȮ1\�6��ԑ�x\�iH\01a��w��?d�J;R�Y<@��y�\�ia0���B�2�6�+�V\�Rfu^\����\�|izd���܍��E=rC:��[\�\�bk1;}^|vqis�9�\�\�Ċ�9�睵��\�N+n\Z΄������\�\���\�+\�\�s�i�pE�\�֯!H����r\�̜w��\�ZޣL��\�r�\�h��ʡ���\��\�Tf��&�hg���݀��ɚ\�d\��\�\r\�Q\�j�\��q\�\�Y��)�U�\�\��\�\'�\�\�U\�N�\�P��_OGey HH���\�o\�c;K�͞�uм�\�\�V\��l8F�0m(�~ȶXVM�\�Jl�G=TY$6\�\�Ӯ��#S�Sd\�\�1�\�֍��$�ȳ,�0�&ܕno���\�\�͓��o�(�\0�	�PGČ\�T�|���\���\���� ��2s�X�����o\�\�\�\�\�S�yV(\�T42XaMnO\�\�rfU׸�W;P��\�cS�qLy\�DR U\�TrI\0^\�J-�\�\�\�&(�A\���\�\�ffJ_�$o\�\�}1͞\�\�Ѭz�����e)�T\�ȿ7X\�o\�\�\\D˨\����攞���\�N��7�ij\"�h\�v\�$h��9Ե����\�\�W�\�uO��KD�푴�Q+\��nc\\l\�C�r\�ʱ\�K)\�K�\�\�)[\rv7\�\�m�\�Y+˺��\��8�YYM\�kUES�\0O�K*�IA���\�^\�1fe��A\nE5dh\�$ȫ,n�8v�Pm���\\S �&}\��\��F\�i	\�税�ȹ�(�\'\��\�im_�ؠ\n\�\�xJ�\0T�E�J��nEצ	�2\�\��!��ǯ\�d)\���:��\�+\�3\0\�\�9�;yi��Z7\��.lҭM4�����\�+}G\�]&wJ�f���|\�Ո/��\���x^��\�{F`\ZNU4�1<��N�_�\�\�4��\�p\�Ao�\�0�_�q\�մ\�4��P�\�X�1�\�ac���\�t\�V\�ύ\��kmQ\�.M\�9�hU\���\\�4��\�-ȿ�ǖ	�����5��E�\�ea�����UEWG/\�CV\� j\�tj%ݴ5���6�#�\\v\�+Չ�_-\nGM�\�\�5Dr-�S0`\�:qװ\�GBs 9Kr[|P\�_k5M\�<F���\�\��;\��2X\�E=2GB����{\���\�i��H\�X�p���\�t{\�[[Q\�R\�-*�%dK\0�\0T*�\�j}�K��p#��\�h�\�zs�i�V\�\�թ\Z\�\�m�\��FY\"0{ɀ�1\�\���pı\�d����S�(�4\�4�L]4奊��j��Xˣ\�T\'�\�\�3G�yqa+r>��\�\�0��iџAi\�S\�\�\�\�Fz�Д\�\��+z`WV�c}�\��&EC�1�}Ӿ��5�\�^�cߦ\n�x�㪥�\\lr8��lֽ��\�Gċ�Ә:i�����Vm\��\�O\�\rN�\�\�<�{lw�l���{�\rź\��F\�\�\����=�V�P<�\�\r��\�G�\��\�\�Rv(�\�6v�L@�|�\�\Z�TH$\�\�AӨIs\�\�#ؒK�L�W�Ǘ��5D\�7�U4���\',J�VX��s�\n/o���D6�$�\�n\�<k��^\�eɱ\�o|JH;:>���{\�\\��n.\�|�5c\�\�-\�H\���K`E֥�q�rAo,B({e\�*X0_\�\�13-�F���\Z!ס?#�e!���;�\�:\0ۦ+9��\�`^�\�\�\�\�\0�F\��lAo\�%�X\�\0\�A=\�\�\�.1.\�̥ul~CN��`?�\�',150.00,'4481',NULL);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_mapping`
--

DROP TABLE IF EXISTS `ms_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_mapping` (
  `mapping_id` int(11) NOT NULL AUTO_INCREMENT,
  `movies_id` varchar(11) NOT NULL,
  `screening_id` int(11) NOT NULL,
  PRIMARY KEY (`mapping_id`,`movies_id`,`screening_id`),
  KEY `movies_id_idx` (`movies_id`),
  KEY `screening_id_idx` (`screening_id`),
  CONSTRAINT `movies_id` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`movies_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `screening_id` FOREIGN KEY (`screening_id`) REFERENCES `screening` (`screening_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_mapping`
--

LOCK TABLES `ms_mapping` WRITE;
/*!40000 ALTER TABLE `ms_mapping` DISABLE KEYS */;
INSERT INTO `ms_mapping` VALUES (1,'C10001',1),(4,'C30001',1),(2,'C10001',2),(3,'C20001',2);
/*!40000 ALTER TABLE `ms_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservations` (
  `reservation_id` int(11) NOT NULL AUTO_INCREMENT,
  `seat_id` varchar(3) NOT NULL,
  `reservation_status` tinyint(4) DEFAULT NULL,
  `r_mapping_id` int(11) NOT NULL,
  PRIMARY KEY (`reservation_id`,`seat_id`,`r_mapping_id`),
  KEY `mapping_id_idx` (`r_mapping_id`),
  CONSTRAINT `r_mapping_id` FOREIGN KEY (`r_mapping_id`) REFERENCES `ms_mapping` (`mapping_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `screening`
--

DROP TABLE IF EXISTS `screening`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `screening` (
  `screening_ID` int(11) NOT NULL AUTO_INCREMENT,
  `screening_sched` varchar(45) NOT NULL,
  PRIMARY KEY (`screening_ID`),
  UNIQUE KEY `screening_sched_UNIQUE` (`screening_sched`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screening`
--

LOCK TABLES `screening` WRITE;
/*!40000 ALTER TABLE `screening` DISABLE KEYS */;
INSERT INTO `screening` VALUES (1,'11/01/2016 10:30-12:30'),(2,'11/01/2016 13:00-15:00');
/*!40000 ALTER TABLE `screening` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_amount` decimal(10,2) DEFAULT NULL,
  `transaction_seats` int(10) DEFAULT NULL,
  `transaction_date` datetime DEFAULT NULL,
  `t_mapping_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `mapping_id_idx` (`t_mapping_id`),
  KEY `t_mapping_id_idx` (`t_mapping_id`),
  CONSTRAINT `t_mapping_id` FOREIGN KEY (`t_mapping_id`) REFERENCES `ms_mapping` (`mapping_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-26 21:36:58
