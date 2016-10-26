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
INSERT INTO `movies` VALUES ('C10001','The Zero Theorem','ÿ\Øÿ\à\0JFIF\0\0\0\0\0ÿ\Û\0C\0		$-!$3-663-339BTE9<N?33HcHNWW]]]9EflfZlTZ]Zÿ\Û\0C##F((F–dUd––––––––––––––––––––––––––––––––––––––––––––––––––ÿ\Ä¢\0\0\0\0\0\0\0\0\0\0	\n\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùú\0\0\0\0\0\0\0	\n\0\0w\0!1AQaq\"2B‘¡±Á	#3Rðbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿÀ\0\0\Ü\0”\0ÿ\Ú\0\0\0?\0\â	â¨‚-ùC\ê\çüÿ\0J\n°«!@@<Jb±*\è\Ó\Ê8‚^}\Ð+“E¥Ij¾\ÞOœcs¡\â\\þb°\æ™(X¬\Úñ¶¢»\Ú\ß@\Û,e³|‹\å\à©CÖ›\"ò\nA\ìx¦+‰öb\ß\Ã@\\Ÿ$£+‘ý\ä¨\Æ=¤–­‡FOiF\Úq¹Áÿ\0\Z\0’Tfp0	aÿ\0,¾jHbf\Ê“€c;ŠLWª\0>ôz@.\ãaÀ9\Æ\ãWr‘U\ß\È#©\Ï8sšMØ¢Ý´~ty\é“Òºa«•b6!q\Åqao\Æ;-a¹\Û\ï\íL–w1\ÆU#\ë8[¤È…\Ê1\0€xÿ\0h~FƒE-\Â\Ç,Oqp\r³L\n@\è¹@ÓŒs\Ãõ4Á\Ø\ä\Úpx§q\Í¤tš•­ŠG4\Ïm-\äC\ÌVe“w\Þ\àdq÷A\çÖ‚Y¨“­ƒÈ£Qh\ÕNqò\r\Ã\0“÷}ÿ\0Nôc\Öt›]£[i^C>\í\ÆB0q\Û\×ý1@\"=.\ÎNgK‚\áR2\ÊÐ°‹G¨ †\ÓL‡Ã‘G\Zƒ,s³ºM¸\î;\àþ4Š÷ž‡\ÄW\Í\ç\Ü\É*\ì\0]\ÂÊ»›q\Ë=Z+¤ [Lñ\ç>S¸ý\r–7t¯Ùµ¢^}©¾\Ñ{Å’0r\Ã\Ð\ç@›f±Ó¾\Ú^~\Û\'Ê¼;£\ÈQ:r9žô‰9\ÍS\Ã\èlÐ—?kRZ9\Ø9c°\í\Ïÿ\0«‘MrªZý’B)\n*>•qE¤R™¼\Ò8A\ÐóJZŒÑ´\Ô\Ú\Ê\ÝŒ\ï9M\Õ\Ó.UcE±Æ·g\ïWsu\ÇOdm\á\Î	\ëŒP¥v§Ê®W–cy($äž²úÕ£žd’K÷`qVaf÷\"k\Â\Ã\Û\Ðq@\Ò\ç\è	úSb\ÛF}AK\å\0\Î`”X‰M\"\ì^\ZTûÒ \ÞAºŒO\"F\Óc³.ÿ\0}¸™±?³VnFu¹§`\æ±\Ú:…Ç˜™\íÁ¤\ÑQ›3® òc\ål¼”¬oPÒ£ó¨š\Ñc=»?4J%@ …\ã8\ÏZ\Ãü\à‹\æf3\ÌcŠ~`‘«e¤\rI®]ÀU¶·9\ÜrIÏ§nH­£Qij8ø\n\Þ;8®‹»™A\ß\î9\éùb·8¹jZŠu$·UH\â\Ú\";˜¾Mok±œ’m\ëß¸¯\Õ2Á*öÏ–85=M]œ›-É•óž dÖ¨á“¸ :gµhÍ–`\Ñ^ø*\Ç’IN‚\ßÊ™Z‹&Žö\ÌQ‘•\ÐóqŠh\\Æ¶…\à†ñ\Äp(\ÃLyf\ì*­m\Ìg&Ý‘\Ù\\ü°Ø\ä%ÿ\0‡¬\Ô\ÝõE[Frr\Ûù\"±\îsZ¨Ý˜\"Ö•\á¸õ™\Ù]‚\Çn¥‰=O°÷É ¥y;\ï¼³BÀeVl¡ü*šOciÁÙ£•ž\Ë\Ï\ÝÀ8#;ù¨\å¹\ß G¢ý¨¼,<“J\ÅE6Eq\áól£t“ «µ¹L)ˆI\Çrµ,«ŽóšGnCuqŒŠ±/\Ä3-´{`R%ŽR­¸I†\'\'¿¥o	ò–˜ù¼W©n¦%*I\í]pjJ\è\Ñ;£<³\ÈrsÞ“»\ÈøVÿ\0my¯!£hMl\ÍEø]u¬Z¥Ú–\éÀ•Žw63DKœ.ùns\ì›«uCƒŠ£‰\îZ† \Ú6\âNAaœU\ÇS)\é©\Þø\Â\"[y®÷\á¥}›—ŸZS±4\Õ\È|{\à\Ë\r<3£2ñNõcœ\àŽi\Óz\Ø\'J\Zñ\ZN¦’±>S69ô5µMocžü²Mžq\ã[-&\È\ÎÒ£ \\ˆ\Ð\î\'Ú¹\Ò\èt:±J÷<\Ö\çSW2>?\ã\à±\Úy­\âùNH­¾ñjxnù&‘wFŸx \Í\'ª°\ã\î\Ê\çA¯üC\Ónmcò]dò	mÑ“\éÓŸó\ÅMj\Ê\Ä5R*18?\í%Ww™œƒMI\'vm\ènø=ô\íN[›;\ÄM×«˜®r¸\ëƒúþ”\ïº6¢ô±›­˜¢²À ü\ä¯oJ²ª\ÞXY@\àg\è(©¦\ÄCRk+Æ°»¤H~\ÒH\Úý?…J4[\"?(\îý\ãš\Ú:«\Ð]ü)¸\Ò\ì—R&?.ð\âH`ùvž£zê„£\Î\Ò4V¹‘-\Ôv¯µº¯e«sŠvcn\Ã\í´{=KO÷‚;…\ÎXœgžõ\â¶\îkE\Åw7¼0Ÿð›[{³o\ä»I”A\ÞH{ô<{\Õ!6\á©\ÌjºGö§ql\Ù\Ý`\ì¬[žA\Å2³z\ãû9ò	ü‹Úª.\Ì\Êj\æß‡þ0?\ã‘~lW$08!±ŠrW2MÅ\ÖüQª|T¹y›#ºª*£‰u\"Ÿ¼È­ü}g\æŒG»¬w’$_\Ì\ÕjD¥X\Ù)Ph\ß\á{…aú\Zf\Zvp\Ï\ìôpÛ®­ƒ?GN?!K\æ;¾\ÌD\Ó<‹\Ûlú(sÿ\0²Ñ§q¹y~Cf´R¼\ÞÚ®{\Ì\\ý‡n\åE¶öM¼,³6F©§Ýšfù­IÒž›o\n\Ë\r½Ýƒ:Cv€\çñ\"š&ý\ÐËêš‚¨hŒ¢/º,n?‘4\ì\Ã\ÚÇ«û\ÊRi—:[~þ	c\ÏñÜ¡ùÒ•ú—E\ì\Åm§M¿ñ/8\çšH\Ð|’‰¤C\ã\å^:Š\Õ=\0\ì¼O\â4ˆ\×I´m\Ð[·˜ó/óm\Æ2OJ\é¡\ß<·5Š{³Ši¬I\ê\ÇÖ¡»²-úÀ¡J\çoñ©\Åyö4RKBö“z\î9òú0äŠ™loE¦\È5i\ï$šW\'\í.[Í—\çf\ç­4eR6‰r—„b0\Æ÷¯\ï\ÐU\'c	\"D¼–\Â\ÈPŸô0!þUi\É\ìc(¢;Ë‰.B“,­\ê&rÿ\0Î†¤˜A%ÐŠÂž‚\ÈÒ´&4ÿ\0xö¡­.sÌ±2ùQ„‡ßŒŠµ¾¤\Ù!ªò\Æc\éüDm¡\ÅwH‡PM\ëŸù\åP–—.‘—\'Þ¤t¢Å•¾	\'\Ì\Çõ¡¢*;\è-\ÂE›v!(\Ø2Ã†üªý›O¸õ\Õ\Ò\"\ÑM2\Æ\ØÜ¨£T.[½Q\\\ëò^Ÿ\ß$snþ))ü\Æ\r5&÷6QKb@\ÜJIÞ„ ?½úZ\Å+–‹ýZ+\Ü\Í\Z \ÝüRõ®\å¢7f—*½\Íq\Êj\ìÅ²\r™\ï\\#±5¦c™pqž\â“5¥ñol\Ú9˜\ÈwÁ¸J})#J‘³w\êTBm¤ÿ\0wµQ\ÎÑ³¤xq<T\ÒG$þ_\Ø0W\ã+þq[Ó“±…D\ÖÄšÏ‚m´XQ­®VbO\Ï\ZqùDÖ·3N]Lu\ì\ï´ÿ\0zŠn\êæ•¬[\ã\Ü\Ý=U½Óžo[>…\á{X2ºª´RßŸ”\à¯L\Õ\'b\Ö\Å\Éþ\Û\Û\Âø‘@[i~§qš|À\Ñ\Æ^Åº&9<\Åf¾)½L–{\àw©:‘§e¡ý²t·ù\ä.G\ç½]½\ë§\Ì\îh\ÜøM¸•š¨‚³|°»·\\Uòš—\Ñe!>\êœéšŽ\ìPÕ•\í´÷º%‚\äD3WN-³RXbó\ß\'‡\ëšÞš»4Š.*—„†\êNµÔ¶4[’Dž\rp\Éjd\Æn\ÆQ-·2ŠLÒŸ\Äj\Ü(’‰\çn\Ã\î3RŽ¹ôE\È\Ä\Ä2®×„a±\ßÞ¬æ¨‹Zf«ö¨g8\ÚN\×n\àðj\à\ì\ÎjŠ\æ­\î³4\é-´Œ\Ûc8ò\ÉÀ>‡z\ìTù¢sµ²üL9¡ù³\Üpk‘‚\ìZ³¸¡\ÞaT¶fU§Cf¢}q\Ç\î\äˆ\ãð\"´¥º\ZøJ‰IS÷‡jÝ¡·¤\ä^\èýk‘|,˜|HÍ†1\ç\înü\Äý)Gs¢O\Ý6tøþ\Å\Å\Ñû\Ö\èB\çû\Íò\Óqª†®âŠ²)¨\Ãdô„gÊ´“²¸\Þ\Å\É~\Õ\"¢žƒ9ú\ÖO¢5evL\ÙÓ£!!¤\êº¹6Tub­¿’¨\åzÖ°\Ñhn‹\"\ØG\n¶%A;G}\ÄV°\êZ2¥ù$#\ÉS\â2{Ž‹Hk‘“Àþñ®š\Æ%‹Jû,ŠA\ÎãŽ˜¤Ù¬!i\î]\ã´,ý\Û)ÃŽ\ÛM$kV\ê\ÍA0¼V-\Ñž¢©ó]\\[-%¯nV\Ý~\Ù÷	\ã¯ùý*‘\Í3yüw4PH!yDñ\án­”\á\Â÷ö\ÅtFµ‘ƒ‰™\'†\î\'RD9,3û’$¬œÔ¤\ìC\ÓR(-\ÞÑŠ:2œ²A¶œz“PÒƒ\Å\éö¯nqt\ÊKH7p;~t\ã;¥d6]RxÜ®c\rûÐ€j\ÝVž¡Ì¬W»R\Ö\îpxz³_&\ÞD\Úg\ÂOP\É6\ÞWž¢\Â\\Jžd“fówi\Zw\n¯ôk/Í¶&(“2(\ÈRx\ÇËŸòiÆ¥º±25´’F\Í\ãÌµùÁú\Z·.gb%+\ìT†\ÊWs?’Í¸ü¨\Êpjb\Õ\î\Í^š\r¬÷³ù\ÒC´Ì¹T\\ ­e>i\\¨t[«¸Ì‘D\Î#8/\ï1ùU©šÜ¿…\ïm¬by\à–$œlûEÚ˜\×;‰­©M[Ì¨³ö\Ð\Ø\\º:\É\ÔVUm\ÌL·7´-\ÏQU™9+oV\Ú	,Gp1÷EpØ®{lux\Ã1\Þ\Ü-µ²\Ú*7\Ø`DPÿ\0(9`Fy<aiföFN­ðø\ê‚\íQÛ˜1\É\0(²u\Â\ã×žß%¹´§x­LwðmÇ…Ô«4r#aœEò‘Œ\ãœ.µ|¬Ë™2Qøn\Ú\Þ\í¾f\Ö\\ª\Ä\Ã%P9üz}3A“\Ô\ëô5®¬Õ¥,\×Q\É\äjV\à\ÈpÅ¾\é;QkŒ=N\æ\ß\íªC¼;D\Å’7g\æ\Ç\ãú\ÓT\Üe\ÌsÍ§£2µKo\ìûðŽpc·Tù¹\çª-ƒ³Hd‹Ó³^Bª`Ö®\æ\Ô\ÊË©r\ïÀ\ÒøMP\Ë8\É0²\Éõúv¦©©^\ÅJ=\ÊWöY\Î\â\Ü~µ\nö4Ž\çI¿´ñ!Y\â”	bhŠoŒ(¾™\ïYZV±mEË›©sY\Ð\î!<j\á¬A\ÂBBdü¼òy\ÆÚ¨\Æ\ì\ÒwQ¹\Âø‡Ã‹ _JYR\é|\È\ã<\Î?‘øUEY\Ø\ËNb¾\Þ@\ãyX¨+o1×ŸJ¸+…f“nú¶\Òa\Õ\Õe‰#0hXú–)\Úû«8­N“EÒš\æ\Öqr|\ëi\Ü/\Øc]ñ*ó·\å\àßŠ%\é\Õ\æ¹-Ý¤zœm­-euH¦oº	\É\êw`•T\Þ\è×˜È‚\Ò\×Ró,­®Qq2†ÀÀ8ü3[I\'«+™‹c}ð\Ê\à\îŸ\Ë&=Á¬O™\Îq\Æ{ûŠ\áj\ÂRRZm>-\Ý\ÊT5\ä\Îr\ë\ÕlÁ<Ž¿ýj \ír\Ñø¦ºta\ï-\Í\ÓÜ±Æ¥;\r\ÄA\Û%m\ÐT\\\ÏÝ‘xüO\"\ãg\Éû36\×ð¡\ÊCQŠZ½KzÎ›žŸ¤¢Œ\ì\Èx<³N\Ög:›k\äY\ÑDúÄ¢Y$)„H\ß8\ã \Æz\ÕGH\ë\ÜN\í+\Å<ùg’R\Ñ\È\ãÿ\0¬\Ý\Îy\Åi7¢!\Â\î\Å=v\ì\\j!¿ˆÂ Œl\ç&³\Õ\î\'gb[8’\×M¸¸l+\0\Ë\ï\ÇÏ–´‹j\Z	-J‘ø—V”˜\ã»Þ©C:±`{R¼‹² ºã‰•\Æ\nŸZžŒ\Î?\Ò\èšU®£¤Ê²\È\"•Ô š Y•rÓ­÷U\Ñ/G\ïlj~(õ›kY$P²C#\Ë¡R;ý*µ6IX\ÈñÛ‡\Õ!aÿ\0/\Êwzò\Õø…S£04\ë\á»–3‰\0\äq\ëWMÇ©R¤\ç-\r\")X\Ø1š3)“\Ë.\0\ÜOZ˜)s&eZQ\åjûõô·\ÒlP\ç\Ëf\ÈUU\É5\Ð\å\Ü\ÇÜ›}Œ\í3LµÕ CrÁ\ì|±®c\ÜÀŸN§½g¾u:ot\ä\Ò.\äŠ\ÑÉŠ20c,\Ü\àg¥U\Ú\Z•\Ñ\r…­u4‘—µŸ\Ì%e0(^:g\Ü\×,Sr\×`\æbË¡>™r­hGÈ™*\ä>3‘\Îj\Ülô*\í«3b\ÃCÛªKKý´¤D—X\É\Ç\\zT{\ÏC:ºk\Ý1|;|°¤;\Z\ÝF!€ñZ*n\ÅÆ¼Z»Dú\ì“\Þ\éºpUO5—¿6sv¬yõ\"œn´&\ÓüH4\É\ãmBBF\å6\Ý\Ü`dûÖ±nQ*1™uþÁ®½\ÇØ£Å½ÄªU<°09\ÅS\Ñ+™N÷\Ð\Ã\Õ|+,Ú˜‚%5½±”ù­·KúT)&.Wb+‹†·\Ñ^2F¡ü‚;Æª6ï®´´±þ\Î[E®bÜ–I´\í=F~¸¡=K¶‡9©7\ßP§,Nwó“Gs­ntšw‡.4x°cÊ†Va€AU9ýMf\äù]\Ê\Än­ó}nlµ›YJ¬ñk`¬ñÌ€ªGOBxü«]ed®\Ó3<d\Â\ÖkRHŠ<dnaI¿xSW±§Hm¢a~a™v¶\ãü\'¯\ãR›[\Z9%­‘\â\ÝDµŠ\Ö%‰nƒ,\Ì$\à1ü\áW	6¬ŽYPŒ¦\ä\ÆMyÿ\0	|L·$Ÿ°É€Ä†)‘œz\àþUr•ÝˆT\Ý%Ìˆ£¶\Ë%tege‘x\ÞsÀ\ç¥C›Z#¢’ç¼¤Rº¾“D˜«1&\ã\çË’:ó\ëZ§\ãP“\èi\ßk„Àð(\n\×%\\s\\ò©Ðˆ+>b‹\Þy—>Dq³ý ¨\Éù\Ø~]½«5U£¾N)š:ö‹5´\Ö\ÐZZ\Ì\Ð\é«ó\ê&\\“‚{qÒ¦rnOBjC•!GÄ¥·°tŽ\ÑC¢¥\ÎþqŒ“Ö¶º\ìpÚ£—Å¡©¤h6\Z¾¦µ\ä\ËÀŽ|ØˆR~c€?:ŽFÞ‡m9¨E²ý\×\ÃKo\Ì^\Ú\ä\Æ\'P9ƒ\ëÖ²…gMò-D\â-Ÿ\Ã\Õ\Ðm\ÞF»ic™f?)\æ´u\Ü\Í\ÇF`Þ¬þ\×V)‚K-Í‰…š\"Te÷þµQÔ‰>HÜ]°´øm\å\Û+\ÉrnI,26ñ\Ü~ž\ÕT\åf\î9ß¡Ÿ,¬\ÝdKy‹@A\0\ìÒµæ‰•\ç\ä:\çOo\Ä.¡M\Ú;ù\É\È<\ë\ëX\Æ÷h\Ö\â\ÕÛ±\Ôi~4¶\Õ-0«+µ´¾\ê¤þu3ƒhZ;£]|,—S^P\Ü`KÍ€znÆ…7d\Ê\å\×s•ñ\Â.‘¨\Ø	q¶ w?8a¸Óƒo\ÞdUOo#2\ãR‹YQoia\Z<Ÿsì‹†\Ï\áÖ´r\ìsRŒÔµ•\Ëqx~\â\ãÃ­ö‹)’\ãJ;¤,ŠN­`ª\Ê\Ñh\ÏIR‹Šfjj\r}\ÊW\Êwe>d@!Ï¶j¹Ü¥s\Z\ÉSI-n4\èK}f\Ê\Î\ØV”\í\ÜñN\îZ#ž\"žª\Ãgð]\Í\Ëµ3\æU*r¶¦ª¼\ÅøL®@S¶¦\Õ,G\æj,i\ì‘,?»¸ý\×ö”‘+\r¾Eª\í\ã=8¦¢‹\Ò(×³ºþ\Ó\rp÷N\åˆ\Ù}/š>¸õ\ÇIX\å¯Se›J²\Ó,¤žd[…\0o?ÎŒ#9Ji\ÐG¨\ÛX5¢H\ê\êûc·Œñó±#\Õt\åŽ‰)­º\Z–SK \Þ$QÜ§\ï\Ø#ù¬\0þ\\\Z\áqJW:jÔ“i#e5›k\É\n¤©\"¦Ë‚h\ìÝ…¶§){d¶þ\'ž\ê\èmócVò>^\'5T\ÛÐŠ°R‹¹›\âNñ. ‚d\r`¥B<ô~I\á\Ï|VVZ“;=Œv´Š\áI\äõ¦K6ô\ÍR9\ì\Þ\Ù(±\ÎÔ»_(\ÝH\ç\ØU$¹µz\r¶¡¦÷õ:\Ï\nø~( {‰ T™\ä>[Ÿ¼«µ@ü+9\É_B©«-MkM4©\')9“\í\ç&sŽ\ÜV1Iu7rºH\ã¼Uª\ÙZ\Ü\Ûy¦I“µb’,\à>¤n•­;[c\n\É\Éh\ìVh-´\Ç¢®\î\íâ¶±\æ§\'¡B\ëT:|Œ-æ¹xÏ™„\ÎF\0ô£’\çu)ûª\åI|yyqò½\ä“\0I\Å\ß\Ï\É\ëÖ¡Á\ZJ*[ˆ<G<\áDÁ2òDW1\îrF.\èh×£·ùN\ìÿ\0–žcÇŸ\Ã4œ_r\ÒORª² ýi\Z\\ÑƒCÕ¨[8g%\ä<DAŸ\ëT”ŽyÎý\ç¨û{[ý	\Û!·–Ý»õ\æ‹>¦r”%ð±—ž#}YDM\Z¢\Ûý\Ï!Ì™ú\æšÜ¨AE6nZ\ÜL\Ú>—j²H#¹\Þ\Íc|Žq\í\\Ò—+:7E¹4htø\Ñ\áˆ\ï	µg·lOÿ\0Z²ŒÁ\ì6\ÓZ]\Éu\æXƒÔŸzè¦®\îrÕ›½Œ?x•¼Ks²(\Þ\Ëþ±x\ãqâ´„msyJ\é.\Ûf\'ž¹\íbX\Ål7Ò„\0«•\';ip\êu–šó[$6*\ÐÄƒt/T“^\ë\"«~\Ñ\Z²j2\ÜZ7šv\ÊxóQ¶þs\\—³\Ð\Ý=g\Äw²\êp\éòN\í$‹)–c¸ð\ç\ÙKVLž…(õ·š1”\"û¬Œw\Z\Ù\Ê	;¡£^Ü¾ôWQ\é»\Ë5V`§M+2+½*\é0\×ˆ^\Ç\ç¢Ì¸JDaua†`\íIšö†\ÉÁ_©®+\n¶¬£‰O\Ë\ÝG)§2f¼5(@\Û›å³ŒUs4r<$3nüy¨\ëe¦\Ø?ç¯\Ê)]³XÐ„z.¦ó8\ß!b£ýeÁ\Î)\ÇFS–‡Ycoe©iºy3\ÍB¯û\æ\0\ào<œJ†\îØ¤­bí¶Œ¶Q©‡Q·S\æT¹cô©\ä‹\è7~\å-N\É\ìf‘K)ƒr\ÉZB)+#	¦Ùƒ¨ƒ¾\Ç\Íÿ\0ÐZš½‘T\Ø›vp_\â\ÅSB¹Vm3c¡\Ç¯4¬6\Ë\è2\èð•\ný£ 3ñœc<~4-ƒ©·§\Ø4\Â·ªÿ\0i$X’v\Ø\Ê*#k;“Q^HÚ¾\Ðl\æ_2\ãVR2>K\0e\Î8;óP¢–È»wg7\â·µ‚\Í¥%UÂ¼\Ø\ïóœ~5´ —ºaý½\Ç\ÜvR½£8\Æâº“\Ûøª\î\Èc~ñ\é7\ÍT›Fr¥:\ë\ÄS\êI±\Ø~¾MÒŒ]\Ñ[&3Ã·\Ð\â‹\Z\\M™\è\ì=±º•‚\àŽS¢ô\ìiq»—n\Ü\àÒ“LwB@ù\×#¦ã²„„\ä \Ó_’@ \Z\ÔX.n\ÙÁ6¡keo\r\ÐG\'\Êüo56W&m6\çH\ãh”¬ƒ…„\î¥\Ô\Z(Í®µ‘\Ú\Ç<°2j\Ód{4\Êsj/}µ›\Ê\Ç@3Ÿ\çšMt\Z÷!þ\éúƒT\Ý\ÉHbÅ“žžýiGœýy ~µ\Ô1\Â\à,–@*ËŒn úÔ¨´9EH»\\k\ëE&-º\ãŽj\\]\îRH¥¬5­¬nröM(#þ*’\Ð\Ìû!ùŠ/?\ÆÀU\á\å…\è\Ý;%4+†‡¨¦B– tÇ¸ \Â\Ð\æ\Ð\0¹üi\0…3þ\0\r\ÏLP\Å\Öä°†-\ÙJ©ƒþÑ¥`\Zþ-¹˜óœ‡¢\Ã õ<“Ý¹ MƒO»©v¤!\á:ŸËŠ\0>\Ô[\Óý\Ñ\Å0°\ï´\î”ÀF;\Ç4Àž?O2—£\Ò\å\Æ\Ü]È³r\Ù\'ð E^œcŠ9F)¤!wsô¦\æb€ƒ@\ÍH\Å\ÝL~)\0oÉ ,\\\0z%;\ÄÝŠ\0_2\r-š@Z°\Ò\ä\ÔRF\"ah2\ßh‘aÀ\éž~¢€³„/.C¯\Øöý”•i.XB\×\ê(º=ø\à`÷s»V\0\rT \ÆhI\ÈÇ¥<º,6\Ñ`	@Â\Ü\ÑaŠF\\P\Ð\Ð\Ðõ#$\r\ÅZ$±iŒÁ¾\Ù%\Ê¿\Ùñ¬ßžH¤\ï\Ð\Ö\Ò<M1.¯\Ñm”¼——0¢¬j:’wú\êhdm\á}3O²‚\æ\â\ê\ï\Z±“b\ÙÂ­ò«c\'\'©£QŒizl3}š\æø½\Êm\Ùs\0yg\æ\ã)ÙˆÔ›^‡\Ã\æþòI58\ÖgDeP\\+`À\ãI+‹s6O\Úk\×R»\é‹\æIc¨\Ä ;s‚Aƒ‚GW}@#ðµ¶“oÆ¥<‘@nLÓH\ì¿\Þ9\áA\í\Ü\Ñw\Ð6^²ñ¶\ãcqq³Áx5H\Ãdz)^­\è¼f‡&·Ê‡m›¶\ç\åóx8÷«¦M´\0\Ã!4Mø \Ì\Å!‹\æP!\áq@ƒ½\01&1»iXcƒâ˜‹\Z\Þ&¹X!PZ_\âs´(I=€õ¢öZkR×¡´ƒû6Á‰¶…·I|F\Ã;\â?\ìŽ\Ãñ\ëI.¬S\\\Ù[\è:Xº¶šbD\ÛZ\Öam¿\èsI\'v¯ô\É!q\r•\ÂH\Ã\åšk‘(\é´f©&-M-h\éŸhƒ\í\"ð\ËöH2lŠÿ\0V=jUÁ„\Ù\"ü\é¢u•#y\ÕHbb,3·u\ÆsÚž·W\ÚÏ‡Ž·­\ÜJ\î\"³…c\í2£h¤Ž\0ÿ\0\ëÐ\àÖ¤\Ö5;k1Gi2ù6Šw\Ù3\í\ïý)\Ú\ËP*jóE6«v\Ðc\ÊyÜ¦Î˜\ÜqN;P¶iŒnh\0 bc4\0»)™Šb~h\0<\Ð1:R°	º€:O\és\ëú|ö¶ö0\\÷Ã»]>F\0gn:•\ïÿ\0ê¨–Œ½ðÍ¿‡í¤¹—F‰¢²uFž\ÓP7\' \â„\ï\Ô	\í¼/6·imo&‘¥´-q²^ý”™»ŸcJö\êm\à¨Jmmô˜L²F_\ívº‡\ÚV0?‰Aø\Óæ¶·-K\áÎ«\â\ÛLAi\"\ÃÍ„\Â\á¢c\ïv8Ô’@¶\ß\rum\Õ`·5À-L–—6\ÆfgŽ@\ëC’`]ŸF¼–8tÛ»9¡´q—Ê²£ œ\äõ\È\ãÚ¥5º\nxfûMÔ¤\Òt\Í([\Þ\É-{w?\Ú\Ø!\íng8\È\çµ;«]±\Ø\æ®ld\Ò.$‚Q‡²bŒŠw`ƒƒZ\'p\"\Ý@\Ã}\0&\ê\07P‡ ó(\0’€˜d) ÷4\0œ~T\0žSÿ\0u¹ö \rO\nø¦?kp\Þ\Ü\Ç+Gj®\n\Û.\ãÊ‘ýjf®¬2Î“ñM¼! \Ü\Ú\Û[›Û‘\"\Îñ,\é·9\ÏÂ“Øx>=\Ú4‰-\Ê\Ük³½\Ä#û³§‚*y¿\ám\é¦Kˆek©­µû&Kˆ­\ã°t9\È /©\ëO•ŠÃ´Ï‹\ÚW€’\Ê\Î\Õnæ·±¹7_] ‰\ÚT\\û\ÒpoV1,¾7Â±ºµò\Ú\Ø\çA¢À-ƒ*œ\Ø\ÆN)¸\nÄ—Ÿt\ëB¡%\Ù÷K7\Øå³Šd\Ã\æ\'%a\Ø|´\r¬O¿fŸ\Ï[ð.I·×¯ Q\ì\ØX\åuMGûwRº¸-ô\Ì\ê’	\Ï5¢\Ñ[\Èsü\rùSJu{7L\Ð@h1@HLÍ\Ôs@QDK³\ÍÀ…²2:\Ð ‰	Ìƒ÷y­ \0\ï(Ïœƒom¾´ÀÄ’©Ž›¶õ¤3¶óS‘\ÑWÀp›f\Ð€}3@\Ì±\Þ1ý\ìgüô¤¼¸\Æ\Ü`/j\0kK»¬œ©8À\Æi€\Ü·\äôû¹\Å\0¶¾\á !x\áy _\Ì\ã\ï2õ \0Ü´h6¾H\çz\Ð‹“\Ùÿ\0\Ör½)Í§œ\Ì\á÷\ÇÊ«Š`W\Û@(q@lm\äbÌ: ¹¡c\ìÒ€N¸\Øô¤G¦I\Z!Ãƒ\×iBpM¾w\ÙX£Hoð¸\Û@¸!#’2¶ø\ÃI\Å0\Ó\07yªXŒl\0\íøm\Þh\Ëc9€`“\ß?*\Çy¦+†(\Â_ºq˜ø\â€%\É\ÜdŒ(¾|Š\ÅQ\ã\Âî—ŽhRR3—<ô\È\Í\0	7\Ù\Ë/š6ŽC°õ \íªbeù‡C@„Žp«¸\Ì3!\'a\çQpª\Íû\å¹É \nL›ü=\è\0\Å\0 Ÿ\Âr`\Ã?vc¹c88À«µ91)¶Ž†	£þÓ·0\ïTY>q÷¥\'\î;™A~ñY\×¸YnB(\Îe,†¸OPóïˆš„ð“»!I3d9\çŸJ\è§ð‘#™Ž\à[œ•Ýž\Ä\â´=Á÷t>\Ô,zÓŒl\ï·\Îh°\rMT`H:\ç\î\çú\Ðô‰T	Õœò¿ýz\0G\Ôrw‰yQ÷c?­\00k’.~\ï\Ï\ÏJ,&­$#\Î;¿4\06ªò\ÆP†È }¡‚l\Ï˜ G}öa÷ÿ\0´\ã4\0\ÓsºMø\í^(S3=\\\çžh(\0 €\Ó‰øRv\â€\n\0Z\0wœÞ¿¥\0sz\ÈP\æŸ_Ò€9½A@\róŒ½qùP@\0\0P@\0ÿ\Ù',200.00,'9456',NULL),('C20001','Mr. Robot','ÿ\Øÿ\à\0JFIF\0\0\0\0\0ÿ\Û\0C\0		$-!$3-663-339BTE9<N?33HcHNWW]]]9EflfZlTZ]Zÿ\Û\0C##F((F–dUd––––––––––––––––––––––––––––––––––––––––––––––––––ÿÀ\0\0Ÿ\0w\"\0ÿ\Ä\0~\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1A\"Qaq2‘¡ÁB\Ñ#$3RTb\áð4DSr±\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ú\0\0\0?\0\Ê\rù\"\rºA—FØ®´\Ê³\Ìú¢ktÿ\0\êv²ß™Ve\áùð\ÆDùaˆ³39\î4ù\êB!µ´ù¢¤\ÞÌ±_ô\r»z	\0PT``2ˆ\ç#›­\ÐT\ä÷|,6)ù%\çÓ¡\ÕiÁÀ¸”,–8d\Ã0s\ÞAVbRH\È\à$Ò›=²–>¨3„ t>§ÜœÀ\Þî´¡\àZ\Ú×½¬ˆ‡R®‘p†N¬¦°:\ÜÉ…\Äm9\ï\çt®‚\ç\Ç\Ì(\ßOo\ÌêµŸÀu±\Î\Øy_Qr\×9\Â\Æ\Ûë²Š³³\ê\Ü\ZM,M„‹\È\Ô\rf{\Í\ë¯Ty,‹+\Æú•!yRDc²H±\ÙHØ®±]HØµAY‘ù®¦–’š9\Ü\Ç;‰²´±ßˆeõ\ÛO\És‘Á¶‡O\Æ=\Ê\Õ%­uˆs®\Û\Þ˜ôA¿U\Å3D\Â)›Pö—@\Ó\ÌË¦þå“ŒVó\ê\ØÖ˜\ÝC,N\ÃûÀ7\ÏÁ;øl€\ì±OplØ²f\ß\ïF0 2÷e”Ù ‹òQW)±z!3\\ø\áÒ¢nöGx•\â˜µqC,2¹\Î$Ùk%Á-»Œ\Í\rüe—òH`&LÑ¼˜º±¤Š\r&c4Õ±I6	y\çb‡(}·($\Æi£\r¦\Ç\Ú!s9ô3#\'\ÍQw\r\0\\[½Û›\Ì\Û[OO%%\'\n³§§y\Ì]UPbp‹»f\åº«]†ýµžIdÏšûX?ª­ŽTÇˆ\Í\áü¸\Òc7±\Øøfšš9T\ê¦\ÉKl\Øu4|·›s¸T±|˜!5;ü´\äY\Ò\êN€ýUF`akŸaHbI­³\ÛõF\æ ˆ±$E‰ •°)YÓ¶+a·æ‚¬p\æ#R€\×ÁOÏ¦Õ ¸[4Zh…\Ô\Ú\Ý7*F³º,Fƒ ·D7ª\×ô\ÒiøXm\ã\ÑÄ¦ª<Žw,ß¼ob¬\Ék‚=4ñN\Ös,2û6ð@gžve.sšF±¼\ßM\Ñ}ñRIý4\ï\Æ\ry[R\íöC-tc\Ãe•‘ºe“‘þ($û\Þw‹:i}2H|lšZ§c›¯ce\Ü@\ëtO—5É¿ˆ¿‚‚®q†\ÓK)aýU…\Öo¡@q\ãus\Ý$3½Žx·2÷¸ðUªk‰Hd–G9ò\ï,š“²78\Þ\Ä\\\ÈÁp|FŸDoð\Ísü\Ã\ÑnM\ÞÓ¿óN;Fg·C\ÞÜ©W,IH`I¦Â¤l?4›\Z”2Àù\ØíŠ–™§<O\ÎË;\ÃC¦¾\åJ³µ\×c’B\ÊwBé€µL2\\B\Åss’|Jl…Q·þiÏƒa´°\Ó\È+X\îl•#šA¹·\çðG„ö¥þ¢<\è\äõ³9\ÆbûtjÀ-!,\Ú \è™\Û\ä\ä÷\è\âwý^[uq„e±\\:¸>–Mr›ƒðX—H \ì¤í²Š\Z{µ®t‘XrH¶mµ¿\Å\r_iT\\CƒTJcšh\Ü\rF§\ã\è¸ò\âŸ)²—\í:—\r¢Ž–¡®i§vV¾!ž÷$\Üøn§Â¸°b¿h’i\î\ÇÏ–&Õœšoe\ÉX„¯}>H:ø8\Ê\Z\ÌHR5Ù®FIXs¡\'à´\×#\ÃT&«€ö÷q÷Ø˜\Ôì’“\"H,²4\Õ3}Ž–i?\à\Ç\äTbŽº˜\ÕPT0o$O\àTW›¢uO\Ñ2\Ó\'qLÓ¸h\"Á\Íf\ÝU–pD¯±°O†Ôµ\Î\0®§\rŠ:Ö€m¨\ÙS…œ9ùNþj\Î\Ã\'‰¥14wŸ²³\Ä\ÔG\n\Äý›´ù!\á\Î33‰²FÀd\æ;ö\ÅTö&{Hä´›•’\Ö\æ^‰\Æ\ìl“˜\ÌOª\0}šM¹Ø¯=cQ[ü‡ç©¨”Ø°4SýJZ±x.›õz—~ó\Ú/\î[Å–*–’2ÔXk,¶ \áb4;„ƒ,Œ¢\çf¨¯1\Å0\'p\Å|ô¯\Z\Ò<€OQ\ÐüU=v.üz²j‰\r\ÝXò\âNª«L‰\Ú\0„\"p°A²	c©08V\Ö\Æ\ÎÃ€;\Ù`\ÝM\Ý$oAÄ¶2¾6¡|«O\Å8o\0‰uI4·$dËš\ã¡\\\äqG´µ­sŽñ\É\Õu˜_A-;ŒøU$a\íÿ\0P\Í\'\Ò\áGñü|KMK2‰)/2³K\ÛAõ\\\ÃE¬§\Å\ëY]ˆ\È\"±S»##o€@\"h>k¯\á\Z/³\àùÿ\0‹‘\Ç\á§\Ñj‘e	‡}ÛƒR°La\Äz\ëõVQ£’Ë™$r(\ë1°zIešF\Æ\ÈXo,†\Ýn)\Û6\Ânty\ÍD\Ñ\ïMEÞ±ó;.?\í*£´\ZdkcŠ—Ø£„\æ§Ä¤—J\éÊ¢B34(ÔŒ9šBÜ¥\Êzj\áN\ë;PTF\Ès \éðB†9š\é\Z	f¶&Ë§Æ»Y¢Â°9Œn|…¬Š?\Þ;/0\çº#\Ýq\êuC¦öœMº8\Ý\"˜Ÿ5zƒ8\Ôñ@\Ý\ê\Þñ*œl¹ôV)«\å\ÂKf…\å’@nÙ£Ð„G¥:CZ,#\0x(‹u\\\Þ\ÛÄ€WE\Ì\ÅÒŒ‡\Þ6+ ¤\Æ\éøŠ>e<­‘£|š\ê:,ÆªV\Åt‘µ¶I–éŽ¥\"´\É\ndöºm‘G\ìmû\É<_Ü‚öR5\ÜÏ‚ Cn‹7-¾©\Ùvþ{!y@§1Mk£klŠ8\Û{ú\"l¡\Æ\Ý\Õ$\Å(‰ó‡=Ó¢–›\Z›”MŽñþ8Í”Nmý\ÝS_7¹\×\àý¶\Ã^9Uùa{F•Œ\Ó\ë\àR\\€þ\ÊI‚\×÷¡(‘ªÊ“™\ÔlSY8v_C\Ñ)Ã²¤[”ýRµŠl\å†\ã\àS½\âM¾h,œ5\á™S8\é\ê3¶@ñ»+‘D~hº6huÐª\"ˆ†\Úx$‘Ð¤ŠmÓ”È¦Ø¦!M—0@­œyµIK†IŒ\Î\Èbht“›ŠŠöD\Ö\æ#ùº\"®­{ƒD—šAþi\ÇW4kN\í3{;mÿ\0¾ª‰ajB µ\Æð}d,\ÒGk\Æ\Ñ{]U–L\â\Ç±cº$$/ÛªhQ	Š@2\nK]\È\ê=Qmt$\"‹¤—D‘_ÿ\Ù',250.00,'2585',NULL),('C30001','Source Code','ÿ\Øÿ\à\0JFIF\0\0\0\0\0ÿ\Û\0C\0		$-!$3-663-339BTE9<N?33HcHNWW]]]9EflfZlTZ]Zÿ\Û\0C##F((F–dUd––––––––––––––––––––––––––––––––––––––––––––––––––ÿÀ\0\0Ÿ\0o\"\0ÿ\Ä\0†\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1\"AQa2Bq¡#‘Á$3CR\Ñð4±%Ebƒ²\á\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1ÿ\Ú\0\0\0?\0Î¶z2®§Ž.\ä¹Ë°’T\î\rºú\âº\Zj)¡Vyùnä†²,<­ð¼O5sª-Æ*,-‹²úY\ç©^Sh\ì\ícR~‡ÈŸi\Å\rk\Ú\äºÝˆ­¿÷|]ˆ2ÅŠ—´•Z˜\ÙÝ‘-¸÷G\Èù\âØ³Z:Š¥@Y\åW¬Ñ£˜|\í\çŽÍ²oµjÝ„ý˜\é2>\Ûl<ñ<½,\ç\Þ¶GO9•yÏ¦(ƒ¬±.½Wó¿Kb(\Êõ\í˜Ê ½µrI:m±ô7Á9D\Â3p§~`:Bú`)²“¶ub¨m¬m·žµ`ø2,¯EÖ±\Ý\Ø\Å.m.˜ƒd™k \"²Hš¡ˆjZˆ‰Ó·õÅ™G\Ý\"0\Ñ\Ô}ˆ=,=Ÿ\Ù\"\ÔQ”\ë\È7¼£Iß¯\é‰j\ÎY™ò\n\nGTz ÷´\Èj.-{þ–À«MM%8nÕ¦[5\áe6;o\ë¾M\ìµ\æU´€ˆö\Ô6#\0\Öû?ª K)\Ö\à#|Y\ÔK\ÍUJôª8©utPZ2—¹ßº>|ñª\ËxJ>jc™ôHM†››<fh=–fÃ€±i\×\ã)¶6œ\ÃRQ\ÓVÁP¬\Z‚`rt\Û\â\ë6¨\à¸\î5ö\ßXµ°ª·†Ò˜‘p/ño\ä\áhœ{¶õW]\ì\é&7\0|*c`ŽCû¯1k\ày8†@­\Ë`9¾ôDðõ8\Ðg\Çe\áJu5°\Ú \ÌO\Ëi)ô°V÷º\éÅ¶VfÁ¹U|V‹©‰™¯`<ñô(xu5‹‹·fp	;c•r²i\ãz„\ép]\ã}OKo{ý1´\Éiki%v¦–9(¦<Á=M\äg\'À\×\é¾@qW\ZB\â/»d6\Õ\ãl\"“)0Bfrº_b÷þ˜\Õg™zVÀ€M9ý\Ü`›\Ø\ã!S+M,»U-²®\Ý<¾¸\Äl\Ï&\Ï#\Ë\ê‘c\n€o\Î~ñ\'\Êÿ\0<i\ê3uh}–Ac0\Þ\ãªŽ«9›“N‡™+û\Ñ÷H¾6£ \á\êU\íR±v\ë\n–%n:›/Šug;–b¹ò´\"\ê–ñ¹\å\âXÝ–8£b/²G‰ó\ÚmBE+\ë{EGH±F, ñe°,OR@ž\êÅ—k÷@ý0¾M`Z\åOÃ¾\Zeðr\âw¸=¡®\nü±¾\\úZØ¦KY4\Â1®f<cX,[qå°\ÊgTx†D´¦c7«—»¯M…°žN\'\ï}\Î÷Ç´Ù·i+\å´\ÜX\\a«ð\ÑË¡µ¡E./|jds»jœ£#ˆJ½õ%O\î\ÙI\Ã\ÊlÆ²-QÇ™\ÅeÍ¥i\çQ\éˆ\äyT5\r\Ý#[\r¥Qp\Ç\å\æ0ò~Z½,jÍ¬³ \ZOþc=\ã—¯ R¸\æ7^\Õ3ô´\×#\ä=1\ê{\n§Ay54=0ÂŽT\Éc\åˆDf‰û¡«ž ŸµG\Ì?\Å7\08\ç1\Ö\éd\\5B\ÅKŸ~\Æ\äüð¶¿ŽR òi–¢O\çž/¹ù\ãSYIhš^\Ût/¾TðM.f{ö:<F\Øa+\ç’\Ïk”Ö†6¶¸\ä\æþ7q\Ã\Ü=˜f\Ç$õrµ<Fú$$\ê>¸Ó§³ŠhU·?`˜ò5¢\ZQ@Uò\Å#›ñnjõ’½,†:gv#\"\ì©ýq®\àÊª¤\ÈÄ•S¤Âµ\Ë\Ç=þ/\ÌW7S™Ã˜Ci7óÁUÙ™\Ë)UbQ¦“µ±¨\ÇK3 —ÿ\0¹´\ã˜\ç2\Ö\Ô83EhšÃ˜\Ýp}Éˆ+\ÓÃ¦\Ödf\æD¿S¾71\Îè¼·†:”\ëk\á¾b#¦ˆ­}S.b¬Ë–\á|–\ÃõÁ44Yš˜\ä@\ÉT,Q†\Ç\raöoG‘i H7V¬û\ÍÀOž3jÉ¥\ÕPª\Õ\Ï#\Ãž\í<›3(\éO®5	£¢ nýCX\0m€³\Üû\ìi!\Ð\ê£beñ[\n¤\ç\Õ\ÕC36²\è\Æ\Ãk‰kPÞ¤\ÍG›S\Ï*²S°0òe7:Ž\à\íò¶\Ë ¤‰½ÝºúbŒ\È-YX\ÙY­ et\écŠó:\Ý+&“û¿Ÿž9º¬Ï‰r•\r÷¶#j\ÂÚ¿\Õ<°µk¤3¶¢Ò†7\æ\Èy›x`Šœ\æ<ŽlÃ¿\ÓV\'¶\Ìz’Ô¤ ‹\Ì|N\Ø;š°\'y–ÿ\0;_jþ/Zªb”Ú„\Òö¿t\ß\Ó\n \Î3¶PZ¢Re\'»1.=z\ãqšú,¹\ÊS\r\Ø\Ò,ª¾~Xöj=]Îœ°Žø\Èðþ~s\ì\Ò•Ÿö@]‹¿±i\Ï\á~ö¡CF:\"\Î8YVò\"€\Ë\à¸Q*ŠhÁ¹?5µHµŠHx“…²ðõ=A³\Î÷M±\\\Ä\åÐŠf¹°\îXø`:\ïøˆ££ŸH†I[	Q‚_›\çŸd\å¦\ÅÀP\ß<dò.[™*82%7~JhÍ‹\à>x•®c~¹õ7µÜ¿L jb•CK\'\å€3e—‡\Þ\ZUš\ËQ,k$\Ñ.F\à\0|L4ûD\Ã[•2Òš~\Ú\í‘\Ø\r‚\ì\r¿1Ž\ÎøQj*\é&e‚u‘œwºq\à\ìÚµ²}\Ô^\çl#\â,úJ$\ÈNMJƒªSbO—û\áöw–”5\Ïqƒ]v\Æ~¹8\Êo\Ø\Îò\Ì5½vé‰ieTuÒ´ˆ\åš\á?@<±\æq\'\ÚaQl\Ì:#x\\yK\Äñ\Â\Ä2¨\Ô=\æ`7Ç[šž\ÖvV7\ÛÆ¥\Ò÷\È3Jq¦\'¦º\Ô¿^˜\\“2F$UD\Å7(|?`™¬\é4\ë\Ü\"\á=N_S¨£\\ŸRª¡\âyx]\ÚCf’U\ÒKù`\ÚN#’¨™A½·+{\ákoˆ\á\ÆSJµJ@ jøŽØº\Ä\çO¡\â‹Cgò\Ùp¼\çef7n½-ˆT	i™† !{\Ú\à\à.\Ó\ÚHú+\Û\rK\Î:¯‰ˆr\ÎPk÷»ŸmŠørirü\à\Ût€Øÿ\0®v†h¹b\Åe\ßl1\áüõ2,ÎžmJµ´bIÅ±eT\\sušÒ´SN\Î\Ò\Ý9aZ\Ú@¿Ž4-\Ç\Ô.4MS\nó>	)\Ç\Ìk»_	ISMvU”–	\Óû>£‡2ª>$\Í@\Í*Z(Þœ\Øù_\Æw}¾¯Y™\Ç_BPHq\ï\'z\ã\Î\Ø\Î?–šH‘AY—Hop—:\áø¸\'7Zlº­¥§«Œ0,üÖŒù?0À\äsS¤“­f§Ž;v‡K‘\ë¹\ëë‡Ž¯–\Ôp­|’\Ë,PMj5\Ô]RÀó\Âÿ\0ñEDmw{ƒðZ\Ø0ñh\Èë£šžI•­Ë•ec/0¤\ßo\Ã\0U‡†¢X\ßv…\È-o#\ägj\å\ã™ôü*|\ÒL\Ðùj\êØ‚\ä\ÒHª\Åôf\ZA\ÃJ?g“L–6\Çý;u·ž3‹\ä Õ°+\Þ\Ò‡yD|?K®J‰:)\ß\åœ/G\Ã\Õ\"™\Ø4•\è\â6\\+\Ú\àý0Æšµx—@\å!ŽQ\á€\"OÈ®1\×6ºñÔ‘ðx\ÏiH\01a´‘w¯…?d§J;R•Y<@¾øy•\Îia0«”ŠB¿2—6ò+¶V\äRfu^\Éñ•­ýô\Æ|izd£¨°Ü¼ðE=rC:¹þ[\Ó\Ëbk1;}^|vqisþ9§\â\ÙÄŠ¬9¢çµŽ\áN+n\ZÎ„‘ª¸«ºˆ\å\Øôù\á+\Ò\Ës­iþpE°\ï‡Ö¯!H’—ö«r\çÌœw‰·\ÈZÞ£L§™\Îr¹\îhŠ°Ê¡šˆ€\ïŸ·\åˆTf½›&–hg´òÝ€·ŽÉš\Ôd\Õò¬\Ì\r\ÛQ\äj‹\ï±üq\ä™\éY””)›UŠ\Þ\ç‚\Ò\'ž\Î\ÖU\êNø\ÒPðŽ_OGey HHŽŠ­\æo\Ðc;KÍž–uÐ¼­\Ë\ÕV\æøl8F¿0m(ð~È¶XVMÀ\ÅJl´G=TY$6\Ñ\ÒÓ® ž#SšSd\è\í1€\ÂÖµœ$ªÈ³,–0òª°&Ü•no‡—÷\Ó\ë©Í“½²o®(ÿ\0¦	PGÄŒ\ÕT²|‘„€\Èö¾\ØüÀŸ £2s–X„”Œª³o\Ã\Ï\å\Ä\ÓS°yV(\ëT42XaMnO\Ù\ærfU×¸—W;P·˜\à³cS–qLy\ÕDR U\æTrI\0^\ÞJ-¨\â\é\ä&(A\Þþ¸\È\ÒffJ_´$o\É\ê}1Íž\Æ\ÍÑ¬z¶¶•˜ñe)”T\ÅÈ¿7X\Ño\æ¾\ß\\DË¨\àŒ­¿æ”ž³§þ\ÃNªø7‰ij\"†h\ãv\Ï$h’™9Ôµ…Á±°\Ø\ËWð\îuO˜ÁKD¶í‘´©Q+\Ä‘nc\\l\ÇC‹r\ÚÊ±\ÆK)\ìKš\Ì\Ë)[\rv7\ß\åm±\ÙY+Ëº ¯\Ûñ8ŠYYM\ÄkUESÿ\0O„K*¹IAˆ±\Ä^\Ý1feÁ¼A\nE5dh\Í$È«,n’8v±Pm¸½‡\\S û&}\Æù\ßùF\Ìi	\Íç¨ŽºÈ¹•(—\'\åõ\Øim_žØ \n\Æ\ÏxJ÷\0T¹EžJƒ¨nE×¦	‡2\Í\ë²ó™!²Ç¯\ïd)\Ø÷¬:ŸŸ\Ô+\å3\0\Â\ç9¨;yi®¦Z7\àú.lÒ­M4“˜¡Š\×+}G\Ã]&wJòžf³ù|\ÍÕˆ/º¿\á‹ƒˆx^³’\Å{F`\ZNU4©1<±¿N„_˜\ç\É4™ \Õp\íAoÀ\â0ñ_q\ÜÕ´\Ï4¼¡Pò\ÅX‚1ª\Çac¸Àñ\Ít\ìV\ÅÏ\Ò¡kmQ\Ó.M\Ä9§hU\ä“ž\\²4‘¨\ï-È¿Ç–	žª£Š²5‰µE–\Åeaü¥œ¡UEWG/\ÖCV\Ó j\Åtj%Ý´5¿†6¥#§\\v\ã¦+Õ‰«_-\nGMñ\Ð\Õ5Dr-ƒS0`\Ì:q×°\é‰GBs 9Kr[|P\Ê_k5M\É<FŠ¡¦\å\Ó³;\â¿ó2X\æ‹E=2GB¥ˆ¶{\Æøð\Ãi¸‘H\ÞXôp›³•\æ¯t{\Ä[[Q\ÇR\æ-*‘%dK\0Š\0T*·\å‹j}£K˜÷p#™‘\Úhƒ\åzsŠiòV\Ê\åÕ©\Z\Ã\Ýmº\â÷FY\"0{É€£1\ã\ÄòùpÄ±\ÈdýŒ­S¾(›4\í4©L]4å¥Šº‚jµðXË£\îT\'Ÿ\Ò\Ã3G—yqa+r>¸—\Ú\æ0²˜iÑŸAi\ãS\é\éˆ\Ï\ÇFz®Ð”\Ô\êò+z`WV¡c}ú\âô&EC¦1©}Ó¾ª 5’\Å^Ácß¦\nµx­ãª¥›\\lr8‚£lÖ½õ\ßGÄ‹•Ó˜:i’µµ°­Vm\Öð\ÅO\Ã\rNŒ\Ü\Å<±{lwøl÷¾ñ{„\rÅº\àF\Ç\Ï\×˜”´=–VP<£\ï\r¯ˆ\ÛG\å€ó‚\â\ÌRv(û\Ö6v¿L@ü|ñ\Ø\Z°TH$\å¨\ÐAÓ¨Is\Ä\Å#Ø’K§L«WõÇ—õÀ5D\í7‘U4—·–\',J÷VXÀ‹s§\n/o‚¦ŠD6£$ó\Ùn\Í<k—®^\ÉeÉ±\Ôo|JH;:>¤Œ˜{\ß\\™œn.\êŠ|‘5c\Ç\Í-\ËH\Íú—K`EÖ¥„q‘rAo,B({e\Ø*X0_\Ó\ß13-´F¶ø¢\Z!×¡?#€e!²‘¯;½\Þ:\0Û¦+9ú©\Ö`^–\å\ß\ë\Ó\0F\çólAo\Ë%¨X\ã\0\ÒA=\ë\í¿\×.1.\ÒÌ¥ul~CN£ú`?ÿ\Ù',150.00,'12503',NULL);
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
