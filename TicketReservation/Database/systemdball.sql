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
INSERT INTO `movies` VALUES ('C10001','The Zero Theorem','ÿ\Øÿ\à\0JFIF\0\0\0\0\0ÿ\Û\0C\0		$-!$3-663-339BTE9<N?33HcHNWW]]]9EflfZlTZ]Zÿ\Û\0C##F((F–dUd––––––––––––––––––––––––––––––––––––––––––––––––––ÿ\Ä¢\0\0\0\0\0\0\0\0\0\0	\n\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùú\0\0\0\0\0\0\0	\n\0\0w\0!1AQaq\"2B‘¡±Á	#3Rğbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿÀ\0\0¥\0o\0ÿ\Ú\0\0\0?\0\á¤\ÈSTJCI*üuJ\Ú.\Úx\ç_ˆK@ó\ÅÄ¢#ù\Zd¶‘,›E·\Ş\æÜ®\àq(‘½:u¤Kw)¬>c…\\\àn;iŒ\Õ_†÷@˜ñnJòe7ŠDó\Z\Ûg~\ÓƒD}NQ{\Ë\ĞH\Û?Z˜uï„§ğğV˜Å‰s³\È&şT\rIQ\Â6IÀşğ©Xµğ´ú\êˆÅµN7O ‹ù\Óv!–\Ä\éó¼M´´\'\Ë;\Å\ÜCz¡\í\Å\\v)\Ú\Ä\×s˜À\Éöª§«³-}•œŒsŸÆ¹¹=“%¨ˆ7<\Ç\Û\Ó\"P±«¦ü@>±Š\'²·”BÄ‹‹¤\ÕFÜ\ïÇ‹{hö\é	E•²~\ì\rÅ±\Ó\ßô¦.Wr®\â·ğ\Ô\í\"*\É\ç.\Ó\İ\È?Ò‚š6\âø©-\ÉRš|<lQ‘ùb‹;\"¡s7ˆ¦È‹UÀ…>_|Ó°¹\Ñf\Ï\Æ3h¶\ë	·Y(TM\'Qœôã¿¥d2o‹\ÆQš\Â%6\à€±7—™\'¼\nV-$\ÌE\Õ>\Ër\'\Ø\Ãù‘\×8 »\ã\Úqşƒ\È\0Ø§`yy¢\Â\å Ô¼n<MO³¬JtM¼c)¤5\ìi.\ãÂ¹Ãªí‹H\éõ­cš$%§„§\Ó\æo7lE\Ê\\_zÖ»-DŠ¼³\×½y¯9£¦\Ão\ØFù\ã2€~Z E{\\¬\'iG|Â¶G#\'B’ñr¨\í´dˆ†\ìzdsYi-ö€W#gITU$D\å¡\Ú[ü’M=e’\ël\Ò.\ï!³À\í“R\ä¯cfÚ¹ƒ&7\İP\à“W\ÊBf¿€\ÅÕª\Ê\Îÿ\0\é!mù\0t\äö¦•É“isXÀ\Õ4\"\á\â$·\Ùú8?­K‰\ÓJwW+\r›•\Êô^7?z,j®Ê²\Ø6šù\Ç\İ?u©4Rb	6 }ñ\ÈSşy¤™F\Úø¾\ÎŠ5I#ŠR®\Äöp¸ü³š\ê§4·4Mj:\Ñ\Ô\çf—9\Ü8\Ítü*È¶\Êv³	U\Ú&\é#WŠÑµ9_Iø“ÁIà»\n\Ü,òDq\'—\Ğf©TŠEh²\0<\àñš¸\ïc–kK“\à\Ù\İhùf\ÏÛ¼\Ä\Î\Ğq\ØÒ\äÁhr—Ö¶\Z¬\Ñ\Û\àÄ²\Ù5´e\î\êe8\İhvöŸ,m´\Å%OŸ\ã\ì gqú\Ön\à«Z6¶§6¦f•Üõ­=kE+¥¡¿£|`‹\Ãúk[Móƒ²T\äs\Ø\Òj\î\å\Â|ª\Ö9G\Ä\Ëwz\Òm\06\0¹\ãùµ¹Tiò\ÆÆ†•\â\Ëì›‹I\âQ9pğ\İ\ã£5÷¹\ÓM¤¬\Ì=Rş+\ËÉ™:€jô³%\ê\Æ\Û\\›[¨öiÁix¨F„ºf–/\ïá·‘¶©%K\ã\Ì\ã<WE>—*%\í{\Ãü?¼’\ÙdóVØ€$<Fqøfº!?İ©†z\ë\Æ\ê\Î;y6\ë…l\ía^MT½Ô™¡«ø¨xƒ\ÃV±\É‹‹9JJ!\ëƒÁ÷\Í\è)Å¨ó\\\ÉX‹ÀU\ZCŸ2S´\Õ#e»mb[8\Ú!s8I\Ï§\î\Ã~f¯N§<“\èFšÍœ§6³\Èsƒ\ç\Ì#îƒ–MjË–ú\ÄWlªg‘¤§\Ìc85Ô•\ï\ÛÃ€~\äŠ\Ç­?{±*/¸w\Æe†\Ü\ì\ìªGõ¥w\ØI;\îgI\â(Ñ¾m:Ñ³\ß\çCÿ\0¡T\Ü\ëŒt\Üz_\Û\ê\êY\ì\"M¿ó\ÆWLş¦‹Ø™{º&F\Ú}­\É8Šd\Ù\Æ`”KüÀ§t.iw\"’\Ş;cŸk&AK\åş£4\Ò]\ÍS}/_Í¡\ëq\\ª«y\n\àK/Î¹*Emsh\Íb®\È5i\êM\Ï\'˜\îÄ–\Îz\×MUd¬\\‘•´“ŸÖ¼¢KñK%Å‰\Æ1\Éq\Ôj§J»¦Ul\å\È\ÎùUòFÆ\à³\â˜\ÚA<1X+\Î9õ­\ákls\Î\é”/ôF\Ñ\î	\"ly\Ñr½CV}1ùŠH\ÇËŒ\Ó\è\Ìj3§Ó¾\Å\â{4›\ÌùØ°f¹9\é\Ó«L,S\×<¾h\ÕY\Ò\Æq8\Å\'f\ÑVg+<dÉ~Õ™\ÕM7\Ã\â\ío)`BZ|\àt\Æ?kDô3N\î\ã.¼0š.&I	\Ï6ş\ÕR¹LÌŠÙ¯¥8ã“Š˜.fj‹À«—»/®ºK[šDv§™%‰\İ\ÜóO®Š™G>\Õ\æ\ÒÒ€x\Ø’ŒT\Ës®dWı®%FW‘\"*hŠ‘¹wE\Õ\Ú	J«`\ß&ÑŸ\ïŸ\ÔVÔ¶8\ê$÷\rFf\Ö;d—,\Ü\ÖÕ¡k4s\è¶D6R˜Ku:V+©5\ÑşÕ¤[\ã“8\ç²\ÖôXºn†\È\Ô\Èo¹\ÓÒ•O‰#\È\ßvxÏ”IÀö¬V\æ÷´MO$\Úi£İ©>Iü«ÿ\0\×?¥iMu¢3\î\æû48™_¯ÿ\0Z”¬{\ÈbY>›\0kşwôâ´‡»õe­Y$Q¬r\"\ä0{ó[E¤Ğšœ>R)\0`úsU[\á¶.i¦ñ BFŞº½\è¾\ß\ç¥yE©E\"\êü*¹\Ğ\âYe(‚y6¤ƒn3‘\Ûó©fĞœZhÆƒK{)d\rU	2‘\Î}{U˜\ŞÆ–‘ Em8{€J\\r‚pF\æ§\ç\íM;ów\Ô\Ú\Õ>\Åf¡\ÔHr\í-¶8\ë\Ó?^(”\çc)+7\Z\ni’#FXı«wËü\0\rh¦N\î#‘U_—zœ…Gmƒ&œnf®9-\n\æB\Êijš¸\Û5¼9ğº\ÏY.¥ŠIMË¸u/±T)=‡Ò¢R\Ü\Ù\Ş\É|Ağ\Ò\Ö\Ö2–öH\Z8ò„óŒñ\×9\Ç\áœQ\"¤\í±Ç^\Ïm»‘•XñÉª\ŞÂ‹vm/…ŠHCI#¸A‰29¥h\ïÔºu4­>Å­\Û-\Â<„\ØH|\Í\ç\ÈGR¹\Ï\ëŠ9T“\Ø]g\á\ÔRnHeò\Ñ%*.¯ûc\×\Ò\ä\å\ÍtS\Óü[{ğ\ÆM“\Å™jW`»\ÌûzœğkÏ±)©jdø¼5Ÿšd¹¤„™˜`pT7\0g¿Z\Z¹I´¥{\Ûø¤*\Û,²,‡\Ü`7<Ÿ©\ë\Í;\Ùh‰÷“w¥>•{§}œ––\Î\Ğ\Ù\È\È9\éø\Ğ\Ö\æ^\Òè¹ªj“\ëV6q\îdv\ÜñÀ<£œÿ\0!\é[%L\çvdk\"Ah¨Á¼ÿ\02÷\Î+5¹6²°¶\×\í\á+D¾…Q§™ö¬W@`\çŸN?:\Õ?r\ÖV¥yõ™µ\Ã\ç=¬qgƒ=§!›9\çŞ“m\Ú\â’H\ÔğŒ²\Ç\r\ÃEwöwˆ¾aùI\ç¨ö\ëP\ÒJ\â•\ÓGQk\âñ¦Ö“<g\ì!;›#†)µn†«[\\ó\ÙfŞŒô$—\å=iGdJ‹i¤_²?k»È\å;|\Ûeòğ6ñÒ­·Ï¦\ÄN*i\îhjş —\ÂIoW÷\Ä~\îEÜO#§J\Òvz†M«ô*js\İL†ı\ïüÉƒ\0\Ö$\Æ´&\Ò:T\Óz¢ğd:|*\×V\å|,—2ù¤ÃŠ\Â1³÷„§\Ìôcô½!¬İ·¶\ä±F—Ê‘78üi;\Å\\Ñ«\î_—\Ã\ÃS\Ïa\ZÈ¬K<±¯‘´ûúş\ãmYœ*¸«J\Â\İ\Ú\Ü\ë76@\äj‘Wan9‹›Wl¨\Ó÷.Z´ñ<r¤V\Ïj¦Q(t\Ô%a1\ÓÖºmk±JÖ²*j¾[\é­a‰\ÕMÀ‘‰a\æµ7JÏ›S5¢½¥úZ=„²Áö¨,™\ËZ²G`}ñUb4š©\ÍüS\\[\ÚùM>VÔ€›~E\ì=Á¡\è•È¨®[ğÏ…kµ«ŒI½Z¡ÿ\0\ëŠ\ÎRµÂ¢¼_\Ò5-ôy \×w\í\İş[7œFVM\Ø\È?A\ÓŞµ½õ-nqÍ \Ü\ßŞ»Gm$‰·\ïQKµ	6´\'\ÚB\rİšÚİs$2¬ms0<I9ŸAô«ƒw\å\ê)ÓŒÚ“Cn/Rø$·£sÛ¹æ·—8\É\í\Ï9J\î\ÆJœ©«Ä©>¤¯n\Ì$%\âs!‘ó1Ç§<RUı\ã¡EYX{ø¦\Ş\êU&\à\â>BÄ¦B	\ãŠ\ÂWc„dÅ>\âc=¬böS«`B%©À\Ïq\Î)r6Ö§Lª¤›h_\ì+»T’iœB‰€²>8Çµj“<\ç8JI´oi\Ş&¸ğ´¶\Ë1†\ÙCHF\âzğ3\ĞR”#‘\×N¢””¯eoe­\Æ&[Xónp\Ä\Ç\å\ß_jç¦µcº{~#Ó\Ö\ì\ãˆ\0ò\î’K¨\Ê\áˆ_\åZÁë©œ\Ó\å|¦W‹õ\Í+T&/\Ü\Åk´Yı\ßÿ\0_AZSm+¡M&õ3ô\İV\çZ˜­Ä²<S«.n±\ÇOzr»W}N)KDt²¹ğCk2-¶\ÌòZ\æx\ÜJqKF†¥\Î\ÛGK¤F\ÌöLR\å8\É##\æ…\ÛV6\åH\àG½‚[’®P]HX\Â	LsŞºRgW$š³[x^+ˆ\Ú;—\Z\Ú|ò\Â\èù> œõ¬\åI\É\Ş\ç^²pµŒóªZ[\Æ#\ÊÁ·ñcùK‘¢+sM\Ş#›T´¼bI·en†Y\r®§LU$–­\n1©Êµ2\Ò·A½‰\àG\É4X\èr¶\æŒVwúT\ÈÉ§Iqù¥ZCú“U¯cšR„•¹®Mw\â\Ó=³[ 7?zY@@}±Ö™œ)\ë\Í\Ø\ÙÓ¦vŠ\Â8\ÂF\Ëj¥¯‚ù\É=\ÏJ\çGcª\Ër\Çö\ÕÆŒÁ<ùŠFÄ³\Éò–>ş½ªc\ïhL¥È®Š\'ñ\é¾òL,\Ë%™\Ún\Æ2\Ü\åÚ·Q³f\å\rNf{×º–Wwfk’KH\ç$œõ5[	\å\àddb\Z3GcM\ÇS\á\ïO¦Z‡\Ìí¼²˜™úf³–·¤\ãkw~8¹F\Ä\çH»\í.>a\Ã8\î+š3w³6\æ8¥Õƒt\0f\ÈÀÆ„.y<\×ltG=X)Œ®u\"q3ªÿ\0\ËZX\î\Êw3Z>Z/+#…9 Ò±´dš\Ñ\Üi™¶a•y=\ËH®¤–—m§J’\Ã+£\ÂxJ[l´Õš,\ß|A\Ôn\×\Ë7`\êm\×aü\èm™\Ç\rN:¤Q]VF`d‘\ß–\ï¡h\Í9U´:«}J\Â[KS:N™·Aş„ûŠòy\æ¥ë¸å›½JÕ (—±\ÜÇ‚Db¯tg=·056«†\ë!÷\íWmB/\İ(Kn \İ\ÉşM¡¦:\Ş\Ê)P³Lªb÷rri\Ô\Ñ\Õ\Ù]ÜªM+#:\Ø¥OVLÖˆÙ¾\ÕtÉŒr)º•\ç9W›\ê9>•I=\n¶‡%ª_ÿ\0\Ä\ÂpªSd®S»¹\ï[\'¡V\"ƒ\\¸±?,\ìş>aM*q–\èuÆ«.¨G™#0^~Z{„`£±8\à–8÷¥b®&ÀR~œQa\Ü\0r÷¹¥`»b\ïW9òù?\Üjk[k–pG¹‰œ¤JDv\ã­+\r\ç‰ œ\É\Ó\éB@SkŸ7–9/@˜†7–=;ô§{ŠÁ½dé¶€;\æ°\Î\ÒJ\Ë÷¡=ÿ\0^Ÿ(\îh\'ˆ->\ÎWw\Ç\ÊòºjyJ3\ï.E\ÅÔ®É“+“œ\ã½;ˆK¿¢ş\ï4\Ğ0\nøŠ«\n\â\ã\çH.F\Z\ÅßŠ`g?Z@9¦2`ˆ1\Å;\0‚M”€F˜ô€±o¢½ı¹˜E#¬g\á û:ô¤1nô94uV’)#óú,øõªZˆƒ}P…Šv÷Ä“üT¬\r›)\Ø\Í \â€&h°\Å\Çfí¦¤¡\âN*\îI¡g¦µ,pG§K$²d>P\ã©?/¹ô¨w\Ühš}?I·‚{˜`x ™aQ\çyyùI-\Ó8\È\ãÚ’¸\ÃL¸¶\Ô\ï µ†\Ş{u½“*O\æ6@ùx\ã½6´¸„o\Úx¶Xa\Ö\á¼\Æ\n$†\àH\Ã\'°\Û\Í°Xl¾¶ğ gº\İpZWH­­›\ìá‚œ\'\Ó<\0=\éİ½€•ü;iwc$\Ë\\G‘t¦—\Î8ùù¸=G?R\î\â2\ãğ«†B\ÔB\Ô\0	\r $\Ü)ˆCÈ¥`²•†(¢ÀmË£\r:\ÈZ\Ú]Ø“| \Ï~nUw\Ø;…ıO\ĞT\ß]@,\Ò}#Mš\Ş\rB\Şšur\Ğ],@®\Ò:÷\æ\Ø³\Ôn´ıB\Òk\ÍJ)bµ˜.…\ÖÓƒ\Î)\èÖˆEK_‰WÖ·3]¡†\å‘WgŞ”\ÜP\Ë\ì,nšÙ¦\Ñ\ŞD¶²»*:o%X“\Ç8¯óZˆ¨eÿ\0„y.g¸¹Šk­U\Z5·¶]»†f#œ\ïOq™L\Õ„\İ@	ºŠ\Z	\çP;\n$-ÓŸa\Í°\ß\İ?•c\á?•\0uZw\ÅÔŠ-%.\çfû\Ò¤h·e8\ÙÛœ{VN\ØdºOÄMŠ a[C“u÷9\ÆzşT8\ÈB?\ÄK9\Ä\ë¦¶·3¼l5¯)\îC §+‘\Ï=0h\å}€µ\Æm\Ö\á<¨¤Xg»vD¾XT\r\Åpr	\É\ÛK‘ŒŠO‰:a¶²Arª¶\"!-°\Ó$6[¸<{\Ñ\Êõ&\Äw´{«mD\Åøš|¢\0a\Âc22Æš‹\Ğg!µ›øO>Õ¨T§PGû\ÜPg43@\Ú\0µofmÀ\ç-\İ8 D»°\Û2Ø´\0™`»·¾O§\á@\nC(\Éw\ÌJ\0²>l¹\Ï$s@\nI\Ï\Íû\ÃÁR¥·I	ü Š`[0\ÇÍ˜\Ï ğh\0\'\Ë\Ùl\È\0¢6‹h\ÉùF0 Wpv–%—¯#¥  ¹²İ™zó¼Š`A¶€\r´\Ô\Ãğ…^0Mò\Û»:ŸÆ«—mNgˆ\ßM+o\Ù\Ö\Şö$?\Úo»¼•·u:\Ö©gc¦ôS9½\Ã\ßğ€\ê—6BD—\ì$bV_,œ€zU\Åó+«\åmcÜ«\æpü\ÕB$Šõ&\0\'\î²\æ€·bŒOË²€¾QcŒs°\'^(,2·\Î@\Ø>\ë)Z\0ú0:¨\ÏğÈ¹ µú\ÆB¥@½+š\0#¿\ŞN|µ\Üz¸4\0z%Ş¤&\á\ÔP\0PññQŒ`\\pœrŠ¥;³7J[cøñ®\ÚD¿*\"cN\åP\á«4Z+#6÷_¸ñEÌ—WR™f¸å§“ŒöªJ\Ú ! óöüsŠ\0_´ûÎ€\í;}:\0O4\áüsš\0(\0 €\n\0(ÿ\Ù',200.00,'5827',NULL),('C20001','Mr. Robot','ÿ\Øÿ\à\0JFIF\0\0\0\0\0ÿ\Û\0C\0		$-!$3-663-339BTE9<N?33HcHNWW]]]9EflfZlTZ]Zÿ\Û\0C##F((F–dUd––––––––––––––––––––––––––––––––––––––––––––––––––ÿÀ\0\0Ÿ\0w\"\0ÿ\Ä\0~\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1A\"Qaq2‘¡ÁB\Ñ#$3RTb\áğ4DSr±\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ú\0\0\0?\0\Ê\rù\"\rºA—FØ®´\Ê³\Ìú¢ktÿ\0\êv²ß™Ve\áùğ\ÆDùaˆ³39\î4ù\êB!µ´ù¢¤\ŞÌ±_ô\r»z	\0PT``2ˆ\ç#›­\ĞT\ä÷|,6)ù%\çÓ¡\ÕiÁÀ¸”,–8d\Ã0s\ŞAVbRH\È\à$Ò›=²–>¨3„ t>§ÜœÀ\Şî´¡\àZ\Ú×½¬ˆ‡R®‘p†N¬¦°:\ÜÉ…\Äm9\ï\çt®‚\ç\Ç\Ì(\ßOo\ÌêµŸÀu±\Î\Øy_Qr\×9\Â\Æ\Ûë²Š³³\ê\Ü\ZM,M„‹\È\Ô\rf{\Í\ë¯Ty,‹+\Æú•!yRDc²H±\ÙHØ®±]HØµAY‘ù®¦–’š9\Ü\Ç;‰²´±ßˆeõ\ÛO\És‘Á¶‡O\Æ=\Ê\Õ%­uˆs®\Û\Ş˜ôA¿U\Å3D\Â)›Pö—@\Ó\ÌË¦şå“ŒVó\ê\ØÖ˜\İC,N\ÃûÀ7\ÏÁ;øl€\ì±OplØ²f\ß\ïF0 2÷e”Ù ‹òQW)±z!3\\ø\áÒ¢nöGx•\â˜µqC,2¹\Î$Ùk%Á-»Œ\Í\rüe—òH`&LÑ¼˜º±¤Š\r&c4Õ±I6	y\çb‡(}·($\Æi£\r¦\Ç\Ú!s9ô3#\'\ÍQw\r\0\\[½Û›\Ì\Û[OO%%\'\n³§§y\Ì]UPbp‹»f\åº«]†ıµIdÏšûX?ª­TÇˆ\Í\áü¸\Òc7±\Øøfšš9T\ê¦\ÉKl\Øu4|·›s¸T±|˜!5;ü´\äY\Ò\êN€ıUF`akŸaHbI­³\ÛõF\æ ˆ±$E‰ •°)YÓ¶+a·æ‚¬p\æ#R€\×ÁOÏ¦Õ ¸[4Zh…\Ô\Ú\İ7*F³º,Fƒ ·D7ª\×ô\ÒiøXm\ã\ÑÄ¦ª<w,ß¼ob¬\Ék‚=4ñN\Ös,2û6ğ@gve.sšF±¼\ßM\Ñ}ñRIı4\ï\Æ\ry[R\íöC-tc\Ãe•‘ºe“‘ş($û\Şw‹:i}2H|lšZ§c›¯ce\Ü@\ëtO—5É¿ˆ¿‚‚®q†\ÓK)aıU…\Öo¡@q\ãus\İ$3½x·2÷¸ğUªk‰Hd–G9ò\ï,š“²78\Ş\Ä\\\ÈÁp|FŸDoğ\Ísü\Ã\ÑnM\ŞÓ¿óN;Fg·C\ŞÜ©W,IH`I¦Â¤l?4›\Z”2Àù\ØíŠ–™§<O\ÎË;\ÃC¦¾\åJ³µ\×c’B\ÊwBé€µL2\\B\Åss’|Jl…Q·şiÏƒa´°\Ó\È+X\îl•#šA¹·\çğG„ö¥ş¢<\è\äõ³9\ÆbûtjÀ-!,\Ú \è™\Û\ä\ä÷\è\âwı^[uq„e±\\:¸>–Mr›ƒğX—H \ì¤í²Š\Z{µ®t‘XrH¶mµ¿\Å\r_iT\\CƒTJcšh\Ü\rF§\ã\è¸ò\âŸ)²—\í:—\r¢–¡®i§vV¾!÷$\Üøn§Â¸°b¿h’i\î\ÇÏ–&Õœšoe\ÉX„¯}>H:ø8\Ê\Z\ÌHR5Ù®FIXs¡\'à´\×#\ÃT&«€ö÷q÷Ø˜\Ôì’“\"H,²4\Õ3}–i?\à\Ç\äTbº˜\ÕPT0o$O\àTW›¢uO\Ñ2\Ó\'qLÓ¸h\"Á\Íf\İU–pD¯±°O†Ôµ\Î\0®§\rŠ:Ö€m¨\ÙS…œ9ùNşj\Î\Ã\'‰¥14wŸ²³\Ä\ÔG\n\Äı›´ù!\á\Î33‰²FÀd\æ;ö\ÅTö&{Hä´›•’\Ö\æ^‰\Æ\ìl“˜\ÌOª\0}šM¹Ø¯=cQ[ü‡ç©¨”Ø°4SıJZ±x.›õz—~ó\Ú/\î[Å–*–’2ÔXk,¶ \áb4;„ƒ,Œ¢\çf¨¯1\Å0\'p\Å|ô¯\Z\Ò<€OQ\ĞüU=v.üz²j‰\r\İXò\âNª«L‰\Ú\0„\"p°A²	c©08V\Ö\Æ\ÎÃ€;\Ù`\İM\İ$oAÄ¶2¾6¡|«O\Å8o\0‰uI4·$dËš\ã¡\\\äqG´µ­sñ\É\Õu˜_A-;ŒøU$a\íÿ\0P\Í\'\Ò\áGñü|KMK2‰)/2³K\ÛAõ\\\ÃE¬§\Å\ëY]ˆ\È\"±S»##o€@\"h>k¯\á\Z/³\àùÿ\0‹‘\Ç\á§\Ñj‘e	‡}ÛƒR°La\Äz\ëõVQ£’Ë™$r(\ë1°zIešF\Æ\ÈXo,†\İn)\Û6\Ânty\ÍD\Ñ\ïMEŞ±ó;.?\í*£´\ZdkcŠ—Ø£„\æ§Ä¤—J\éÊ¢B34(ÔŒ9šBÜ¥\Êzj\áN\ë;PTF\Ès \éğB†9š\é\Z	f¶&Ë§Æ»Y¢Â°9Œn|…¬Š?\Ş;/0\çº#\İq\êuC¦öœMº8\İ\"˜Ÿ5zƒ8\Ôñ@\İ\ê\Şñ*œl¹ôV)«\å\ÂKf…\å’@nÙ£Ğ„G¥:CZ,#\0x(‹u\\\Ş\ÛÄ€WE\Ì\ÅÒŒ‡\Ş6+ ¤\Æ\éøŠ>e<­‘£|š\ê:,ÆªV\Åt‘µ¶I–é¥\"´\É\ndöºm‘G\ìmû\É<_Ü‚öR5\ÜÏ‚ Cn‹7-¾©\Ùvş{!y@§1Mk£klŠ8\Û{ú\"l¡\Æ\İ\Õ$\Å(‰ó‡=Ó¢–›\Z›”Mñş8Í”Nmı\İS_7¹\×\àı¶\Ã^9Uùa{F•Œ\Ó\ë\àR\\€ş\ÊI‚\×÷¡(‘ªÊ“™\ÔlSY8v_C\Ñ)Ã²¤[”ıRµŠl\å†\ã\àS½\âM¾h,œ5\á™S8\é\ê3¶@ñ»+‘D~hº6huĞª\"ˆ†\Úx$‘Ğ¤ŠmÓ”È¦Ø¦!M—0@­œyµIK†IŒ\Î\Èbht“›ŠŠöD\Ö\æ#ùº\"®­{ƒD—šAşi\ÇW4kN\í3{;mÿ\0¾ª‰ajB µ\Æğ}d,\ÒGk\Æ\Ñ{]U–L\â\Ç±cº$$/ÛªhQ	Š@2\nK]\È\ê=Qmt$\"‹¤—D‘_ÿ\Ù',250.00,'2585',NULL),('C30001','Source Code','ÿ\Øÿ\à\0JFIF\0\0\0\0\0ÿ\Û\0C\0		$-!$3-663-339BTE9<N?33HcHNWW]]]9EflfZlTZ]Zÿ\Û\0C##F((F–dUd––––––––––––––––––––––––––––––––––––––––––––––––––ÿÀ\0\0Ÿ\0o\"\0ÿ\Ä\0†\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1\"AQa2Bq¡#‘Á$3CR\Ñğ4±%Ebƒ²\á\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1ÿ\Ú\0\0\0?\0Î¶z2®§.\ä¹Ë°’T\î\rºú\âº\Zj)¡Vyùnä†²,<­ğ¼O5sª-Æ*,-‹²úY\ç©^Sh\ì\ícR~‡ÈŸi\Å\rk\Ú\äºİˆ­¿÷|]ˆ2ÅŠ—´•Z˜\Ùİ‘-¸÷G\Èù\âØ³Z:Š¥@Y\åW¬Ñ£˜|\í\çÍ²oµjİ„ı˜\é2>\Ûl<ñ<½,\ç\Ş¶GO9•yÏ¦(ƒ¬±.½Wó¿Kb(\Êõ\í˜Ê ½µrI:m±ô7Á9D\Â3p§~`:Bú`)²“¶ub¨m¬m·µ`ø2,¯EÖ±\İ\Ø\Å.m.˜ƒd™k \"²Hš¡ˆjZˆ‰Ó·õÅ™G\İ\"0\Ñ\Ô}ˆ=,=Ÿ\Ù\"\ÔQ”\ë\È7¼£Iß¯\é‰j\ÎY™ò\n\nGTz ÷´\Èj.-{ş–À«MM%8nÕ¦[5\áe6;o\ë¾M\ìµ\æU´€ˆö\Ô6#\0\Öû?ª K)\Ö\à#|Y\ÔK\ÍUJôª8©utPZ2—¹ßº>|ñª\ËxJ>jc™ôHM†››<fh=–fÃ€±i\×\ã)¶6œ\ÃRQ\ÓVÁP¬\Z‚`rt\Û\â\ë6¨\à¸\î5ö\ßXµ°ª·†Ò˜‘p/ño\ä\áhœ{¶õW]\ì\é&7\0|*c`Cû¯1k\ày8†@­\Ë`9¾ôDğõ8\Ğg\Çe\áJu5°\Ú \ÌO\Ëi)ô°V÷º\éÅ¶VfÁ¹U|V‹©‰™¯`<ñô(xu5‹‹·fp	;c•r²i\ãz„\ép]\ã}OKo{ı1´\Éiki%v¦–9(¦<Á=M\äg\'À\×\é¾@qW\ZB\â/»d6\Õ\ãl\"“)0Bfrº_b÷ş˜\Õg™zVÀ€M9ı\Ü`›\Ø\ã!S+M,»U-²®\İ<¾¸\Äl\Ï&\Ï#\Ë\ê‘c\n€o\Î~ñ\'\Êÿ\0<i\ê3uh}–Ac0\Ş\ãª«9›“N‡™+û\Ñ÷H¾6£ \á\êU\íR±v\ë\n–%n:›/Šug;–b¹ò´\"\ê–ñ¹\å\âXİ–8£b/²G‰ó\ÚmBE+\ë{EGH±F, ñe°,OR@\êÅ—k÷@ı0¾M`Z\åOÃ¾\Zeğr\âw¸=¡®\nü±¾\\úZØ¦KY4\Â1®f<cX,[qå°\ÊgTx†D´¦c7«—»¯M…°N\'\ï}\Î÷Ç´Ù·i+\å´\ÜX\\a«ğ\ÑË¡µ¡E./|jds»jœ£#ˆJ½õ%O\î\ÙI\Ã\ÊlÆ²-QÇ™\ÅeÍ¥i\çQ\éˆ\äyT5\r\İ#[\r¥Qp\Ç\å\æ0ò~Z½,jÍ¬³ \ZOşc=\ã—¯ R¸\æ7^\Õ3ô´\×#\ä=1\ê{\n§Ay54=0ÂT\Éc\åˆDf‰û¡« ŸµG\Ì?\Å7\08\ç1\Ö\éd\\5B\ÅKŸ~\Æ\äüğ¶¿R òi–¢O\ç/¹ù\ãSYIhš^\Ût/¾TğM.f{ö:<F\Øa+\ç’\Ïk”Ö†6¶¸\ä\æş7q\Ã\Ü=˜f\Ç$õrµ<Fú$$\ê>¸Ó§³ŠhU·?`˜ò5¢\ZQ@Uò\Å#›ñnjõ’½,†:gv#\"\ì©ıq®\àÊª¤\ÈÄ•S¤Âµ\Ë\Ç=ş/\ÌW7S™Ã˜Ci7óÁUÙ™\Ë)UbQ¦“µ±¨\ÇK3 —ÿ\0¹´\ã˜\ç2\Ö\Ô83EhšÃ˜\İp}Éˆ+\ÓÃ¦\Ödf\æD¿S¾71\Îè¼·†:”\ëk\á¾b#¦ˆ­}S.b¬Ë–\á|–\ÃõÁ44Yš˜\ä@\ÉT,Q†\Ç\raöoG‘i H7V¬û\ÍÀO3jÉ¥\ÕPª\Õ\Ï#\Ã\í<›3(\éO®5	£¢ nıCX\0m€³\Üû\ìi!\Ğ\ê£beñ[\n¤\ç\Õ\ÕC36²\è\Æ\Ãk‰kPŞ¤\ÍG›S\Ï*²S°0òe7:\à\íò¶\Ë ¤‰½İºúbŒ\È-YX\ÙY­ et\écŠó:\İ+&“û¿Ÿ9º¬Ï‰r•\r÷¶#j\ÂÚ¿\Õ<°µk¤3¶¢Ò†7\æ\Èy›x`Šœ\æ<lÃ¿\ÓV\'¶\Ìz’Ô¤ ‹\Ì|N\Ø;š°\'y–ÿ\0;_jş/Zªb”Ú„\Òö¿t\ß\Ó\n \Î3¶PZ¢Re\'»1.=z\ãqšú,¹\ÊS\r\Ø\Ò,ª¾~Xöj=]Îœ°ø\Èğş~s\ì\Ò•Ÿö@]‹¿±i\Ï\á~ö¡CF:\"\Î8YVò\"€\Ë\à¸Q*ŠhÁ¹?5µHµŠHx“…²ğõ=A³\Î÷M±\\\Ä\åĞŠf¹°\îXø`:\ïøˆ££ŸH†I[	Q‚_›\çŸd\å¦\ÅÀP\ß<dò.[™*82%7~JhÍ‹\à>x•®c~¹õ7µÜ¿L jb•CK\'\å€3e—‡\Ş\ZUš\ËQ,k$\Ñ.F\à\0|L4ûD\Ã[•2Òš~\Ú\í‘\Ø\r‚\ì\r¿1\ÎøQj*\é&e‚u‘œwºq\à\ìÚµ²}\Ô^\çl#\â,úJ$\ÈNMJƒªSbO—û\áöw–”5\Ïqƒ]v\Æ~¹8\Êo\Ø\Îò\Ì5½vé‰ieTuÒ´ˆ\åš\á?@<±\æq\'\ÚaQl\Ì:#x\\yK\Äñ\Â\Ä2¨\Ô=\æ`7Ç[š\ÖvV7\ÛÆ¥\Ò÷\È3Jq¦\'¦º\Ô¿^˜\\“2F$UD\Å7(|?`™¬\é4\ë\Ü\"\á=N_S¨£\\ŸRª¡\âyx]\ÚCf’U\ÒKù`\ÚN#’¨™A½·+{\ákoˆ\á\ÆSJµJ@ jøØº\Ä\çO¡\â‹Cgò\Ùp¼\çef7n½-ˆT	i™† !{\Ú\à\à.\Ó\ÚHú+\Û\rK\Î:¯‰ˆr\ÎPk÷»ŸmŠørirü\à\Ût€Øÿ\0®v†h¹b\Åe\ßl1\áüõ2,ÎmJµ´bIÅ±eT\\sušÒ´SN\Î\Ò\İ9aZ\Ú@¿4-\Ç\Ô.4MS\nó>	)\Ç\Ìk»_	ISMvU”–	\Óû>£‡2ª>$\Í@\Í*Z(Şœ\Øù_\Æw}¾¯Y™\Ç_BPHq\ï\'z\ã\Î\Ø\Î?–šH‘AY—Hop—:\áø¸\'7Zlº­¥§«Œ0,üÖŒù?0À\äsS¤“­f§;v‡K‘\ë¹\ëë‡¯–\Ôp­|’\Ë,PMj5\Ô]RÀó\Âÿ\0ñEDmw{ƒğZ\Ø0ñh\Èë£šI•­Ë•ec/0¤\ßo\Ã\0U‡†¢X\ßv…\È-o#\ägj\å\ã™ôü*|\ÒL\Ğùj\êØ‚\ä\ÒHª\Åôf\ZA\ÃJ?g“L–6\Çı;u·3‹\ä Õ°+\Ş\Ò‡yD|?K®J‰:)\ß\åœ/G\Ã\Õ\"™\Ø4•\è\â6\\+\Ú\àı0Æšµx—@\å!Q\á€\"OÈ®1\×6ºñÔ‘ğx\ÏiH\01a´‘w¯…?d§J;R•Y<@¾øy•\Îia0«”ŠB¿2—6ò+¶V\äRfu^\Éñ•­ıô\Æ|izd£¨°Ü¼ğE=rC:¹ş[\Ó\Ëbk1;}^|vqisş9§\â\ÙÄŠ¬9¢çµ\áN+n\ZÎ„‘ª¸«ºˆ\å\Øôù\á+\Ò\Ës­işpE°\ï‡Ö¯!H’—ö«r\çÌœw‰·\ÈZŞ£L§™\Îr¹\îhŠ°Ê¡šˆ€\ïŸ·\åˆTf½›&–hg´òİ€·Éš\Ôd\Õò¬\Ì\r\ÛQ\äj‹\ï±üq\ä™\éY””)›UŠ\Ş\ç‚\Ò\'\Î\ÖU\êNø\ÒPğ_OGey HHŠ­\æo\Ğc;KÍ–uĞ¼­\Ë\ÕV\æøl8F¿0m(ğ~È¶XVMÀ\ÅJl´G=TY$6\Ñ\ÒÓ® #SšSd\è\í1€\ÂÖµœ$ªÈ³,–0òª°&Ü•no‡—÷\Ó\ë©Í“½²o®(ÿ\0¦	PGÄŒ\ÕT²|‘„€\Èö¾\ØüÀŸ £2s–X„”Œª³o\Ã\Ï\å\Ä\ÓS°yV(\ëT42XaMnO\Ù\ærfU×¸—W;P·˜\à³cS–qLy\ÕDR U\æTrI\0^\ŞJ-¨\â\é\ä&(A\Şş¸\È\ÒffJ_´$o\É\ê}1Í\Æ\ÍÑ¬z¶¶•˜ñe)”T\ÅÈ¿7X\Ño\æ¾\ß\\DË¨\àŒ­¿æ”³§ş\ÃNªø7‰ij\"†h\ãv\Ï$h’™9Ôµ…Á±°\Ø\ËWğ\îuO˜ÁKD¶í‘´©Q+\Ä‘nc\\l\ÇC‹r\ÚÊ±\ÆK)\ìKš\Ì\Ë)[\rv7\ß\åm±\ÙY+Ëº ¯\Ûñ8ŠYYM\ÄkUESÿ\0O„K*¹IAˆ±\Ä^\İ1feÁ¼A\nE5dh\Í$È«,n’8v±Pm¸½‡\\S û&}\Æù\ßùF\Ìi	\Íç¨ºÈ¹•(—\'\åõ\Øim_Ø \n\Æ\ÏxJ÷\0T¹EJƒ¨nE×¦	‡2\Í\ë²ó™!²Ç¯\ïd)\Ø÷¬:ŸŸ\Ô+\å3\0\Â\ç9¨;yi®¦Z7\àú.lÒ­M4“˜¡Š\×+}G\Ã]&wJòf³ù|\ÍÕˆ/º¿\á‹ƒˆx^³’\Å{F`\ZNU4©1<±¿N„_˜\ç\É4™ \Õp\íAoÀ\â0ñ_q\ÜÕ´\Ï4¼¡Pò\ÅX‚1ª\Çac¸Àñ\Ít\ìV\ÅÏ\Ò¡kmQ\Ó.M\Ä9§hU\ä“\\²4‘¨\ï-È¿Ç–	ª£Š²5‰µE–\Åeaü¥œ¡UEWG/\ÖCV\Ó j\Åtj%İ´5¿†6¥#§\\v\ã¦+Õ‰«_-\nGMñ\Ğ\Õ5Dr-ƒS0`\Ì:q×°\é‰GBs 9Kr[|P\Ê_k5M\É<FŠ¡¦\å\Ó³;\â¿ó2X\æ‹E=2GB¥ˆ¶{\Æøğ\Ãi¸‘H\ŞXôp›³•\æ¯t{\Ä[[Q\ÇR\æ-*‘%dK\0Š\0T*·\å‹j}£K˜÷p#™‘\Úhƒ\åzsŠiòV\Ê\åÕ©\Z\Ã\İmº\â÷FY\"0{É€£1\ã\ÄòùpÄ±\ÈdıŒ­S¾(›4\í4©L]4å¥Šº‚jµğXË£\îT\'Ÿ\Ò\Ã3G—yqa+r>¸—\Ú\æ0²˜iÑŸAi\ãS\é\éˆ\Ï\ÇFz®Ğ”\Ô\êò+z`WV¡c}ú\âô&EC¦1©}Ó¾ª 5’\Å^Ácß¦\nµx­ãª¥›\\lr8‚£lÖ½õ\ßGÄ‹•Ó˜:i’µµ°­Vm\Öğ\ÅO\Ã\rNŒ\Ü\Å<±{lwøl÷¾ñ{„\rÅº\àF\Ç\Ï\×˜”´=–VP<£\ï\r¯ˆ\ÛG\å€ó‚\â\ÌRv(û\Ö6v¿L@ü|ñ\Ø\Z°TH$\å¨\ĞAÓ¨Is\Ä\Å#Ø’K§L«WõÇ—õÀ5D\í7‘U4—·–\',J÷VXÀ‹s§\n/o‚¦ŠD6£$ó\Ùn\Í<k—®^\ÉeÉ±\Ôo|JH;:>¤Œ˜{\ß\\™œn.\êŠ|‘5c\Ç\Í-\ËH\Íú—K`EÖ¥„q‘rAo,B({e\Ø*X0_\Ó\ß13-´F¶ø¢\Z!×¡?#€e!²‘¯;½\Ş:\0Û¦+9ú©\Ö`^–\å\ß\ë\Ó\0F\çólAo\Ë%¨X\ã\0\ÒA=\ë\í¿\×.1.\ÒÌ¥ul~CN£ú`?ÿ\Ù',150.00,'4481',NULL);
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
