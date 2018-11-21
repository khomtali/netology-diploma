CREATE TABLE `question` (
  `id_q` int(11) NOT NULL AUTO_INCREMENT,
  `id_q_user` int(11) NOT NULL,
  `topic` varchar(50) NOT NULL,
  `question` varchar(500) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `visibility` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_q`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `answer` (
  `id_a` int(11) NOT NULL AUTO_INCREMENT,
  `id_a_question` int(11) NOT NULL,
  `id_a_user` int(11) NOT NULL,
  `answer` varchar(500) NOT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_a`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `user` (
  `id_u` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id_u`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `user` (`id_u`, `login`, `password`, `name`) VALUES
(1, 'admin', 'admin', 'Admin')
