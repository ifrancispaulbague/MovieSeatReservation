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
INSERT INTO `movies` VALUES ('C10001','The Zero Theorem','�\��\�\0JFIF\0\0\0\0\0�\�\0C\0		$-!$3-663-339BTE9<N?33HcHNWW]]]9EflfZlTZ]Z�\�\0C##F((F�dUd���������������������������������������������������\��\0\0\0\0\0\0\0\0\0\0	\n\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\0\0\0\0\0\0\0	\n\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\0\0\�\0�\0�\�\0\0\0?\0\�	⨂-�C\�\���\0J\n��!@@<Jb�*\�\�\�8�^}\�+�E�Ij��\�O�cs�\�\\��b�\�(X�\�񶢻\�\�@\�,e�|�\�\�C֐�\"�\nA\�x�+��b\�\�@\\�$�+��\��\�=����FOiF\�q���\0\Z\0�Tfp0	a�\0,�jHbf\���c;�LW�\0>�z@.\�a�9\�\�Wr�U\�\�#�\�8s�Mآݴ~ty\�Һa��b6!q\�qa�o\�;-a�\�\�\�L�w1\�U#\�8[�ȅ\�1\0�x�\0h~F�E-\�\�,Oqp\r�L\n@\�@ӌs�\��4�\�\�\�px�q\��t����G4\�m-\�C\�Ve�w\�\�dq�A\�ւY����ȣQh\�Nq�\r\�\0��}�\0N�c�\�t�]�[i^C>\�\�B0q\�\��1@\"=.\�NgK�\�R2\�а��G���\�L�ÑG\Z�,s��M�\�;\��4����\�W\�\�\�\�*\�\0]\�ʻ�q\�=Z+��[L�\�>S��\r�7t�ٵ�^}��\�{Œ0r\�\�\�@�f�Ӿ\�^~\�\'ʼ;�\�Q�:r9��9\�S\�\�lЗ?kRZ9\�9c�\�\��\0��Mr�Z��B)\n*>�qE�R��\�8A\��JZ�Ѵ\�\�\�\��\�9M\�\�.UcE�Ʒg\�W�su\�Odm\�\�	\�P�v�ʮW�cy($䞲�գ�d�K�`qVaf�\"k\�\�\�\�q@\�\�\�	�Sb\�F}AK\�\0\�`�X�M\"\�^\ZT�Ҡ\�A���O\"F\�c�.�\0}���?�VnFu��`\�\�:�ǘ�\���\�Q�3� �c\�l���oPң���\�c=�?4J%@��\�8\�Z\��\��\�f3\�c�~`��e�\rI�]�U��9\�rIϧnH��Qij8�\n\�;8����A\�\�9\��b��8�jZ�u$�UH\�\�\";��Mok���m\�߸�\�2�*�ϖ85=M]��-ɕ�d֨ᓸ�:g�h͖`\�^�*\��IN�\�ʙZ�&��\�Q��\��q�h\\ƶ�\���\�p(\�Lyf\�*�m\�g&ݑ\�\\��؍\�%�\0���\�\��E[Frr\��\"�\�sZ�ݘ\"֕\���\�]�\�n��=O��ɠ�y;\���B�eVl��*�Oci�٣��\�\�\��8#;��\�\��G����,<�J\�E6Eq\��l�t�����L)��I\�r�,���GnCuq���/\�3-�{`R%�R��I�\'\'��o	���W�n�%*I\�]pjJ\�\�;�<�\�rsޓ�\��V�\0my�!�hMl\�E�]u�Z�ږ\����w63�DK�.�ns\��uC����\�Z� \�6\�NAa�U\�S)\�\��\�\"[y��\�}����ZS�4\�\�|{\�\�\r<3�2�N�c�\��i\�z\�\'J\Z�\ZN���>S69�5�Moc���M��q\�[-&\�\�ң \\�\�\�\'ڹ\�\�t:�J�<\�\�SW2>?\�\�\�y�\��NH���jxn�&�wF�x \�\'��\�\�\�\�A��C\�nmc�]d�	mѓ\�ӟ�\�Mj\�\�5R*18?\�%Ww���MI\'vm\�n�=�\�N[�;\�M׫��r�\����\�6��������� �\�oJ��\�XY@\�g\�(��\�CRk+ư��H~\�H\���?�J4[�\"?(\��\�\�:�\�]�)�\�\�R&?.�\�H`�v���zꄣ\�\�4V��-\�v����e�s�vcn\�\��{=KO���;�\�X�g��\�\�kE\�w7�0��[�{�o\�I�A\�H{�<{\�!6\�\�j�G��ql\�\�`\�[�A\�2�z\��9�	��ڪ.\�\�j\�߇�0?�\�~lW$0�8!��rW2Mō\��Q�|T�y�#��*��u\"��ȭ�}g\�G��w�$_\�\�jD�X\�)Ph\�\�{�a�\Zf\Zvp\�\��pۮ��?GN?!K\�;�\�D\�<�\�l�(s�\0�ѧq�y~Cf�R�\�ڮ{\�\\��n\�E���M�,�6F��ݚf���IҞ�o\n\�\r�݃�:Cv�\��\"�&�\�ˏꚂ�h��/�,�n?�4\�\�\�ǫ�\�Ri�:[~�	c\��ܡ��ҕ��E\�\�m�M���/8\�H\�|���C\�\�^:�\�=\0\�O\�4�\�I�m\�[���/�m\�2OJ\�\�<�5�{��i�I\�\�֡��-���J\�o�\�y�4RKB��z\�9��0䊙loE�\�5i\�$�W\'\�.[͗\�f\�4eR6��r��b0\���\�\�U\'c	\"D��\�\�P��0!�Ui\�\�c(�;ˉ.B�,�\�&r�\0Ά���A%Њ��\�Ҵ&4�\0x���.s̱2�Q���ߌ����\�!��\�c\��Dm�\�wH�PM\��\�P��.��\'ޤt�ŕ�	\'\�\����*;\�-\�E�v!(\�2Æ����O��\�\�\"\�M2\�\�ܨ�T.[�Q\\\��^�\�$sn�)�)�\�\r5&�6QKb@�\�JIބ ?��Z\�+����Z+\�\�\Z�\��R��\�7f�*�\�q\�j\�Ų\r�\�\\#�5�c�pq�\�5��ol\�9�\�w��J})#J��w\�TBm��\0w�Q\�ѳ�xq<T\�G$�_\�0W\�+�q[ӓ��D\�Ěςm�XQ��VbO\�\Z�q�Dַ3N]Lu�\�\��\0z��n\�敬[\�\�\�=U�Ӟo[>�\�{X2���R�ߟ�\�L\�\'b\�\�\��\�\�\���@[i~�q�|�\�\�^ź&9<\�f�)�L��{\�w�:��e���t��\�.G\�]�\��\�\�h\��M������|���\\U��\�e!>\�階\�PՕ\����%�\�D3WN-�RXb�\�\'��\�ޚ�4�.*���\�N�Զ4[�D�\rp\�jd\�n\�Q-�2�Lҟ\�j\�(��\�n\�\�3R���E\�\�\�2�ׄa�\�ެ樋Zf���g8\�N\�n\��j\�\�\�j�\�\�4\�-��\�c8�\��>��z\�T��s���L9���\�pk��\�Z���\�aT�fU�Cf�}q\�\�\�\��\"���\Z�J�IS���jݡ��\�^\��k�|,�|H͆1\�\�n��\��)Gs�O\�6t��\�\�\��\�\�B\��\��\�q���⊲)�\�d�gʴ���\�\�\�~\�\"���9�\�O�5evL\�ӣ!!�\���6Tub����\�zְ\�hn�\"\�G\n�%A;G}\�V�\�Z2��$#\�S\�2{��Hk�������\�%�J�,�A\�㎘�٬!i\�]\�,�\�)Î\�M$kV\�\�A0�V-�\�����]\\[-%�nV\�~\��	\���*�\�3y�w4PH!yD�\�n��\�\���\�tF�����\'�\�\'RD9,3��$��Ԥ\�C\�R(-\�ъ:2��A��z�P҃\�\���n�qt\�KH7p;~t\�;�d6]Rxܮc\r�Ѐj\�V��̬W�R\�\�pxz�_&\�D\�g\�OP\�6\�W��\��\\J�d�f�wi\Zw\n��k/́�&(��2(\�Rx\�˟�iƥ���25��F\�\�̵���\Z�.gb%+\�T�\�Ws?�͸��\�pjb\�\�\�^�\r����\�C�̹T\\ �e>i\\�t[��̑D\�#8/\�1�U��ܿ�\�m�by\��$�l�Eژ\�;���M[̨��\�\�\\�:�\�\�VUm\�L�7�-\�QU�9+oV\�	,Gp1�Epخ{lux\�1\�\�-��\�*7\�`DP�\0(9`Fy<aif�FN���\�\�Qۘ1\�\0(�u\�\�מߍ%���x�Lw�mǅԫ4r#a�E�\�.�|�˙2Q�n\�\�\��f\�\\�\�\�%P9�z}3A�\�\���5��ե,\�Q\�\�jV\�\�pž\�;Qk��=N\�\�\��C�;D\��7g\�\�\��\�T\�e\�sͧ�2�Ko\����pc�T��\��-��Hd�ӳ^B�`֮\�\�\�˩r\��\��MP\��8\�0�\���v���^\�J=\�W�Y�\�\�\�~�\n�4�\�I���!Y\�	b�h�o��(��\�YZV�mE˛�sY\�\�!<j\�A\�BBd���y\�ڨ\�\�\�wQ�\���Ë�_JYR\�|\�\�<�\�?��UEY\�\�Nb��\�@\�yX�+o1ןJ�+�f�n���\�a\�\�e�#0hX��)\���8�N�EҚ\�\�qr|\�i\�/\�c]�*�\�\�ߊ%\�\�\�-ݤz�m�-euH�o�	\�\�w`�T\�\�טȂ\�\�R�,��Qq2���8�3[I\'�+��c}�\�\�\�\�&=��O�\�q\�{��\�j\�RRZm>-\�\�T5\�\�r\�\�l�<���j�\�r\����ta\�-\�\�ܱƥ;\r\�A\�%m\�T\\\�ݑx��O\"\�g\��36�\��\�CQ�Z�KzΛ�����\�\�x<�N\�g:�k\�Y\�D�ĢY$�)�H\�8\�\�z\�GH\�\�N\�+\�<�g�R\�\�\��\0�\�\�y\�i7�!\�\�\�=v\�\\j!�� �l\�&��\�\�\'gb[8�\�M��l+\0\�\�\�Ϗ���j\Z	-J���V��\�ީC:�`{R��� ��㉕\�\n�Z��\�?\�\�U���ʲ\�\"�Ԡ� Y�rӭ�U\�/G\�lj~(��kY$P�C#\��R;�*�6IX\��ۇ\�!a�\0/\�wz�\���S�04\�\����3�\0\�q\�WMǩR�\�-\r\")X\�1��3)�\�.\0\�OZ�)s&eZQ\�j����\�lP\�\�f\�UU\�5\�\�\�\�ܛ}�\�3L�ՠCr�\�|��c\���N��g�u:ot\�\�.\�\�Ɋ20c,\�\�g�U\�\Z�\�\r���u4����\�%e0(^:g\�\�,Sr\�`\�bˡ>�r�hGș*\�>3�\�j\�l�*\��3b\�C۪KK���D�X\�\�\\zT{\�C:�k\�1|;|��;\Z\�F!��Z*n\�ƼZ�D�\�\�\�pUO5���6sv�y��\"�n�&\��H4\�\�mBBF\�6\�\�`d�ֱnQ*1��u����\�أŽĪU<�09\�S\�+�N�\�\�\�|+,ژ�%5������K�T)&.Wb+���\�^2F���;�ƪ6﮴���\�[E��bܖI�\�=F~��=K��9�7\�P�,Nw�Gs�nt�w�.4x�cʆVa�AU9�Mf\��]\�\�n��}nl��YJ��k`��̀�GOBx��]ed��\�3<d\�\�kRH�<dnaI�xSW���Hm�a~a�v�\��\'�\�R�[\Z9%���\�\�D��\�%�n�,\�$\�1��\�W	6��YP��\�\�My�\0	|L�$��ɀĆ)��z\��Ur�݈T\�%̈���\�%tege�x\�s�\�C�Z#��缤R���D��1&\�\�˒:�\�Z�\�P�\�i\�k���(\n\�%\\s\\�Ј+>b�\�y�>Dq����\��\�~]��5U��N)�:��5�\�\�ZZ\�\�\��\�&\\��{qҦrnOBjC�!Gĥ��t�\�C���\��q��ֶ�\�pڣ�š��h6\Z����\�\���|؈R~c�?:�Fއm9�E��\�\�Ko\�^\�\�\�\'P9�\�ֲ�gM�-D\�-�\�\�\�m\�F�ic�f?)\�u\�\�\�F`ެ�\�V)�K-͉��\"Te���Qԉ>H܏]���m\�\�+\�rnI,26�\�~�\�T\�f\�9ߡ��,�\�dKy�@A\0\�ҵ払\�\�:\�Oo\�.�M\�;�\�\�<�\�\�X\��h\�\�\�۱\�i~4�\�-0�+���\��u3�hZ;�]|,�S^P\�`K̀z�nƅ7d\�\�\�s��\�.��\�	q� w?8a�Ӄo\�dUOo#2\�R�YQoia\Z<�s싆\�\�ִr\�sR�Ե�\�qx~\�\�í��)�\�J;��,�N�`�\�\�h\�IR��fjj\r}\�W\�we>d@!϶j�ܥs\Z\�SI-n4\�K}f�\�\�\�V�\�\��N\�Z#�\"��\�g�]\�\��3\�U*r����\��L�@S��\�,G\�j,i\�,?���\����+\r�E�\�\�=8���\�(׳��\�\rp�N\�\�}/�>��\�IX\�Se�J�\�,��d[�\0o?Ν�#9Ji\�G�\�X5�H\�\��c����#\�t\���)��\Z�SK�\�$Qܧ\�\�#���\0�\\\Z\�qJW:jԓi#e5�k\�\n��\"�˂h\�݅��){d��\'�\�\�m�cV�>^\'5T\�Њ�R���\�N�.��d\r`�B<�~I\�\�|V�VZ�;=�v��\�I\���K6�\�R9\�\�\�(�\�Ի_(�\�H\�\�U$��z\r�����:\�\n�~( {��T�\�>[����@�+9\�_B��-MkM4�\')9�\�\�&s�\�V1Iu7r�H\�U�\�Z\�\�y�I��b�,\�>�n��;[c\n\�\�h\�Vh-�\���\�\�ⶱ\�\'�B\�T:|�-湏xϙ��\�F\0���\�u)��\�I|yyq�\�\0I\�\�\�\�\�֡�\ZJ*[�<G<\�D��2�DW1\�rF.\�hף��N�\��\0��cǟ\�4�_r\�OR����i\Z\\уCՍ�[8g�%\�<DA�\�T��y΍�\��{[�	\�!���ݻ�\�>�r�%𱗞#}YDM\Z�\��\�!̙�\�ܨAE6nZ\�L\�>�j�H#�\�\�c|�q\�\\җ+:7E�4ht�\�\�\�	�g�lO�\0Z����\�6\�Z]\�u\�X�ԟz覮\�r՛��?x��Ks�(\�\���x\�qⴄmsyJ\�.\�f\'��\�bX\�l7҄\0��\'�;ip\�u���[$6*\�ăt/T�^\�\"�~\�\Z�j2\�Z7�v\�x�Q��s\\��\�\�=g\�w�\�p\��N\�$�)�c��\�\�KVL��(���1�\"���w\Z\�\�	;���^ܾ�WQ\�\�5V`�M+2+�*\�0\��^\�\�̸JD�aua�`\�I���\��_��+\n����O\�\�G)�2f�5(@\��峌Us4r<$3n�y�\�e�\�?睯\�)]�XЄz.��8\�!b��e�\�)\�FS���Ycoe�i�y3\�B��\�\0\�o<�J�\�ؤ�b����Q��Q��S\�T�c��\�\�7~\�-N\�\�f�K)�r\�ZB)+#	��ك���\�\��\0ЍZ���T\��vp_\�\�SB�Vm3c�\��4�6\�\�2\���\n�� 3�c<~4-����\�4\����\0i$X�v\�\�*#k;�Q^Hھ\�l\�_2\�V�R2>K\0e\�8;�P��Ȼwg7\����\��%U¼\�\��~5����a��\�\�vR��8\�⺓\���\�\�c~�\�7\�T�Fr�:\�\�S\�I�\�~�MҌ]\�[&3÷\�\�\Z\\M�\�\�=����\��S��\�iq��n\�\�ғLwB@�\�#�㲄�\� \�_�@ \Z�\�X.n\��6�keo\r\�G\'\��o56W&m6\�H�\�h�����\�\�\Z(ͮ��\�\�<�2j\�d{4\�sj/}��\�\�@3�\�Mt\Z�!�\���T\�\�Hbœ���iG���y�~�\�1\�\�,�@*ˌn��Ԩ�9EH�\\k\�E&-�\�j\\]\�RH��5��nr�M(#�*�\�\��!��/?\��U\�\�\�\�;%4+����B� tǸ�\�\�\�\�\0��i\0�3�\0\r\�LP\�\�䰆-\�J���ѥ`\Z�-��󜇢\� �<�ݹ�M�O��v�!\�:�ˊ\0>\�[\��\�\�0�\�\���F;\�4��?O2��\�\�\�\�]Ȑ�r\�\'�E^�c�9F)�!ws��\�b��@\�H\�\�L~)\0oɠ,\\\0z%;\�݊\0_2�\r-�@Z�\�\�\�RF�\"ah2\�h�a�\�~�����/.C�\�����i.XB\�\�(�=��\�`�s�V\0\rT \�hI\�ǥ<�,6\�`�	@\�\�a�F\\P\�\�\��#$\r\�Z$�i���\�%\���\��ߞH�\�\�\�\�<M1�.�\�m����0��j:�w�\�hdm\�}3O��\�\�\�\�\Z��b\�­�c\'\'��Q�izl3}�\���\�m\�s\0yg\�\�)وԛ^�\�\���I58\�gD�eP\\+`�\�I+�s6O\�k\�R�\�\�Ic�\� ;s�A��GW}@#𵶓oƥ<��@n�LӐH\�\�9\�A\�\�\�w\�6^��\�cqq��x5H\�dz)^�\�f�&�ʇm��\�\��x8���M�\0\�!4M��\�\�!�\�P!\�q@��\01�&1�iXc�☋\Z\�&�X!PZ_\�s�(I=����Z�kRס���6�����I|F\�;�\�?\�\��\�I.�S\\\�[\�:X���bD\�Z\�am��\�sI\'v��\�!q\r�\�H\�\�k�(\�f�&-M-h\�h�\�\"�\��H2l��\0V=jU��\�\"�\�u�#y\�Hbb,3�u\�sڞ�W\�χ���\�J\�\"��c\�2�h��\0�\0\�Н�\�֤\�5;k1Gi2�6�w\�3\�\��)\�\�P*j�E6�v\�c\�yܦΘ\�qN;P�i�nh\0�bc4\0�)��b~h\0<\�1:R�	��:O\�s\��|���0\\�û]�>F\0gn:�\��\0ꨖ���Ϳ�����F���uF�\�P7\'�\�\�\�	\��/6�imo&���-q�^�����cJ�\�m\��Jmm��L�F_\�v��\�V0?��A�\�涷-K\�Ϋ\�\�LAi\"\�̈́\�\��c\�v8Ԓ@��\�\rum\�`��5�-L��6\�fg�@\�C�`]�F��8tۻ9��q�ʲ� �\��\�\�ڥ5�\nxf�MԤ\�t\�([\�\�-{w?\�\�!\�ng8\�\�;�]�\�\�ld\�.$�Q��b��w`��Z\'p\"\�@\�}\0&\�\07P���(\0���d) �4\0�~T\0�S�\0u���\rO\n��?kp\�\�\�+Gj�\n\�.\�ʑ�jf��2Γ�M�!�\�\�\�[�ۑ\"\��,\�9\��؍x>=\�4�-\�\�k��\�#������*y�\�m\�K�ek����&K��\�t9\� /�\�O��ôϋ\�W��\�\�\�n深�7_] ��\�T\\�\�poV1,�7±���\�\�\�A��-�*��\�\�N)�\nė�t\�B�%\��K7\�峊d�\�\�\'�%a\�|�\r�O�f�\�[��.I�ׯ Q\�\�X\�uMG�wR���-�\�\�	\�5�\�[\�s�\r�SJu{7L\�@h1@HL͏\�s@QDK�\����2:\� �	̃�y� \0\�(Ϝ�om���Ē������3��S�\�W�p�f\��}3@\��\�1�\�g�����\�\�`/j\0kK����8�\�i�\��\����\�\0��\� !x\�y�_\��\�\�2��\0ܴh6�H\�z\���\��\0\�r�)ͧ�\�\��\�ʫ�`W\�@(q@lm\�b̝:����c\�ҀN�\���G�I\Z!Ã\�iBpM�w\�X�Ho�\�@�!#�2��\�I\�0\�\07y�X�l\0\��m\�h\�c9�`�\�?*\�y�+�(\�_�q��\�%\�\�d��(�|�\�Q\�\�hRR3�<�\�\�\0	7\�\�/�6�C���\��be��C@��p��\�3!\'a\�Qp�\��\��ɠ\nL���=\�\0\�\0��\�r`\�?vc�c88����91)���	��ӷ0\�TY>q��\'\�;�A~�Y\��YnB(\�e,��OP���!I3d9\�J\��#��\�[��ݞ\�\�=���t>\�,zӌl�\�\�h�\rMT`H:\�\�\��\��T	՜��z\0G\�rw�yQ�c?�\00k�.~\�\�\�J,&�$#\�;�4\06��\�P��Ƞ}��l\���G}�a��\0�\�4\0\�s�M�\�^(S3=\\\�h(\0��\���Rv\�\n\0Z\0w�޿�\0sz�\�P\�_Ҁ9�A@\r�q�P@\0\0P@\0�\�',200.00,'9456',NULL),('C20001','Mr. Robot','�\��\�\0JFIF\0\0\0\0\0�\�\0C\0		$-!$3-663-339BTE9<N?33HcHNWW]]]9EflfZlTZ]Z�\�\0C##F((F�dUd����������������������������������������������������\0\0�\0w\"\0�\�\0~\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1A\"Qaq2����B\�#$3RTb\��4DSr�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0?\0\�\r�\"\r�A�Fخ�\��\���kt�\0\�v�ߙVe\���\�D�a��39\�4�\�B!�����\�̱_�\r�z	\0PT``2�\�#����\�T\��|,6)�%\�ӡ\�i����,�8�d\�0s\�AVbRH\�\�$қ=��>�3� t>�ܜ�\�\�Z\�׽���R���p�N����:�\�Ʌ\�m9\�\�t��\�\�\�(\�Oo\�굟�u�\�\�y_Qr\�9\�\�\�벊��\�\�\ZM,M��\�\�\r�f{\�\�Ty,��+\���!�yRDc�H�\�Hخ��]HصAY�������9\�\�;����߈e�\�O\�s����O\�=\�\�%�u�s�\�\���A�U\�3D\�)�P��@\�\�˦�哌V�\�\�֘\�C,N\���7\��;�l�\�Oplزf\�\�F0 2�e�٠��QW)�z!3\\�\�Ңn�Gx��\��qC,2�\�$ُk%�-��\�\r�e��H`&LѼ�����\r&c4ձI6	y�\�b�(}�($\�i�\r�\�\�!s9�3#\'\�Qw\r\0\\[�ۛ\�\�[OO%%\'\n���y\�]UPbp��f\��]�����IdϚ�X?���Tǈ\��\���\�c7�\��f��9T\�\�Kl\�u4|��s�T�|�!5;��\�Y\�\�N��UF`ak�aHbI��\��F\� ��$E� ��)YӶ+a�悬p\�#R�\��OϦՏ �[4Zh��\�\�\�7*F��,F���D7�\��\�i�Xm\�\�Ħ�<�w,߼ob��\�k�=4�N\�s,2�6�@g�ve.s�F��\�M\�}�RI�4�\�\�\r�y[R\��C-tc\�e���e���($�\�w�:i}2H|l�Z�c��ce\�@\�tO�5�ɿ�����q�\�K)a�U�\�o�@q\�us\�$3��x�2���U�k�Hd�G9�\�,���78\�\�\\\��p|F�Do�\�s�\�\�nM\�ӿ�N�;Fg�C\�ܩ�W,IH`I�¤l?4�\Z�2��\�튖��<O\�ˁ;\�C��\�J��\�c�B\�wB逵L2\\�B\�ss�|Jl�Q��iσa��\�\�+X\�l�#�A��\��G�����<\�\���9\�b�tj�-!,\� \�\�\�\��\�\�w�^[uq�e�\\:�>�Mr���X�H \����\Z{��t�XrH�m��\�\r_iT\\C�TJc�h\�\rF�\�\��\�)��\�:�\r�����i�vV�!��$\��n�¸�b�h�i\�\�ϖ&՜�oe\�X��}>H:�8\�\Z\�HR5ٮFIXs�\'ഝ\�#\�T&�����q�ؘ\�쒓\"H,�4\�3}��i?\��\�\�T�b���\�PT0o$O\�TW��uO\�2\�\'qLӸh\"�\�f\�U�pD���O�Ե\�\0��\r�:րm�\�S��9�N�j\�\�\'��14w���\�\�G\n\�����!\�\�33��F�d\�;�\�T�&�{H䴛��\�\�^�\�\�l��\�O�\0}�M�د=cQ[��穨��ذ4S�JZ�x.��z�~�\�/\�[Ŗ*���2ԐXk,� \�b4;��,��\�f��1\�0\'p\�|��\Z\�<�OQ\��U=v.�z�j�\r\�X�\�N��L�\�\0�\"p�A�	c�08V\�\�\�À;\�`\�M\�$oAĶ2�6�|�O\�8o\0��uI4�$d˚\�\\\�qG���s��\�\�u�_A-;��U$a\��\0P\�\'\�\�G��|KMK2�)/2�K\�A�\\\�E��\�\�Y]�\�\"�S�##o�@\"h>k�\�\Z/�\���\0��\�\�\�j�e	�}ۃR��La\�z\��VQ��˙$r(\�1�zIe�F\�\�Xo,�\�n)\�6\�nty\�D\�\�MEޱ�;.?\�*��\Zdkc��أ�\��Ĥ�J\�ʢB34(Ԍ9�Bܥ\�zj\�N\�;PTF\�s�\��B�9�\�\Z	f�&˧ƻY�°9�n|���?\�;/0\�#\�q\�uC���M�8\�\"��5z�8\��@\�\�\��*�l��V)�\�\�Kf�\�@n٣ЄG�:CZ,#\0x(�u\\\�\�ĀWE\�\�Ҍ�\�6+��\�\���>e<���|�\�:,ƪV\�t���I�鎥\"�\�\nd��m�G\�m�\�<_܂�R5\�ς Cn�7-��\�v�{!y@�1Mk�kl�8\�{�\"l�\�\�\�$\�(����=Ӣ��\Z��M����8͔Nm�\�S_7�\�\���\�^9U�a{F��\�\�\�R\\��\�I�\���(���ʓ�\�lSY8v_C\�)ò�[��R��l\�\�\�S�\�M�h,�5\�S8\�\�3�@�+�D~h�6huЍ�\"��\�x$�Ф��mӔȦئ!M�0@��y�IK�I�\�\�bht�����D\�\�#��\"��{�D��A�i\�W4kN\�3{;m�\0���ajB��\��}d�,\�Gk\�\�{]U�L\�\��c�$$/۪hQ	�@2\nK]\�\�=�Qmt$\"���D�_�\�',250.00,'2585',NULL),('C30001','Source Code','�\��\�\0JFIF\0\0\0\0\0�\�\0C\0		$-!$3-663-339BTE9<N?33HcHNWW]]]9EflfZlTZ]Z�\�\0C##F((F�dUd����������������������������������������������������\0\0�\0o\"\0�\�\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1\"AQa2Bq�#���$3CR\��4�%Eb��\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1�\�\0\0\0?\0ζz2���.\�˰�T\�\r��\�\Zj)�Vy�n䆲,<��O5s�-Ɲ*,-���Y\�^Sh\�\�cR~�ȟi\�\rk\�\�݈���|]��2Ŋ���Z�\�ݑ-��G\��\�سZ:��@Y\�W�ѣ�|\�\�Ͳo�j݄��\�2>\�l<�<�,\�\��GO9�yϦ(���.�W�Kb(\��\�ʠ��rI:m��7�9D\�3p�~`:B�`)���ub�m�m���`�2,�Eֱ\�\�\�.m.��d�k�\"�H���jZ��ӷ�řG\�\"0\�\�}�=,=�\�\"\�Q�\�\�7��I߯\�j\�Y��\n\nGTz� ��\�j.-{����MM%8nզ[5\�e6;o\�M\�\�U����\�6#\0\��?��K)\�\�#|Y\�K\�UJ���8�utPZ2��ߺ>�|�\�xJ�>�jc��HM����<fh=�fÀ�i\�\�)�6�\�RQ\�V�P�\Z�`rt\�\�\�6�\�\�5�\�X�����Ҙ�p/�o\�\�h�{��W]\�\�&7\0�|*c`��C���1k\�y8�@�\�`9��D��8\�g\�e\�Ju5�\� \�O\�i)��V��\�ŶVf��U|�V�����`<��(xu5���fp	;c�r�i\�z��\�p]\�}OKo{�1�\�iki%v��9(�<�=M\�g\'�\�\�@qW\ZB\�/�d6\�\�l\"�)0Bfr�_b����\�g�zV��M9�\�`�\�\�!S+M,�U-��\�<��\�l\�&\�#\�\�c\n�o\�~�\'\��\0<i\�3uh�}�Ac0\�\����9��N��+�\��H�6�� \�\�U\�R�v\�\n��%n:�/�ug;�b��\"\��\�\�Xݖ8�b/�G��\�mBE+\�{EGH�F,��e�,OR@�\�ŗk�@�0��M`Z\�Oþ\Ze�r\�w�=��\n���\\�ZئKY4\�1�f<cX,[q印\�gTx�D��c7����M���N\'\��}\��Ǵٷi+\�\�X\\a��\�ˡ��E./|jds�j��#�J��%O\�\�I\�\�lƲ-QǙ\�eͥi\�Q\�\�yT5\r\�#[\r�Qp\�\�\�0�~Z�,jͬ� \ZO�c=\����R��\�7^\�3��\�#\�=1\�{\n��Ay54=0T\�c\�Df��������G\�?\�7\0�8\�1\�\�d\\5B\�K�~\�\��𶿎R��i��O\�/��\�SYIh�^\�t/�T�M.f{�:<F\�a+\��\�k�ֆ6��\�\��7q\�\�=�f\�$�r�<F�$$\�>�ӧ��hU�?`��5�\ZQ@U�\�#��nj���,�:gv#\"\���q�\�ʪ�\�ĕS�µ\�\�=�/\�W7S�ØCi7��Uٙ\�)UbQ�����\�K3 ��\0��\��\�2\�\�83Eh�Ø\�p}Ɉ+\�æ\�df\�D��S�71\�輷�:�\�k\�b#���}S.b�˖\�|�\���44Y��\�@\�T,Q�\�\ra�oG�i H7V��\��O�3jɥ\�P�\�\�#\��\�<�3(\�O�5	��� n�CX\0m��\��\�i!�\�\�be�[\n�\�\�\�C36�\�\�\�k�kPޤ\�G�S\�*�S�0�e7:�\�\��\� ���ݺ�b�\�-YX\�Y� et\�c��:\�+&�����9��ωr�\r��#j\�ڏ�\�<��k�3��҆7\�\�y�x`��\�<�lÿ\�V\'�\�z�Ԥ �\�|N\�;��\'y��\0;_j�/Z�b�ڄ\���t\�\�\n \�3�PZ�Re\'�1.=z\�q��,�\�S\r\�\�,��~X�j=]Μ���\���~s\�\����@]������i\�\�~��C�F:\"\�8YV�\"�\�\�Q*�h���?5�H��Hx�����=A�\��M�\\\�\�Њf��\�X�`:\������H�I[	Q�_�\�d\��\��P\�<d�.[�*82%7~Jh͋\�>x��c~��7�ܿL j�b�CK\'\�3e��\�\ZU�\�Q,k$\�.�F\�\0|L4�D\�[�2Қ~\�\��\�\r�\�\r�1�\��Qj*\�&e�u��w�q\�\�ڵ�}\�^\�l#\�,�J$�\�NMJ��SbO��\��w��5\�q�]v\�~�8\�o\�\��\�5�v鉍ieTuҴ�\�\�?@<�\�q\'\�aQl\�:#x\\yK\��\�\�2�\�=\�`7Ǎ[��\�vV7\�ƥ\��\�3Jq�\'��\��^�\\�2F$UD\�7(�|?`��\�4\�\�\"\�=N_S��\\��R��\�yx]\�Cf�U\�K�`\�N#���A��+{\�ko�\�\�SJ�J@ j��غ\�\�O�\�Cg�\�p�\�ef7n�-�T	i���!{\�\�\�.\�\�H�+\�\rK\�:���r\�Pk���m��rir�\��\�t�؍�\0�v�h�b\�e\�l1\���2,ΞmJ��bIűe�T\\su�ҴSN\�\�\�9aZ\�@���4-\�\�.4MS\n�>	)\�\�k�_	ISMvU��	\��>��2�>$\�@\�*Z(ޜ�\��_\�w}��Y�\�_BPH�q\�\'z\�\�\�\�?��H�AY�Hop�:\���\'7Zl������0,�֌�?0�\�sS���f��;v�K�\�\�뇎��\�p�|�\�,PMj5\�]R��\��\0�EDmw{��Z\�0�h\�룚�I��˕ec/0�\�o\�\0U���X\�v�\�-o#�\�gj\�\���*|\�L\��j\�؂\�\�H�\��f\ZA\�J?g�L�6\��;u��3�\��հ+\�\���yD|?K�J�:)\�\�/G\�\�\"�\�4�\�\�6�\\+\�\��0ƚ�x�@\�!�Q\��\"OȮ1\�6��ԑ�x\�iH\01a��w��?d�J;R�Y<@��y�\�ia0���B�2�6�+�V\�Rfu^\����\�|izd���܍��E=rC:��[\�\�bk1;}^|vqis�9�\�\�Ċ�9�睵��\�N+n\Z΄������\�\���\�+\�\�s�i�pE�\�֯!H����r\�̜w��\�ZޣL��\�r�\�h��ʡ���\��\�Tf��&�hg���݀��ɚ\�d\��\�\r\�Q\�j�\��q\�\�Y��)�U�\�\��\�\'�\�\�U\�N�\�P��_OGey HH���\�o\�c;K�͞�uм�\�\�V\��l8F�0m(�~ȶXVM�\�Jl�G=TY$6\�\�Ӯ��#S�Sd\�\�1�\�֍��$�ȳ,�0�&ܕno���\�\�͓��o�(�\0�	�PGČ\�T�|���\���\���� ��2s�X�����o\�\�\�\�\�S�yV(\�T42XaMnO\�\�rfU׸�W;P��\�cS�qLy\�DR U\�TrI\0^\�J-�\�\�\�&(�A\���\�\�ffJ_�$o\�\�}1͞\�\�Ѭz�����e)�T\�ȿ7X\�o\�\�\\D˨\����攞���\�N��7�ij\"�h\�v\�$h��9Ե����\�\�W�\�uO��KD�푴�Q+\��nc\\l\�C�r\�ʱ\�K)\�K�\�\�)[\rv7\�\�m�\�Y+˺��\��8�YYM\�kUES�\0O�K*�IA���\�^\�1fe��A\nE5dh\�$ȫ,n�8v�Pm���\\S �&}\��\��F\�i	\�税�ȹ�(�\'\��\�im_�ؠ\n\�\�xJ�\0T�E�J��nEצ	�2\�\��!��ǯ\�d)\���:��\�+\�3\0\�\�9�;yi��Z7\��.lҭM4�����\�+}G\�]&wJ�f���|\�Ո/��\���x^��\�{F`\ZNU4�1<��N�_�\�\�4��\�p\�Ao�\�0�_�q\�մ\�4��P�\�X�1�\�ac���\�t\�V\�ύ\��kmQ\�.M\�9�hU\���\\�4��\�-ȿ�ǖ	�����5��E�\�ea�����UEWG/\�CV\� j\�tj%ݴ5���6�#�\\v\�+Չ�_-\nGM�\�\�5Dr-�S0`\�:qװ\�GBs 9Kr[|P\�_k5M\�<F���\�\��;\��2X\�E=2GB����{\���\�i��H\�X�p���\�t{\�[[Q\�R\�-*�%dK\0�\0T*�\�j}�K��p#��\�h�\�zs�i�V\�\�թ\Z\�\�m�\��FY\"0{ɀ�1\�\���pı\�d����S�(�4\�4�L]4奊��j��Xˣ\�T\'�\�\�3G�yqa+r>��\�\�0��iџAi\�S\�\�\�\�Fz�Д\�\��+z`WV�c}�\��&EC�1�}Ӿ��5�\�^�cߦ\n�x�㪥�\\lr8��lֽ��\�Gċ�Ә:i�����Vm\��\�O\�\rN�\�\�<�{lw�l���{�\rź\��F\�\�\����=�V�P<�\�\r��\�G�\��\�\�Rv(�\�6v�L@�|�\�\Z�TH$\�\�AӨIs\�\�#ؒK�L�W�Ǘ��5D\�7�U4���\',J�VX��s�\n/o���D6�$�\�n\�<k��^\�eɱ\�o|JH;:>���{\�\\��n.\�|�5c\�\�-\�H\���K`E֥�q�rAo,B({e\�*X0_\�\�13-�F���\Z!ס?#�e!���;�\�:\0ۦ+9��\�`^�\�\�\�\�\0�F\��lAo\�%�X\�\0\�A=\�\��\�.1.\�̥ul~CN��`?�\�',150.00,'12503',NULL);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_mapping`
--

DROP TABLE IF EXISTS `ms_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_mapping` (
  `movies_id` varchar(11) NOT NULL,
  `screening_id` int(11) NOT NULL,
  PRIMARY KEY (`movies_id`,`screening_id`),
  KEY `screening_id_idx` (`screening_id`),
  CONSTRAINT `movies_id` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`movies_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `screening_id` FOREIGN KEY (`screening_id`) REFERENCES `screening` (`screening_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_mapping`
--

LOCK TABLES `ms_mapping` WRITE;
/*!40000 ALTER TABLE `ms_mapping` DISABLE KEYS */;
INSERT INTO `ms_mapping` VALUES ('C10001',1),('C30001',1),('C10001',2),('C20001',2);
/*!40000 ALTER TABLE `ms_mapping` ENABLE KEYS */;
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-26 11:43:25
