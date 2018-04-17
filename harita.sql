-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Ãœretim ZamanÄ±: 16 Nis 2018, 21:29:40
-- Sunucu sÃ¼rÃ¼mÃ¼: 10.1.30-MariaDB
-- PHP SÃ¼rÃ¼mÃ¼: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- VeritabanÄ±: `harita`
--

-- --------------------------------------------------------

--
-- Tablo iÃ§in tablo yapÄ±sÄ± `caddeler`
--

CREATE TABLE `caddeler` (
  `cadde_id` int(11) NOT NULL,
  `cadde_adi` varchar(75) NOT NULL,
  `line` linestring NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo dÃ¶kÃ¼m verisi `caddeler`
--

INSERT INTO `caddeler` (`cadde_id`, `cadde_adi`, `line`) VALUES
(1, 'Ataturk Caddesi', '\0\0\0\0\0\0\0\0\0\0¡–±¡D@\"\08öìi:@¸Ìé²˜D@IddYh:@ä.ÂD@î#·&i:@Ä%ÇÒD@k`«‹c:@'),
(2, 'TROYA CADDESI', '\0\0\0\0\0\0\0\0\0\0G\r6D@siüÂ+m:@$íFóD@g›Ój:@È\'dçmD@ôˆÑsi:@'),
(3, 'INONU CADDESI', '\0\0\0\0\0\0\0\0\0\0u±i¥D@…bÙÌi:@|,}è‚D@½pçÂHg:@'),
(4, '100. YIL CADDESI', '\0\0\0\0\0\0\0\0\0\0oÓŸýHD@;ÿvÙ¯g:@éCÔ·D@©½ˆ¶cj:@');

-- --------------------------------------------------------

--
-- Tablo iÃ§in tablo yapÄ±sÄ± `il`
--

CREATE TABLE `il` (
  `il_plaka_kodu` int(11) NOT NULL,
  `il_adi` varchar(50) NOT NULL,
  `polygon` multipolygon NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo dÃ¶kÃ¼m verisi `il`
--

INSERT INTO `il` (`il_plaka_kodu`, `il_adi`, `polygon`) VALUES
(6, 'Ankara', '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ë\0\0\0^ºIË>@Ãõ(\\D@‡ÙÎ÷Ó>@}?5^ºD@…ëQ¸Þ>@#Ûù~jD@%•Cë>@#Ûù~jD@¼t“ö>@7‰A`å D@Tã¥›Ä\0?@7‰A`å D@ \Z/Ý$?@ƒÀÊ¡E&D@1¬Z?@Ï÷Sã¥+D@ \Z/Ý$?@u“V.D@Év¾Ÿ\Z?@‰A`åÐ2D@òÒMb?@øSã¥›4D@‰A`åÐ\"?@ÁÊ¡E¶3D@Âõ(\\/?@ã¥›Ä 0D@Ûù~j¼4?@/Ý$1D@\'1¬:?@ã¥›Ä 0D@V-²=?@R¸…ë1D@çû©ñÒM?@/Ý$1D@î|?5^Z?@R¸…ë1D@ÙÎ÷Sc?@øSã¥›4D@Zd;ßo?@øSã¥›4D@´Èv¾Ÿz?@R¸…ë1D@#Ûù~j|?@Ï÷Sã¥+D@oƒÀÊ?@•C‹,D@žï§ÆK—?@òÒMb(D@¤p=\n×£?@Ï÷Sã¥+D@V-²?@=\n×£p-D@ö(\\Âµ?@•C‹,D@ÓMbX¹?@¬Zd;/D@…ëQ¸¾?@ã¥›Ä 0D@š™™™™Ù?@•C‹,D@ìQ¸…ë?@‰A`åÐ2D@òÒMbø?@ÁÊ¡E¶3D@¬Zd;ÿ?@+‡9D@33333@@{®Gá:D@%•C@@{®Gá:D@%•C@@!°rh‘=D@Ë¡E¶ó\r@@5^ºIBD@š™™™™@@–C‹lçKD@®Gáz@@–C‹lçKD@Tã¥›Ä @@V-²MD@h‘í|?%@@ÍÌÌÌÌLD@F¶óýÔ(@@sh‘í|OD@Év¾Ÿ\Z/@@;ßO—ND@¦›Ä °2@@\n×£p=ZD@òÒMb8@@°rh‘í\\D@=\n×£p=@@yé&1\\D@u“V>@@—nƒ`D@/Ý$A@@33333cD@žï§ÆKG@@ÙÎ÷SãeD@\'1¬Z@@¢E¶óýdD@;ßO—^@@Å °rhaD@P—nc@@B`åÐ\"[D@Å °rhq@@d;ßOWD@ÙÎ÷Sãu@@¾Ÿ\Z/ÝTD@¶óýÔxy@@ÍÌÌÌÌLD@j¼t“x@@ð§ÆK7ID@q=\n×£€@@•C‹lGD@ôýÔxé†@@þÔxé&AD@Zd;ß@@þÔxé&AD@}?5^º™@@!°rh‘=D@Év¾Ÿ\ZŸ@@Õxé&18D@7‰A`å @@øSã¥›4D@7‰A`å @@ã¥›Ä 0D@¦›Ä °¢@@¬Zd;/D@ƒÀÊ¡E¦@@fffff6D@)\\Âõ¨@@Õxé&18D@+‡¹@@+‡9D@Âõ(\\¿@@fffff6D@mçû©ñÂ@@R¸…ë1D@¸…ëQÈ@@‰A`åÐ2D@V-Ò@@/Ý$1D@ÓMbXÙ@@˜nƒÀ*D@ÓMbXÙ@@Ý$•#D@‡ÙÎ÷Ó@@‘í|?5D@-²ï§Ö@@}?5^ºD@¾Ÿ\Z/ÝÔ@@Tã¥›ÄD@V-Ò@@åÐ\"ÛùD@;ßO—Î@@bX9´D@¤p=\n×Ã@@NbX9D@ƒÀÊ¡Å@@9´Èv¾ÿC@mçû©ñÂ@@%•CûC@•C‹¬@@V-²ïC@˜nƒÀª@@-²ï§æC@)\\Âõ¨@@¾Ÿ\Z/ÝäC@`åÐ\"Û©@@sh‘í|ßC@òÒMb¨@@^ºIÛC@ƒÀÊ¡E¦@@\'1¬ÚC@)\\Âõ¨@@ð§ÆK7ÙC@u“V®@@mçû©ñÒC@=\n×£p­@@ÁÊ¡E¶ÃC@žï§ÆK·@@=\n×£p½C@žï§ÆK·@@òÒMb¸C@D‹lçû¹@@ºI+·C@²ï§Æ»@@¦›Ä °²C@X9´Èv¾@@oƒÀÊ±C@þÔxé&Á@@‘í|?5®C@þÔxé&Á@@´Èv¾ŸªC@J+‡Æ@@×£p=\n§C@\'1¬Ê@@Zd;ßŸC@Å °rhá@@ßO—n’C@j¼t“ä@@+‡ÙŽC@\\Âõ(ì@@+‡ÙŽC@ÙÎ÷Só@@î|?5^ŠC@…ëQ¸õ@@ÙÎ÷Sã…C@9´Èv¾ï@@yé&1|C@î|?5^ê@@ÓMbXyC@ÙÎ÷Sãå@@ÓMbXyC@\\Âõ(ì@@P—nsC@%•Cë@@^ºIkC@ü©ñÒMâ@@é&1¬\\C@ö(\\ÂÕ@@‰A`åÐRC@ªñÒMbÐ@@ÁÊ¡E¶SC@•C‹lÇ@@/Ý$QC@`åÐ\"Û©@@¬Zd;OC@ƒÀÊ¡E¦@@ã¥›Ä PC@®Gáz¤@@‰A`åÐRC@®Gáz¤@@ÇK7‰A`C@ºI+§@@ªñÒMbpC@Ï÷Sã¥«@@-²ï§vC@=\n×£p­@@yé&1|C@=\n×£p­@@Å °rhC@Ï÷Sã¥«@@¢E¶óý„C@)\\Âõ¨@@Ház®‡C@ºI+§@@Ház®‡C@®Gáz¤@@¢E¶óý„C@7‰A`å @@j¼t“„C@ìQ¸…›@@X9´È†C@}?5^º™@@¶óýÔx‰C@1¬Z”@@%•C‹C@¬Zd‹@@ôýÔxé–C@“V}@@ôýÔxé–C@¶óýÔxy@@¬Zd›C@Å °rhq@@¬Zd›C@ü©ñÒMr@@ÙÎ÷S“C@yé&1l@@“VC@P—nc@@\\Âõ(ŒC@V-²]@@j¼t“ˆC@•C‹lW@@Ház®‡C@mçû©ñR@@Å °rhC@fffffF@@çû©ñÒ}C@øSã¥›D@@B`åÐ\"{C@=\n×£p=@@d;ßOwC@L7‰A`5@@d;ßOwC@‘í|?5.@@yé&1|C@×£p=\n\'@@B`åÐ\"{C@¬Zd@@çû©ñÒ}C@¼t“@@B`åÐ\"{C@q=\n×£@@ö(\\ÂuC@j¼t“@@ö(\\ÂuC@ü©ñÒM@@B`åÐ\"{C@Ï÷Sã¥û?@°rh‘í|C@7‰A`åð?@ü©ñÒM‚C@-²ïç?@j¼t“„C@Tã¥›Äà?@j¼t“ˆC@“VÍ?@Ë¡E¶óC@¶óýÔxÉ?@¨ÆK7‰‘C@¶óýÔxÉ?@+‡ÙÎ—C@+‡ÙÎ?@¬Zd›C@w¾Ÿ\Z/Ý?@?5^ºIœC@Ãõ(\\â?@®GázžC@ \Z/Ý$æ?@‹lçû©¡C@òÒMbø?@1¬Z¤C@Ï÷Sã¥û?@ \Z/Ý$¦C@Év¾Ÿ\Zï?@#Ûù~j¬C@Zd;ßOí?@¦›Ä °²C@®Gázô?@˜nƒÀºC@Zd;ßOí?@ã¥›Ä ÀC@Zd;ßOí?@ÁÊ¡E¶ÃC@1¬Zä?@žï§ÆKÇC@1¬Zä?@!°rh‘ÍC@-²ïç?@Âõ(\\ÏC@w¾Ÿ\Z/Ý?@ÇK7‰AÐC@NbX9Ô?@mçû©ñÒC@%•CË?@mçû©ñÒC@°rh‘í¼?@•C‹l×C@d;ßO·?@V-²ÝC@ÓMbX¹?@áz®GáC@…ëQ¸¾?@‡ÙÎ÷ãC@—nƒÀ?@d;ßOçC@%•CË?@B`åÐ\"ëC@°rh‘í¼?@V-²ïC@V-²?@Ház®÷C@ð§ÆK7©?@î|?5^úC@ð§ÆK7©?@\\Âõ(üC@•C‹Œ?@9´Èv¾ÿC@ºI+‡?@Ë¡E¶óýC@×£p=\nw?@+‡ÙþC@®Gázn?@“VýC@ÙÎ÷Sc?@“VýC@î|?5^Z?@¨ÆK7‰D@¢E¶óýT?@q=\n×£\0D@¾Ÿ\Z/ÝD?@ÙÎ÷SD@þÔxé&1?@q=\n×£\0D@/Ý$!?@ÙÎ÷SD@Ï÷Sã¥?@¨ÆK7‰D@Zd;ßO\r?@¨ÆK7‰D@ìQ¸…?@9´Èv¾ÿC@Ãõ(\\?@Ë¡E¶óýC@“Ví>@+‡ÙþC@‡ÙÎ÷Ó>@NbX9D@ÍÌÌÌÌÌ>@¬ZdD@;ßO—Î>@w¾Ÿ\Z/\rD@^ºIË>@Ãõ(\\D@'),
(17, 'Canakkale', '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0A\0\0Mg$¢9@î¶f†èD@BÔØ¹Äª9@³Êñ¯D@&ÐÆ²9@V]ûþC@ÏÊN³9@\"—ŽþC@â¦«à\\´9@×@fÏýC@è•ü™‹µ9@YmýC@Ç@èêØ¶9@›_ƒtgüC@„à§`C¸9@Á‘›<ÀûC@à¹÷pÉ¹9@Š}\"ûC@/£Xni»9@á²¯áŽúC@Tÿ ’!½9@>{‰úC@m¿!ùï¾9@Y\n’ˆùC@|_\\ªÒÀ9@ÜÅûùC@¯ÜÁ>ðÁ9@ZôPÛøC@n4€·@ä9@éêzýñC@6ÑB]ÿã9@÷U^—†ñC@\nš;Ÿ¦ã9@è¤÷¯ðC@¿Í—rã9@¼Vç½ÖïC@Œ\Z§|cã9@ü4“ýîC@æ/ã\\yã9@Yˆ#îC@3^©´ã9@ñÙ•ñJíC@ðÆÝ{ä9@MóŽStìC@Â4gØƒä9@/n£¼ëC@:´#01é9@?«PîäC@³Â>K¡í9@m¨çoÛC@šq¿è—í9@¢²”òÔC@ƒtgÜŠí9@ˆ-=šêËC@§å¬ôí9@/´„Æ]ÄC@XSYví9@W«±„½C@GDŒ2ví9@ð`Õj½C@\0Ý¹‹í9@?É6‘¼C@ÊùbïÅí9@áš¸»C@#A$î9@˜AÆíáºC@È2§î9@5ùºC@g2ÒAMï9@>¹C@B€ð9@õÇj©r¸C@Ükœ¨\0ñ9@¢F!É¬·C@úsò9@ò×¿Fí¶C@ö¬µA7ó9@>“ýó4¶C@:CÌ€ô9@¤Ó›„µC@$Ð`Sçõ9@GùîûÜ´C@ZÅÑ-÷9@È¿…+V´C@iL;ø9@c6·øÊ³C@šë4ÒRû9@y¨\n¶²C@Zívÿ9@ç#„¢Ô²C@DÆþ\r5:@Å/ ÿ²C@ÝÓ0×ý\n:@yÿã)³C@2ãìd:@axÛ;Y³C@´¼¼Jˆ:@Rž†³C@’%s,ï:@*$ôŽ®³C@ƒZÂ‹$:@ïŽŒÕæ³C@èÃ¾‹,:@ŸL´C@=D|3:@ù4‚è¤´C@)60ß8:@Ðƒmé´C@Ù~_A:@}4æ¿QµC@Z´¥³8F:@ƒgB“µC@îBsFN:@zbç·ùµC@ (·í{V:@°È¯b¶C@åHÂW[:@Þu6äŸ¶C@9!³`:@±ä¶C@ØÕä)«e:@)¨MA#·C@4þ39kj:@Ï8¬_·C@*çævŠn:@ÞXP”·C@€B„v:@—ª´Å·C@©D#éä‚:@Ók³±¸C@F˜H:@âÆÒ,u¹C@é\n¶Oœ:@Cã‰ Î»C@\\‘˜ †¡:@çÊû“¾C@ôqÈa‹¦:@øhÂC@ù€@g¨:@¦d”ÂÅC@à›Kœ¨:@\0]¯ÆC@±µÖ‚¨:@‚5sí°ÆC@F}’;l¨:@ºcV”·ÆC@–T~N¨:@¢†%ÔÂÆC@uü%¨:@æbÂÉÆC@}†ø\n¨:@ÀÐ#FÏÆC@\\nÕ\Zï§:@ªd\0¨âÆC@Âsî§:@\'u¸îÆC@Šið¨:@ŒWNúÆC@òæ¨:@17)	ÇC@Ç,{¨:@¾‡ÇC@à¡(Ð\'¨:@Âº–5ÇC@ãÖîh-¨:@\'¿E\'KÇC@Áï•/¨:@êÃÄ0qÇC@`ýD\n\n¨:@‡¦ìôƒÇC@ø2Q„Ô§:@\"ö®æ¥ÇC@Y>fÆ§:@!ž¿¿ÇC@‹:ÎÈ§:@kj4ÒÇC@º+`§ý§:@éºðƒóÇC@êHäq¨:@$oÊ&\nÈC@¤û9ù§:@—æ±ÁÈC@X \'¯ß§:@2öo¨)ÈC@ÍÅ„=’§:@O/BÂAÈC@)ì¢è§:@6äD`QÈC@œÞÅûq§:@ðA¾:}ÈC@†“4L§:@©´\r’ÈC@µt`”û¦:@†?U¨ÈC@Á –0ä¦:@õ¬ZˆÄÈC@@Ezö§:@+•Ô	ÉC@hL7ä¦:@‚jÛ0ÉC@ÝÊ·ãò¦:@D­QWÉC@¤8G§:@ÑavsÉC@Y,ê8#§:@²Q1)™ÉC@@Òñâ§:@À7òåªÉC@¢1Iý¦:@è¾œÙ®ÉC@=“¢:Â¦:@d÷.ï»ÉC@8v?]“¦:@G¥}ÆÉC@ðM\\¦:@€-\nâÉC@øÛCg>¦:@99þÉC@AÜ0e;¦:@Ç²)ÊC@ýú!6X¦:@Î%‚\'ÊC@ ß”¨Í¦:@¾0™*ÊC@Ë+|\"ô¦:@Æ„=’7ÊC@Å5|§:@2åCPÊC@árë¦:@j4ÒuÊC@½.\r\rÕ¦:@|Åd»ŒÊC@»uH{Í¦:@Š%¡ÊC@]1ÈË¦:@qt•î®ÊC@“›ò2Ô¦:@È7%j³ÊC@)õÜ¦:@t¬œÁÊC@¡i‰•Ñ¦:@»$3ÍÊC@¨;ªõÙ¦:@LÕ‡?ÔÊC@ñ(:7§:@•‚ÉèÛÊC@!¢âI§:@AìñçÊC@¾\' 7\r§:@5*p²\rËC@W/uFJ§:@ö½á™+ËC@YƒœœF§:@Û«ê@1ËC@uaÿÐ\'§:@p}³(GËC@-Ä4K§:@6\n¤hËC@iú‘Çx§:@mÅþ²{ËC@éÁŠ§:@c]EËC@Î\'…y§:@·\\¢²ËC@˜üª·a§:@‹ÔÅ·ÁËC@•¹ùFt§:@ª½ãoÖËC@çƒ\n³§:@;K5XÝËC@:ÊÁl¨:@4ç*\'ëËC@OÚ\nP	¨:@‹›dõËC@ÝcDý§:@Æ†nöÌC@á0‡“ê§:@lRæÌC@Åôûþ§:@g7D&*ÌC@±	\0\'¨:@–s8ÌC@SŠg\Z^¨:@Á>•.XÌC@mwj‰¨:@¾&µa^ÌC@*9\'öÐ¨:@~C—&[ÌC@†cL°î¨:@$)éahÌC@x©\"&ò¨:@Ô@˜€ÌC@ÔLRô©:@¥RG\"ÌC@…±w5©:@íÑÀ4±ÌC@^Ž\r“_©:@zºñËÌC@¯BÊOª©:@8r“ØÌC@é…–Ð¸©:@ÍÄhãÌC@çy&ê»©:@T¹š†òÌC@j<Ç6_©:@’‚]ÍC@rÔÿO©:@ºêÍC@ïæ‡[©:@ð\ZO_*ÍC@Äepïu©:@ÄËx\00ÍC@¢HR-}©:@)Èt;ÍC@–®b~©:@Ôô4»IÍC@#\r²˜©:@RÝoSÍC@ÙÆé5‡©:@.Œô¢vÍC@Ž*˜©:@å¹…ÍC@ã«‰©:@ÂïðèÍC@\n“N©:@j¼Ú¥ÍC@¡…Œ.©:@¸™eª»ÍC@O×ÉÏü¨:@Û\rìB½ÍC@`[š¶Ú¨:@·ŸçªÔÍC@,ph€Á¨:@2Ì	ÚäÍC@Qò\'…¨:@M/1–éÍC@‚ëßõ§:@8CgãÍC@RuÙùÈ§:@¸ßëµêÍC@Â@!L›§:@¡SëX\0ÎC@$$w}‹§:@]¦&ÁÎC@—3€\\‡§:@ƒI–8ÎC@x[Žüf§:@5×Ä]ÎC@2Vt§:@áFlÎC@Ø-º«§:@Þœ\0yeÎC@+­u˜å§:@píDIHÎC@YÁå¨:@˜Št?ÎC@³f¿I.¨:@ru¶6CÎC@x…™9¨:@°Ðb„KÎC@“^Ša=¨:@€}1XÎC@)Ž¨õ#¨:@üÐ»gÎC@VUyLî§:@Û»«ÃvÎC@VUyLî§:@ë§¤ó†ÎC@g1g¨:@þ*Àw›ÎC@ÿÅØ®u¨:@ü±ÿð©ÎC@–Ö•…e¨:@uòØ…ÕÎC@ÿâ¾z¨:@u¿QáÎC@Ó÷\Z‚ã¨:@ˆeìÎC@°âù±î¨:@A\0ºyôÎC@ÞúúkÃ¨:@Å¨4ÏC@¦èítŒ¨:@3º(\'ÏC@ïXl“Š¨:@Î9x&4ÏC@ä­©â|¨:@ÝhDÏC@À“&¨:@æü^TœÏC@ªRiz?¨:@ºx‰ûÙÐC@,œ¤ùc¨:@$]Ø?ôÑC@{Ñh¼¾¨:@f}¿sÒC@ß`>´¨:@¾¬?x£ÓC@æ¬O9&§:@ºË4PÏÔC@Ó«·¼(¬:@Ùü	×C@ùö®A_¬:@eJ5ý#ØC@¥!ô}‚­:@RÝÚC@-–\"ùJ®:@ ~aÚC@Ó®ø<5±:@ÀÀ½|üÚC@¢;-ä¶²:@Zw=â¡ÛC@u×ƒIµ:@º˜eÜC@\\¡Y#º:@ÏÌÝø$ÞC@–gÀ:@{¬DßC@£íósÈ:@ÀÑéÔðàC@\Z]ïHÐ:@`‰¬ÚÚáC@)x\n¹R×:@¹@8U­âC@¿ªiÍEà:@@¤ß¾ãC@úÎÔ]ì:@©ê/µãC@ó>ŽæÈò:@(2)ô°äC@B¶‡\nù:@ºEóâC@Á°W³)þ:@øÿUâC@Ë*ME;@ô²2uáC@µ7øÂd\n;@@7náC@O¡© ;@K¬‚báC@®·r›;@mò¥ÍàC@²\n@H»;@xìø¡ßC@u¼¸Cy#;@@²oÝƒÝC@7).}.;@ [ž½éØC@±3…Î3;@?ÏU©×C@d2f\\‚A;@`zV-D×C@óªs±L;@]¢²í×C@¥™8mP;@ÆÛJ¯ÍÖC@ú$ÒT;@ÿi´fuØC@‘ú8äX;@(É„©wÙC@Î?°™2Z;@¢²aMÚC@\\Uö]\\;@½tîÑvÚC@q½·3]_;@¶;Z‹ÛC@éŒÞ_ó`;@\\B™¡LÜC@&¾˜)b;@?Ú±lßC@cmf>i;@}`\"9áC@µ\0Ôt;@j<Ç6àC@”™ˆvw;@\rUŒNñáC@Ôki$øy;@-5ŒÌmäC@ÊËPËÅz;@ýÀr)æC@â·|Þy;@HêóèC@÷`­5ïy;@WÈ`êC@sJ@LÂ{;@4êk§÷ìC@ÎOqx};@J`sžîC@Ø¹i3N};@UþvïC@»‘Ãq*;@ç#„¢ÔðC@7Àq¾}‚;@q\ZGQòC@õéÂY[ˆ;@·1,51óC@l×:\'¬‹;@áW1¦ôC@þí²_wŒ;@«ò˜ÜƒöC@ž¼~w‰;@c\Z<nøC@8\\õÊ…;@XR“…TúC@Ô¯¾ËV„;@Æ½žT ûC@3?í¦J„;@Gx$ýC@÷[;Q€;@ÓósµüC@7E‘ÿ};@Ï*Øë‚üC@\rj	Cz;@S€ƒQ¤üC@7Ågüt;@X0;ÕkýC@¼‘yät;@¨ZV«ýC@gžYs;@4™–ýýC@:Š½aìr;@(-\\VaþC@Vµ¤£r;@iM˜ÕàþC@Vµ¤£r;@¼ÉWÿC@ï9°!u;@ek\"Ø]D@<{xà­y;@ÁnØ¶D@ºKâ¬z;@ó^ˆD@8Cgãz;@œ™¢D@Œ<Zæ¾z;@©Þ\ZØ*D@8Cgãz;@åHÂWD@ÁG\"c{;@§®|–çD@ç¢»};@h¸\\X’D@î?2:;@)†š×ÇD@Pa€;@g¾ÞX«\rD@–ýa¸€;@SÙf˜D@81$\';@Vý\0Z©D@bé¤î€;@˜=Ù(D@ð6oœ€;@úMhD@¸ë\0ãt{;@P²‹XzD@h¿ÿ ?z;@µÐß•D@»Ö9ax;@¼QuÙùD@â©iu;@”^å\Z°D@gÅ¡Xt;@ú‰¹ZÝD@Ásïá’q;@9åËD@_;n;@¸i}Û]D@–#d Ïl;@˜FÝLD@’>­¢?j;@d2f\\‚D@ÄÆSi;@£ ÊÂD@\Zq\\!a;@àÝ%ÌD@xerÅ c;@sQãD@¹} &Df;@hÚD@µ·¥f;@”[¤š£D@iå^`Vf;@%ž¢Ù+D@b¹¥Õf;@W÷~YD@bodg;@4°ŸD@åUçbh;@¬%ÓWFD@ÈÍJËi;@zkò‘D@‘ƒmMn;@ÈÄ÷3\ZD@\"9ôqÈq;@î»}±RD@ÊH5u;@Mýc»D@zEp{;@ÆZ2}eD@éH‰¸”~;@¡r‰ D@i†±à;@ª”C0³!D@ðØt©¶‚;@¾Ý’°\"D@Iã2ñƒ;@îÈý³‹$D@mdh†ž„;@ÝØ¢»Ú%D@¼›ôV„;@á±Dà&D@¥¿—Âƒ„;@1mIXe\'D@þ‹\r\'†;@ë…LCž(D@1ÙÓi8†;@>ÜÄp+D@z‘d±¨c;@—^öF>D@hp\0¢Q;@ÿt¨KkCD@]p¿>;@ci;¨DD@–Ür?ñ\';@}ÍŒ#DD@Fð\ZO_þ:@º÷pÉqBD@OPÔãï:@@ÃöîêBD@˜Në6è:@O\'4¤åDD@9—‡ñ?è:@0p/ED@Ï•Ráè:@ëÀÞiED@ò6è:@œ’“‰FD@¨,THCé:@PE;¸…GD@042#é:@B2.f•HD@©L1Aé:@íiâx™ID@µó¢æ:@‰‚t#KD@ÂÏÉœxæ:@Šl1‰ÄKD@;Qié:@e#kh^MD@/uëöè:@ý¹\rND@ˆ\rNê:@’8Ðè³ND@¥¤âZHé:@©¥Ï4PD@Œd4—Àê:@ªâPD@$š@é:@Ã KÕQD@ºÂ7é:@ó~’ñÞQD@‚€kÝ¼é:@LT×ëQD@\ZÉyZÙé:@\n™ÐÉ÷QD@\ZÉyZÙé:@šÓÀê#RD@MLbõé:@ *èQLRD@žD„ê:@Ö—[€RD@ËI(}!ê:@w‡o¼–RD@ðó)ê:@ áÅžRD@µ{¨#6ê:@ƒ\nX¼¢RD@z£ûÞKê:@›ÂïK¢RD@‡—ñ\0`ê:@ê=•ÓžRD@>YÖ¢ªê:@\Z­þc|RD@YÚ©¹Üê:@ÍøFoRD@­‡/ë:@a0$ÌYRD@Wz>ë:@œ¸f<[RD@Þz¨È|ë:@ÔçrRD@ŒD\rK¨ë:@ßÿ\"Ã…RD@b0…Ìë:@?÷/Z‘RD@o¦ø®÷ë:@oª¤³RD@bwËì:@âKºRD@®³ÆEì:@ûÂuÖ¸RD@Œ=Å»mì:@˜=¿Þ³RD@ìIº›ì:@ß·©RD@†ŠE´ì:@ì¥)œRD@âÈ¨×Òì:@¹<1FRD@Õv|Óì:@ª¡hyyRD@ÿ¬U»ì:@õò;MfRD@Ù„j9ì:@F&à×HRD@:>Zœ1ì:@ÂR¸y>RD@jããnkì:@Šª0\nRD@¦¹Âjì:@¢mcýQD@á*ªÙ^ì:@K‰<îQD@®õEB[ì:@‡\n[àQD@SÒŠ]ì:@ow üÕQD@–Ñ#¡ˆì:@á/ÁÉQD@®Pÿ´¬ì:@ù¹FpÈQD@;Sè¼Æì:@ÜÃ¹áÒQD@©\"Ë8üì:@ðùa„ðQD@©c:í:@O3îýQD@4„c–=í:@’ÀÇRD@Ñha®í:@Ä…òô\0RD@¹ c¬Ûí:@î;+RD@¡\\dLî:@ò¤;>RD@~”\"Cî:@\ZÖù\\RD@Œ^²–§î:@…#\\RD@ïûÜuÛî:@%²ùRD@Ðu+•ï:@#¯ëRD@Ô£X?ï:@D;RD@OcÖæZï:@ùŠÉvRD@†Ë…%yï:@»\"0RD@£)ño†ï:@•¡…_ERD@5É4?£ï:@R×ÚûTRD@ÜBühÝï:@ï/ÌSgRD@ÂS#Oíï:@˜£ÇïmRD@‹b3ðï:@´`˜ˆRD@oÜ½7áï:@~÷3a RD@ìcª›ï:@\ZS°ÆÙRD@|g¼ï:@‰×PÅèRD@ÄŠdÙï:@`$ÇçRD@šÛsO\rð:@ò€\rãRD@9®ë¼2ð:@~þ{ðÚRD@+•¦÷Cð:@r†‡ÕÄRD@ÝtpU~ð:@ìŒJE¾RD@Kè.‰³ð:@‚óóð¯RD@‘ú8äð:@²2u²RD@°Òdñ:@ô·NmºRD@¡xs]ñ:@ƒµ{ÝRD@–Œ­±•ñ:@µ=Õ|ðRD@éd¯ñ:@s=üRD@é=ß`¹ñ:@õtd›\nSD@}Æ*J®ñ:@¸ý—SD@s¹ÁP‡ñ:@¨ò‡°+SD@«?Â0`ñ:@~­¦FCSD@1iBIñ:@JjW×WSD@ ¤];ñ:@[­¸ÝpSD@4pö½<ñ:@ˆ!ƒSD@gF?\ZNñ:@Ë9Ÿ•SD@šBç5vñ:@Ž×r™SD@°7Öj´ñ:@ï÷ª•SD@/D˜ìñ:@‰h*z–SD@_¢0ÞEò:@åXƒœœSD@7Î\\–eò:@\'v#âœSD@÷ù9O†ò:@áÄ¡È¤SD@±Kùµšò:@†ÒÍ´³SD@FáÄ¡ò:@W=e¿SD@à&H¾ò:@øh\r¾SD@„›Œ*Ãò:@(ÈÔÈSD@<Êwßçò:@nøÝtËSD@S\0ó:@Eq}âSD@2¸œäò:@5Ë\nêSD@Úç6áò:@•ÃÝTD@o‘ÅGÕò:@ìÅ«\'TD@jÀ éÓò:@w¥À]QTD@¥q™øò:@Á-iÖcTD@“{p-ó:@Á-iÖcTD@] ÷cIó:@šŠRTD@ùS™ó:@»àÂpdTD@UßTÿ{ó:@´ØÜ‡rTD@ñÆ85†ó:@âE´TD@õ8ÂX•ó:@§JJ0‹TD@KùZá§ó:@%MÍ/”TD@¬8ÕZ˜ó:@µ§!ªTD@ÖñNô¯ó:@çø\r¸TD@¬“ŽÍéó:@\n\Z[¾TD@«ðÂ1&ô:@fÒK1¬TD@p0ŠÔjô:@¤ü¤Ú§TD@Èš‘Aîô:@š`“£TD@ÉW)õ:@æØG§TD@Ý€*É•õ:@ Ø0žTD@1 r§Ïõ:@þ39k¦TD@~±Rœþõ:@n.£ý´TD@ÜÜóW#ö:@ü§@ÁTD@J¿3ö:@ýkÔTD@“r÷9>ö:@?øëUD@Æ>·†ö:@-É¦(UD@ä†ßM·ö:@ZßvW,UD@¸@‚âÇö:@\')ï>UD@¼»„ùáö:@u¡IUD@95Nùö:@¿¿œ4hUD@CcÜÃ÷:@V‰h*zUD@?™5g3÷:@±ý¿E‚UD@Óx3´K÷:@RQ«žUD@A‘8u÷:@¨Þ¿¸UD@©ÓË9Â÷:@2ÉÈYØUD@cóÌ&ø:@,ˆÜgðUD@0;z²Qø:@a0âñUD@X_ˆø:@Ÿ;ÁþëUD@\'iþ˜Öø:@ë²ó‘ïUD@…1uüø:@‘ú¡ˆûUD@ÝGÉ-ù:@lâuýUD@ÓèÄÔLù:@¸{	VD@ã«‰ù:@(4ÿžVD@¨£ˆ±ù:@X¤.¾\rVD@3(ä”Êù:@ÞU´ÞVD@¦ ‰¨Óù:@¦9ÃVD@&mO5ú:@¡Ÿ©×-VD@Öç(Qú:@&nÄ@VD@¢Ì!Nú:@zÑ\rLVD@¦¸	Rú:@wLÝ•]VD@oŒScú:@ã¯$ÔgVD@÷‰¨.…ú:@-íÔ\\nVD@ŽDÃ½ú:@j¼!VD@óçÛ‚¥ú:@ûäÍ†¡VD@Jî°‰Ìú:@û\n-F¸VD@m?2Âú:@` Z3èVD@ñ;—óÖú:@A¸\nõVD@mùíû:@ÉV—SWD@(a¦í_û:@ï^IMWD@ÙÆé5‡û:@;dWD@î•y«®û:@>×­TWD@6]ª-Ðû:@×íýVD@Œ5·ü:@Íý/×VD@9;c©?ü:@fnËVD@Ýyâ9[ü:@X9´ÈVD@_\\5tü:@…Y\r.ÂVD@Ò¿ÉÛ¶ü:@>ÏŸ6ªVD@«k‚ý:@eÙF—VD@áz®Gý:@n¨	‘VD@FS‡&šý:@‚L¡˜VD@ŠÇ´Ûý:@-Yº\'´VD@N$=±óý:@iËÎÉVD@jDz›Hþ:@ÙrÓãVD@F÷bþ:@\"“çUøVD@Q(Uìyþ:@ã@þVD@.x,ÿ:@aÞãLWD@¨!ªÚÿ:@Ã$U%WD@ÛÉüH\0;@¯²¶)WD@t¢øy\0;@On€>6WD@\"q¥;@¡ÌP&WD@|tÖ;@·£î¹XD@í€µj;@ó@¿J™WD@sãÌe;@o¦õ„XD@lÆ³E;@g^³}YD@5ã~Ñ/;@	ÅVÐ´YD@0”æE;@f©P8[D@šqd/%;@E‚©fÖ[D@*Y©û[	;@¼ëlÈ?\\D@”¬yD;	;@YØxU]D@nÁã;@TBfD]D@åGüŠ5;@~ÝŽ¡]D@ù:_¢0\n;@I˜Bå]D@ù:_¢0\n;@T²R÷·^D@07Î\\;@ûŸ²P!_D@ßú°Þ¨;@C­iÞq_D@³)²1\n	;@£EY_D@fFä`;@IêNÁ+`D@…~*;@þÄ·fá_D@@mT§;@ômÁR]`D@+zñ;@n·n”`D@¸EôÆ¤ü:@ômÁR]`D@£R‘¯©ú:@áÁ%`D@œ;U!ù:@gxXM|`D@Þå\"¾õ:@\n#6ø`D@B¿¥R¢ó:@ômÁR]`D@sãÌeñ:@ÇÖ3„c`D@­3¾/.í:@žfÜ/ú_D@\"dNáê:@—\'Æèo`D@ðzz¶Xé:@qs*`D@ß%\'É)è:@¥}Æ‚`D@jÀõå:@fí\0™ç_D@Olrâ:@#’×9¼_D@Ç©Œ5à:@s\\×ye_D@E2?’íÛ:@j L@_D@žÊ–Ú:@í;ÐT^D@òDk TÚ:@#ùJ %]D@¸EôÆ¤Ô:@’Ï†Wí\\D@ñ›ÂJÏ:@?µ°]\\D@Ÿ®îXlÍ:@c8è\\]D@W	‡3É:@3ÕÝ†b]D@š}y\\¯Ä:@Ž¸¶¦/]D@ºÔ­CÚÃ:@ÿQåÅÓ\\D@ÇF¨cÁ:@eX ÕXD@÷¨d¥î¿:@þ—kÑVD@»š<e5»:@Ç•FTD@(ÙE,½¹:@?ÐÀ~>RD@î‡éŒ9¹:@ßš…‡zQD@G³\r7;·:@AÁ DPD@ Y2Ç:@Ñ¯¡Š/D@Î­kÖü9@ó¡Uwv,D@ñåô«ïæ9@SëýF;(D@ëÛîŠ…Ò9@\"FI$D@ðPèÁ9@¬7j…é D@;\rb±—±9@‚(N¤êD@ŸÁð[¾¯9@ünºe‡D@¾=¾sÞ­9@\ZŽBíD@\ZF‹}¬9@ÍO»©’D@]±u_ª9@Ám(D@¹”©8Ä¨9@[ÛÊqD@×ˆC§9@$&ÜÐ\ZD@Žqjß¥9@žVvf\'\ZD@w7I˜¤9@q¯Ì[uD@g‰„¥p£9@|¯Æ~»D@ èpci¢9@2°éœúD@øà¡ƒ¡9@Hš‰3D@¯‚ÎZÀ 9@N\nógD@œUúd  9@­†Ä=–D@/4×i¤Ÿ9@ê\nËÁD@mÛœïLŸ9@¦¢°êD@v?T\ZŸ9@ÓWFÙD@|ÜmÍŸ9@ûó#48D@¦•çf$Ÿ9@¦@®^D@WyaŸ9@¯½7†D@B]ÂŸ9@vñ¼¯D@ŽÖH 9@ÅbŠ(ÜD@º„Coñ 9@¦ÑäbD@Ãƒf×½¡9@é~NA\rD@Mg$¢9@î¶f†èD@'),
(34, 'Istanbul', '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Y\0\0\0®Gázô;@®GázŽD@33333ó;@q=\n×£D@×£p=\n÷;@fffff–D@\\Âõ(ü;@Ház®—D@\0\0\0\0\0\0<@×£p=\n—D@\0\0\0\0\0\0<@¸…ëQ˜D@š™™™™ù;@\\Âõ(œD@{®Gáú;@\0\0\0\0\0 D@\0\0\0\0\0\0<@Ãõ(\\¢D@¤p=\n×<@Ãõ(\\¢D@®Gáz<@ö(\\Â¥D@®Gáz<@š™™™™©D@q=\n×£<@ìQ¸…«D@R¸…ë<@q=\n×£°D@×£p=\n<@ö(\\ÂµD@×£p=\n<@{®GáºD@33333<@ÍÌÌÌÌ¼D@Âõ(\\<@ÍÌÌÌÌ¼D@ÍÌÌÌÌ<@…ëQ¸¾D@ÍÌÌÌÌ<@R¸…ëÁD@Âõ(\\<@¤p=\n×ÃD@×£p=\n<@…ëQ¸ÅD@š™™™™<@×£p=\nÇD@š™™™™<@š™™™™ÉD@Ãõ(\\\"<@=\n×£pÍD@ÍÌÌÌÌl<@¸…ëQØD@\0\0\0\0\0€<@33333ÓD@\n×£p=Š<@R¸…ëÑD@¤p=\n×£<@\\Âõ(ÌD@Âõ(\\¯<@{®GáÊD@š™™™™¹<@¸…ëQÈD@\n×£p=Ê<@×£p=\nÇD@Ház®=@ÍÌÌÌÌ¼D@…ëQ¸%=@\\Âõ(¼D@®Gáz4=@š™™™™¹D@®GázT=@š™™™™¹D@\0\0\0\0\0`=@Ház®·D@{®Gáz=@fffff¶D@R¸…ë‘=@33333³D@)\\Âõ¨=@33333³D@=\n×£p½=@q=\n×£°D@Âõ(\\Ï=@q=\n×£°D@…ëQ¸Þ=@…ëQ¸®D@33333ó=@®Gáz®D@ö(\\Âõ=@ìQ¸…«D@Âõ(\\ï=@Âõ(\\D@ö(\\Âõ=@Âõ(\\D@{®Gáú=@ìQ¸…‹D@¸…ëQø=@¸…ëQˆD@ö(\\Âõ=@Ház®‡D@)\\Âõè=@¸…ëQˆD@…ëQ¸å=@33333ƒD@\0\0\0\0\0à=@Ãõ(\\‚D@ö(\\ÂÕ=@…ëQ¸~D@\n×£p=Ê=@…ëQ¸~D@fffffÆ=@q=\n×£€D@\0\0\0\0\0À=@q=\n×£€D@=\n×£p½=@R¸…ëD@\\Âõ(¼=@…ëQ¸~D@q=\n×£°=@š™™™™yD@\0\0\0\0\0 =@š™™™™yD@¸…ëQ˜=@\\Âõ(|D@33333“=@R¸…ëD@)\\Âõˆ=@áz®GD@…ëQ¸…=@R¸…ëD@fffff†=@=\n×£p}D@\\Âõ(|=@Ház®wD@¸…ëQx=@×£p=\nwD@š™™™™y=@fffffvD@¸…ëQx=@Ãõ(\\rD@33333s=@q=\n×£pD@Âõ(\\o=@q=\n×£pD@ÍÌÌÌÌl=@®GáznD@¤p=\n×c=@=\n×£pmD@¤p=\n×c=@š™™™™iD@áz®Ga=@×£p=\ngD@…ëQ¸^=@ö(\\ÂeD@×£p=\nW=@…ëQ¸eD@®GázT=@\\Âõ(\\D@Âõ(\\=@\0\0\0\0\0`D@áz®GÁ<@®Gáz^D@ö(\\Âu<@{®GáZD@×£p=\n7<@\\Âõ(\\D@\0\0\0\0\0\0<@R¸…ëD@š™™™™ù;@Ãõ(\\‚D@®Gázô;@®Gáz„D@ö(\\Âõ;@×£p=\n‡D@33333ó;@\\Âõ(ŒD@®Gázô;@®GázŽD@'),
(35, 'Izmir', '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0µ\0\0\0Ház®§:@…ëQ¸ŽC@)\\Âõ¨:@R¸…ë‘C@áz®GÁ:@×£p=\n—C@fffffÆ:@{®GášC@®GázÎ:@®GázžC@33333Ó:@…ëQ¸žC@®GázÔ:@q=\n×£ C@=\n×£pÝ:@q=\n×£ C@Ház®ç:@ö(\\Â¥C@¤p=\n×;@)\\Âõ¨C@Ház®;@{®GáªC@33333;@ÍÌÌÌÌ¬C@{®Gá\Z;@Âõ(\\¯C@\n×£p=*;@q=\n×£°C@¸…ëQ8;@®Gáz®C@\\Âõ(<;@\0\0\0\0\0°C@Ãõ(\\B;@\0\0\0\0\0°C@)\\ÂõH;@Ãõ(\\²C@…ëQ¸^;@¤p=\n×³C@ìQ¸…k;@33333³C@®Gázn;@R¸…ë±C@ìQ¸…k;@®Gáz®C@ÍÌÌÌÌl;@)\\Âõ¨C@…ëQ¸~;@R¸…ë¡C@\0\0\0\0\0€;@{®GášC@=\n×£p};@)\\Âõ˜C@\\Âõ(|;@®Gáz”C@)\\Âõˆ;@®GázŽC@\n×£p=Š;@š™™™™‰C@®GázŽ;@ö(\\Â…C@®GázŽ;@Ãõ(\\‚C@ìQ¸…‹;@\0\0\0\0\0€C@fffff†;@Âõ(\\C@…ëQ¸~;@ìQ¸…{C@=\n×£p};@Ház®wC@¸…ëQx;@…ëQ¸uC@ÍÌÌÌÌl;@33333sC@ffffff;@¤p=\n×sC@¤p=\n×c;@…ëQ¸uC@¸…ëQX;@…ëQ¸uC@R¸…ëQ;@fffffvC@Ãõ(\\B;@\0\0\0\0\0pC@áz®GA;@\\Âõ(lC@{®Gá:;@Ház®gC@×£p=\n7;@×£p=\ngC@®Gáz4;@Ház®gC@ìQ¸…+;@…ëQ¸eC@Ház®\';@…ëQ¸eC@)\\Âõ(;@R¸…ëaC@{®Gá:;@…ëQ¸^C@\0\0\0\0\0@;@\\Âõ(\\C@…ëQ¸>;@×£p=\nWC@áz®GA;@®GázTC@áz®GA;@\\Âõ(LC@Ház®G;@š™™™™IC@®GázN;@š™™™™IC@Âõ(\\O;@¸…ëQHC@×£p=\nW;@¸…ëQHC@\\Âõ(\\;@{®GáJC@Ház®g;@{®GáJC@R¸…ëq;@š™™™™IC@33333s;@¸…ëQHC@…ëQ¸~;@…ëQ¸EC@fffff†;@\0\0\0\0\0@C@\n×£p=Š;@\0\0\0\0\0@C@Âõ(\\;@=\n×£p=C@ö(\\Â•;@…ëQ¸>C@{®Gáš;@Ãõ(\\BC@…ëQ¸¥;@Ãõ(\\BC@)\\Âõ¨;@q=\n×£@C@)\\Âõ¨;@Âõ(\\?C@Âõ(\\¯;@®Gáz>C@R¸…ë±;@\\Âõ(<C@33333³;@ÍÌÌÌÌ<C@×£p=\n·;@ìQ¸…;C@{®Gáº;@…ëQ¸5C@\0\0\0\0\0À;@R¸…ë1C@=\n×£p½;@=\n×£p-C@®GázÔ;@ÍÌÌÌÌ,C@®GázÔ;@áz®G1C@¸…ëQØ;@333333C@\0\0\0\0\0à;@¤p=\n×3C@áz®Gá;@…ëQ¸5C@ìQ¸…ë;@×£p=\n7C@Ãõ(\\<@ö(\\Â5C@\n×£p=*<@fffff6C@)\\ÂõH<@®Gáz4C@ÍÌÌÌÌL<@Ãõ(\\2C@Âõ(\\O<@\\Âõ(,C@š™™™™Y<@\n×£p=*C@{®GáZ<@)\\Âõ(C@®Gázt<@Ház®\'C@=\n×£p}<@®Gáz$C@=\n×£p}<@Ãõ(\\\"C@Ãõ(\\‚<@\0\0\0\0\0 C@\0\0\0\0\0€<@¸…ëQC@×£p=\nw<@…ëQ¸C@Ãõ(\\‚<@áz®GC@Ãõ(\\‚<@®GázC@®Gázt<@\n×£p=\nC@33333s<@)\\ÂõC@Ház®g<@š™™™™	C@{®GáZ<@ÍÌÌÌÌC@š™™™™Y<@{®Gá\nC@®GázT<@\n×£p=\nC@ö(\\ÂU<@fffffC@®GázN<@®GázC@Ház®G<@áz®GC@fffffF<@R¸…ëC@{®Gá:<@\0\0\0\0\0\0C@ÍÌÌÌÌ,<@R¸…ëC@)\\Âõ(<@R¸…ëC@Ház®\'<@q=\n×£\0C@®Gáz<@áz®GC@®Gáz<@®GázþB@Ház®<@{®GáúB@Ãõ(\\<@\n×£p=úB@q=\n×£ð;@=\n×£pýB@ìQ¸…ë;@ìQ¸…ûB@Ãõ(\\â;@\\Âõ(üB@áz®Gá;@\n×£p=úB@\\Âõ(Ü;@¸…ëQøB@¸…ëQØ;@¸…ëQøB@ö(\\ÂÕ;@š™™™™ùB@®GázÔ;@)\\ÂõøB@Ház®Ç;@š™™™™ùB@¤p=\n×Ã;@¸…ëQøB@…ëQ¸¾;@¸…ëQøB@=\n×£p½;@\n×£p=úB@{®Gáº;@š™™™™ùB@×£p=\n·;@{®GáúB@ÍÌÌÌÌ¬;@\n×£p=úB@)\\Âõ¨;@¸…ëQøB@¤p=\n×£;@¸…ëQøB@\0\0\0\0\0 ;@\n×£p=úB@\0\0\0\0\0 ;@®GázþB@š™™™™™;@…ëQ¸þB@®Gáz”;@®GázþB@q=\n×£;@Âõ(\\ÿB@Ãõ(\\‚;@ìQ¸…ûB@Ãõ(\\‚;@Ház®÷B@{®Gáz;@ö(\\ÂõB@\\Âõ(|;@33333óB@ö(\\Âu;@=\n×£píB@¸…ëQx;@ÍÌÌÌÌìB@¸…ëQx;@\n×£p=êB@®Gázt;@¸…ëQèB@Ház®g;@fffffæB@\0\0\0\0\0`;@×£p=\nçB@{®GáZ;@\n×£p=êB@{®GáZ;@\\Âõ(ìB@×£p=\nW;@=\n×£píB@Ház®G;@Âõ(\\ïB@¤p=\n×C;@33333óB@\\Âõ(<;@Âõ(\\ïB@Ház®\';@=\n×£píB@¸…ëQ;@š™™™™éB@ÍÌÌÌÌ;@\0\0\0\0\0ðB@\n×£p=\n;@33333óB@\n×£p=ê:@)\\ÂõøB@…ëQ¸…:@®GázC@q=\n×£P:@ìQ¸…C@®Gáz4:@¤p=\n×C@ÍÌÌÌÌ,:@®GázC@333333:@¸…ëQ(C@R¸…ë1:@R¸…ë1C@š™™™™9:@{®Gá:C@ìQ¸…K:@\\Âõ(<C@ÍÌÌÌÌL:@\0\0\0\0\0@C@ìQ¸…K:@33333CC@333333:@R¸…ëQC@R¸…ë1:@fffffVC@×£p=\n7:@\\Âõ(\\C@\\Âõ(<:@…ëQ¸^C@\n×£p=J:@Ãõ(\\bC@33333s:@…ëQ¸eC@š™™™™™:@š™™™™iC@\0\0\0\0\0 :@…ëQ¸uC@®Gáz®:@…ëQ¸~C@Âõ(\\¯:@¤p=\n×ƒC@Ház®§:@…ëQ¸ŽC@');

-- --------------------------------------------------------

--
-- Tablo iÃ§in tablo yapÄ±sÄ± `parklar`
--

CREATE TABLE `parklar` (
  `park_id` int(11) NOT NULL,
  `park_adi` varchar(50) NOT NULL,
  `geography` point NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo dÃ¶kÃ¼m verisi `parklar`
--

INSERT INTO `parklar` (`park_id`, `park_adi`, `geography`) VALUES
(1, 'Ozgurluk Parki', '\0\0\0\0\0\0\0zàc°âD@äõ`R|h:@'),
(2, 'Osnabruck Parki', '\0\0\0\0\0\0\0B\"mãOD@”LNíg:@'),
(3, 'Halk Bahcesi', '\0\0\0\0\0\0\0å~‡¢@D@÷h:@'),
(4, 'Morabbin Parki', '\0\0\0\0\0\0\0…êæâoD@!‰—§g:@');

-- --------------------------------------------------------

--
-- Tablo iÃ§in tablo yapÄ±sÄ± `parti`
--

CREATE TABLE `parti` (
  `parti_id` int(11) NOT NULL,
  `parti_name` varchar(50) NOT NULL,
  `oy_orani` int(11) NOT NULL,
  `lokasyon_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo dÃ¶kÃ¼m verisi `parti`
--

INSERT INTO `parti` (`parti_id`, `parti_name`, `oy_orani`, `lokasyon_id`) VALUES
(1, 'A Parti', 55, 17),
(2, 'B Parti', 25, 17),
(3, 'C Parti', 20, 17),
(1, 'A Parti', 35, 34),
(2, 'B Parti', 55, 34),
(3, 'C Parti', 10, 34),
(1, 'A Parti', 35, 35),
(2, 'B Parti', 45, 35),
(3, 'C Parti', 20, 35),
(1, 'A Parti', 5, 6),
(2, 'B Parti', 55, 6),
(3, 'C Parti', 40, 6);

--
-- DÃ¶kÃ¼mÃ¼ yapÄ±lmÄ±ÅŸ tablolar iÃ§in indeksler
--

--
-- Tablo iÃ§in indeksler `caddeler`
--
ALTER TABLE `caddeler`
  ADD UNIQUE KEY `cadde_id` (`cadde_id`);

--
-- Tablo iÃ§in indeksler `il`
--
ALTER TABLE `il`
  ADD PRIMARY KEY (`il_plaka_kodu`),
  ADD UNIQUE KEY `il_plaka_kodu` (`il_plaka_kodu`),
  ADD KEY `il_plaka_kodu_2` (`il_plaka_kodu`);

--
-- Tablo iÃ§in indeksler `parklar`
--
ALTER TABLE `parklar`
  ADD PRIMARY KEY (`park_id`),
  ADD KEY `park_id` (`park_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
