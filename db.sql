SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT=0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


CREATE TABLE IF NOT EXISTS `userbot_bind` (
  `id_user` int(11) NOT NULL,
  `code` varchar(8) NOT NULL,
  `id_chat` int(11) NOT NULL,
  `id_duty` int(11) NOT NULL DEFAULT '0',
  `title` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_user`,`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `userbot_data` (
  `id_user` int(11) NOT NULL,
  `token` text NOT NULL DEFAULT '',
  `btoken` text NOT NULL DEFAULT '',
  `ctoken` text NOT NULL DEFAULT '',
  `mtoken` text NOT NULL DEFAULT '',
  `bptime` int(11) NOT NULL DEFAULT '0',
  `secret` varchar(64) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
