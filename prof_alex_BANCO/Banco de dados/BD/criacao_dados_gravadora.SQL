-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.18 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.0.0.5975
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para gravadora
DROP DATABASE IF EXISTS `gravadora`;
CREATE DATABASE IF NOT EXISTS `gravadora` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gravadora`;

-- Copiando estrutura para tabela gravadora.autor
DROP TABLE IF EXISTS `autor`;
CREATE TABLE IF NOT EXISTS `autor` (
  `codigo_autor` int(11) NOT NULL,
  `nome_autor` varchar(60) NOT NULL,
  PRIMARY KEY (`codigo_autor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela gravadora.autor: ~61 rows (aproximadamente)
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` (`codigo_autor`, `nome_autor`) VALUES
	(1, 'Renato Russo'),
	(2, 'Tom Jobim'),
	(3, 'Chico Buarque'),
	(4, 'Dado Villa-Lobos'),
	(5, 'Marcelo Bonfá'),
	(6, 'Ico Ouro-Preto'),
	(7, 'Vinicius de Moraes'),
	(8, 'Baden Powell'),
	(9, 'Paulo Cesar Pinheiro'),
	(10, 'João Bosco'),
	(11, 'Aldir Blanc'),
	(12, 'Joyce'),
	(13, 'Ana Terra'),
	(14, 'Cartola'),
	(15, 'Cláudio Tolomei'),
	(16, 'João Nogueira'),
	(17, 'Suely Costa'),
	(18, 'Guinga'),
	(19, 'Danilo Caymmi'),
	(20, 'Tunai'),
	(21, 'Sérgio Natureza'),
	(22, 'Heitor Villa Lobos'),
	(23, 'Ferreira Gullar'),
	(24, 'Catulo da Paixão Cearense'),
	(25, 'Zezé di Camargo'),
	(26, 'Niltinho Edilberto'),
	(27, 'Marisa Monte'),
	(28, 'Carlinhos Brown'),
	(29, 'Gonzaga Jr'),
	(30, 'Roberto Mendes'),
	(31, 'Ana Basbaum'),
	(32, 'Caetano Veloso'),
	(33, 'José Miguel Wisnik'),
	(34, 'Vevé Calazans'),
	(35, 'Gerônimo'),
	(36, 'Sérgio Natureza'),
	(37, 'Roberto Carlos'),
	(38, 'Erasmo Carlos'),
	(39, 'Renato Teixeira'),
	(40, 'Chico César'),
	(41, 'Vanessa da Mata'),
	(42, 'Jorge Portugal'),
	(43, 'Lilian Knapp'),
	(44, 'Renato Barros'),
	(45, 'Bebel Gilberto'),
	(46, 'Cazuza'),
	(47, 'Dé'),
	(48, 'Adriana Calcanhoto'),
	(49, 'Antonio Cícero'),
	(50, 'Paulo Machado'),
	(51, 'Dorival Caymmi'),
	(52, 'João Donato'),
	(53, 'Ronaldo Bastos'),
	(54, 'Barry Manilow'),
	(55, 'Richard Kerr'),
	(56, 'Chris Arnold'),
	(57, 'David Pomeranz'),
	(58, 'George Michael'),
	(59, 'S. Wonder'),
	(60, 'Elton John'),
	(61, 'Arnaldo Antunes');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;

-- Copiando estrutura para tabela gravadora.cd
DROP TABLE IF EXISTS `cd`;
CREATE TABLE IF NOT EXISTS `cd` (
  `codigo_cd` int(11) NOT NULL,
  `codigo_gravadora` int(11) NOT NULL,
  `nome_cd` varchar(60) NOT NULL,
  `preco_venda_cd` decimal(14,2) DEFAULT NULL,
  `data_lancamento_cd` date DEFAULT NULL,
  `cd_indicado` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo_cd`),
  KEY `xif6cd` (`codigo_gravadora`),
  CONSTRAINT `gravadora_cd` FOREIGN KEY (`codigo_gravadora`) REFERENCES `gravadora` (`codigo_gravadora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela gravadora.cd: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `cd` DISABLE KEYS */;
INSERT INTO `cd` (`codigo_cd`, `codigo_gravadora`, `nome_cd`, `preco_venda_cd`, `data_lancamento_cd`, `cd_indicado`) VALUES
	(1, 1, 'Mais do Mesmo', 15.00, '1998-10-01', 5),
	(2, 2, 'Bate-Boca', 12.00, '1999-07-01', 3),
	(3, 3, 'Elis Regina - Essa Mulher', 13.00, '1989-05-01', 1),
	(4, 2, 'A Força que nunca Seca', 13.50, '1998-12-01', 1),
	(5, 3, 'Perfil', 10.50, '2001-05-01', 2),
	(6, 2, 'Barry Manilow Greatest Hits Vol I', 9.50, '1991-11-01', 7),
	(7, 2, 'Listen Without Prejudice', 9.00, '1991-10-01', NULL);
/*!40000 ALTER TABLE `cd` ENABLE KEYS */;

-- Copiando estrutura para tabela gravadora.cd_categoria
DROP TABLE IF EXISTS `cd_categoria`;
CREATE TABLE IF NOT EXISTS `cd_categoria` (
  `codigo_categoria` int(11) NOT NULL,
  `menor_preco` decimal(14,2) NOT NULL,
  `maior_preco` decimal(14,2) NOT NULL,
  `codigo_cd` int(11) NOT NULL,
  PRIMARY KEY (`codigo_categoria`),
  KEY `cd_categoria_cd` (`codigo_cd`),
  CONSTRAINT `cd_categoria_cd` FOREIGN KEY (`codigo_cd`) REFERENCES `cd` (`codigo_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela gravadora.cd_categoria: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `cd_categoria` DISABLE KEYS */;
INSERT INTO `cd_categoria` (`codigo_categoria`, `menor_preco`, `maior_preco`, `codigo_cd`) VALUES
	(1, 5.00, 10.00, 1),
	(2, 10.01, 12.00, 2),
	(3, 12.01, 15.00, 3),
	(4, 15.01, 20.00, 4);
/*!40000 ALTER TABLE `cd_categoria` ENABLE KEYS */;

-- Copiando estrutura para tabela gravadora.faixa
DROP TABLE IF EXISTS `faixa`;
CREATE TABLE IF NOT EXISTS `faixa` (
  `codigo_musica` int(11) NOT NULL,
  `codigo_cd` int(11) NOT NULL,
  `numero_faixa` int(11) NOT NULL,
  PRIMARY KEY (`codigo_musica`,`codigo_cd`),
  KEY `xif13faixa` (`codigo_musica`),
  KEY `xif14faixa` (`codigo_cd`),
  CONSTRAINT `cd_faixa` FOREIGN KEY (`codigo_cd`) REFERENCES `cd` (`codigo_cd`),
  CONSTRAINT `musica_faixa` FOREIGN KEY (`codigo_musica`) REFERENCES `musica` (`codigo_musica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela gravadora.faixa: ~88 rows (aproximadamente)
/*!40000 ALTER TABLE `faixa` DISABLE KEYS */;
INSERT INTO `faixa` (`codigo_musica`, `codigo_cd`, `numero_faixa`) VALUES
	(1, 1, 1),
	(2, 1, 2),
	(3, 1, 3),
	(4, 1, 4),
	(5, 1, 5),
	(6, 1, 6),
	(7, 1, 7),
	(8, 1, 8),
	(9, 1, 9),
	(10, 1, 10),
	(11, 1, 11),
	(12, 1, 12),
	(13, 1, 13),
	(14, 1, 14),
	(15, 1, 15),
	(16, 1, 16),
	(17, 2, 1),
	(18, 2, 2),
	(19, 2, 3),
	(20, 2, 4),
	(21, 2, 5),
	(22, 2, 6),
	(23, 2, 7),
	(24, 2, 8),
	(25, 2, 9),
	(26, 2, 10),
	(27, 2, 11),
	(28, 2, 12),
	(29, 2, 13),
	(30, 2, 14),
	(31, 3, 1),
	(32, 3, 2),
	(33, 3, 3),
	(34, 3, 4),
	(35, 3, 5),
	(36, 3, 6),
	(37, 3, 7),
	(38, 3, 8),
	(39, 3, 9),
	(40, 3, 10),
	(41, 4, 1),
	(42, 4, 2),
	(43, 4, 3),
	(44, 4, 4),
	(45, 4, 5),
	(46, 4, 6),
	(47, 4, 7),
	(48, 4, 8),
	(49, 4, 9),
	(50, 4, 10),
	(51, 4, 11),
	(52, 4, 12),
	(53, 4, 13),
	(54, 4, 14),
	(55, 5, 1),
	(56, 5, 2),
	(57, 5, 3),
	(58, 5, 4),
	(59, 5, 5),
	(60, 5, 6),
	(61, 5, 7),
	(62, 5, 8),
	(63, 5, 9),
	(64, 5, 10),
	(65, 5, 11),
	(66, 5, 12),
	(67, 5, 13),
	(68, 6, 1),
	(69, 6, 2),
	(70, 6, 3),
	(71, 6, 4),
	(72, 6, 5),
	(73, 6, 6),
	(74, 6, 7),
	(75, 6, 8),
	(76, 6, 9),
	(77, 6, 10),
	(78, 7, 1),
	(79, 7, 2),
	(80, 7, 3),
	(81, 7, 4),
	(82, 7, 5),
	(83, 7, 6),
	(84, 7, 7),
	(85, 7, 8),
	(86, 7, 9),
	(87, 7, 10),
	(88, 7, 11);
/*!40000 ALTER TABLE `faixa` ENABLE KEYS */;

-- Copiando estrutura para tabela gravadora.gravadora
DROP TABLE IF EXISTS `gravadora`;
CREATE TABLE IF NOT EXISTS `gravadora` (
  `codigo_gravadora` int(11) NOT NULL,
  `nome_gravadora` varchar(60) NOT NULL,
  `endereco_gravadora` varchar(60) DEFAULT NULL,
  `telefone_gravadora` varchar(20) DEFAULT NULL,
  `contato_gravadora` varchar(20) DEFAULT NULL,
  `url_gravadora` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`codigo_gravadora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela gravadora.gravadora: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `gravadora` DISABLE KEYS */;
INSERT INTO `gravadora` (`codigo_gravadora`, `nome_gravadora`, `endereco_gravadora`, `telefone_gravadora`, `contato_gravadora`, `url_gravadora`) VALUES
	(1, 'EMI', 'Rod. Pres. Dutra, s/n – km 229,8', NULL, 'JOÃO', 'www.emi-music.com.br'),
	(2, 'BMG', 'Av. Piramboia, 2898 - Parte 7', NULL, 'MARIA', 'www.bmg.com.br'),
	(3, 'SOM LIVRE', NULL, NULL, 'MARTA', 'www.somlivre.com.br'),
	(4, 'EPIC', NULL, NULL, 'PAULO', 'www.epic.com.br');
/*!40000 ALTER TABLE `gravadora` ENABLE KEYS */;

-- Copiando estrutura para tabela gravadora.musica
DROP TABLE IF EXISTS `musica`;
CREATE TABLE IF NOT EXISTS `musica` (
  `codigo_musica` int(11) NOT NULL,
  `nome_musica` varchar(60) NOT NULL,
  `duracao_musica` time DEFAULT NULL,
  PRIMARY KEY (`codigo_musica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela gravadora.musica: ~88 rows (aproximadamente)
/*!40000 ALTER TABLE `musica` DISABLE KEYS */;
INSERT INTO `musica` (`codigo_musica`, `nome_musica`, `duracao_musica`) VALUES
	(1, 'Será', '00:02:28'),
	(2, 'Ainda é Cedo', '00:03:55'),
	(3, 'Geração Coca-Cola', '00:02:20'),
	(4, 'Eduardo e Monica', '00:04:32'),
	(5, 'Tempo Perdido', '00:05:00'),
	(6, 'Índios', '00:04:23'),
	(7, 'Que País é Este', '00:02:59'),
	(8, 'Faroeste Caboclo', '00:09:03'),
	(9, 'Há Tempos', '00:03:16'),
	(10, 'Pais e Filhos', '00:05:06'),
	(11, 'Meninos e Meninas', '00:03:22'),
	(12, 'Vento no Litoral', '00:06:05'),
	(13, 'Perfeição', '00:04:35'),
	(14, 'Giz', '00:03:20'),
	(15, 'Dezesseis', '00:05:28'),
	(16, 'Antes das Seis', '00:03:09'),
	(17, 'Meninos, Eu Vi', '00:03:25'),
	(18, 'Eu Te Amo', '00:03:06'),
	(19, 'Piano na Mangueira', '00:02:23'),
	(20, 'A Violeira', '00:02:54'),
	(21, 'Anos Dourados', '00:02:56'),
	(22, 'Olha, Maria', '00:03:55'),
	(23, 'Biscate', '00:03:20'),
	(24, 'Retrato em Preto e Branco', '00:03:03'),
	(25, 'Falando de Amor', '00:03:20'),
	(26, 'Pois É', '00:02:48'),
	(27, 'Noite dos Mascarados', '00:02:42'),
	(28, 'Sabiá', '00:03:20'),
	(29, 'Imagina', '00:02:52'),
	(30, 'Bate-Boca', '00:04:41'),
	(31, 'Cai Dentro', '00:02:41'),
	(32, 'O Bêbado e o Equilibrista', '00:03:47'),
	(33, 'Essa Mulher', '00:03:47'),
	(34, 'Basta de Clamares Inocência', '00:03:38'),
	(35, 'Beguine Dodói', '00:02:14'),
	(36, 'Eu hein Rosa', '00:03:36'),
	(37, 'Altos e Baixos', '00:03:29'),
	(38, 'Bolero de Satã', '00:03:32'),
	(39, 'Pé Sem Cabeça', '00:02:57'),
	(40, 'As Aparências Enganam', '00:04:18'),
	(41, 'É o Amor', '00:04:19'),
	(42, 'Trenzinho Caipira', '00:03:32'),
	(43, 'Luar do Sertão', '00:03:23'),
	(44, 'Não tenha Medo', '00:03:27'),
	(45, 'Eu queria que você viesse', '00:02:57'),
	(46, 'Espere por mim Morena', '00:03:04'),
	(47, 'Resto de mim', '00:02:59'),
	(48, 'Gema', '00:02:51'),
	(49, 'Cacilda', '00:02:22'),
	(50, 'Agradecer e abraçar', '00:03:30'),
	(51, 'As flores do jardim da nossa casa', '00:03:26'),
	(52, 'Romaria', '00:03:16'),
	(53, 'A força que nunca seca', '00:02:17'),
	(54, 'Vila do Adeus', '00:03:06'),
	(55, 'Devolva-me', '00:03:58'),
	(56, 'Mais Feliz', '00:02:50'),
	(57, 'Inverno', '00:04:40'),
	(58, 'Mentiras', '00:02:58'),
	(59, 'Esquadros', '00:03:10'),
	(60, 'Cariocas', '00:03:14'),
	(61, 'Vambora', '00:04:16'),
	(62, 'Por isso eu Corro Demais', '00:02:58'),
	(63, 'Maresia', '00:04:09'),
	(64, 'Metade', '00:03:25'),
	(65, 'Senhas', '00:03:37'),
	(66, 'Marina', '00:02:55'),
	(67, 'Naquela Estação', '00:04:46'),
	(68, 'Mandy', '00:03:18'),
	(69, 'New York City Rhythm', '00:04:41'),
	(70, 'Looks Like We Made It', '00:03:32'),
	(71, 'Daybreak', '00:03:05'),
	(72, 'Can\'t Smile Without you', '00:03:13'),
	(73, 'It\'s a Miracle', '00:03:53'),
	(74, 'Even Now', '00:03:29'),
	(75, 'Bandstand Boogie', '00:02:50'),
	(76, 'Trying to get the feeling again', '00:03:50'),
	(77, 'Some Kind of Friend', '00:04:02'),
	(78, 'Praying for Time', '00:03:52'),
	(79, 'Freedom 90', '00:03:52'),
	(80, 'They Won\'t Go When I Go', '00:03:22'),
	(81, 'Something to Save', '00:04:10'),
	(82, 'Cowboys and Angels', '00:04:12'),
	(83, 'Don\'t Let the Sun Go Down on Me', '00:03:45'),
	(84, 'Waiting for That Day', '00:02:58'),
	(85, 'Mothers Pride', '00:02:12'),
	(86, 'Heal the Pain', '00:03:02'),
	(87, 'Soul Free', '00:02:42'),
	(88, 'Waiting', '00:03:32');
/*!40000 ALTER TABLE `musica` ENABLE KEYS */;

-- Copiando estrutura para tabela gravadora.musica_autor
DROP TABLE IF EXISTS `musica_autor`;
CREATE TABLE IF NOT EXISTS `musica_autor` (
  `codigo_musica` int(11) NOT NULL,
  `codigo_autor` int(11) NOT NULL,
  PRIMARY KEY (`codigo_musica`,`codigo_autor`),
  KEY `xif11musica_autor` (`codigo_musica`),
  KEY `xif12musica_autor` (`codigo_autor`),
  CONSTRAINT `autor_musica_autor` FOREIGN KEY (`codigo_autor`) REFERENCES `autor` (`codigo_autor`),
  CONSTRAINT `musica_musica_autor` FOREIGN KEY (`codigo_musica`) REFERENCES `musica` (`codigo_musica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela gravadora.musica_autor: ~140 rows (aproximadamente)
/*!40000 ALTER TABLE `musica_autor` DISABLE KEYS */;
INSERT INTO `musica_autor` (`codigo_musica`, `codigo_autor`) VALUES
	(1, 1),
	(2, 5),
	(2, 6),
	(3, 1),
	(3, 4),
	(3, 5),
	(4, 1),
	(4, 4),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(9, 1),
	(9, 4),
	(9, 5),
	(10, 1),
	(10, 4),
	(10, 5),
	(11, 1),
	(11, 4),
	(11, 5),
	(12, 1),
	(12, 4),
	(12, 5),
	(13, 1),
	(13, 4),
	(13, 5),
	(14, 1),
	(14, 4),
	(14, 5),
	(15, 1),
	(15, 4),
	(15, 5),
	(16, 1),
	(16, 4),
	(16, 5),
	(17, 2),
	(17, 3),
	(18, 2),
	(18, 3),
	(19, 2),
	(19, 3),
	(20, 2),
	(20, 3),
	(21, 2),
	(21, 3),
	(22, 2),
	(22, 3),
	(22, 7),
	(23, 3),
	(24, 2),
	(24, 3),
	(25, 2),
	(26, 2),
	(26, 3),
	(27, 3),
	(28, 2),
	(28, 3),
	(29, 2),
	(29, 3),
	(30, 3),
	(31, 8),
	(31, 9),
	(32, 10),
	(32, 11),
	(33, 12),
	(33, 13),
	(34, 14),
	(35, 10),
	(35, 11),
	(35, 15),
	(36, 9),
	(36, 16),
	(37, 11),
	(37, 17),
	(38, 9),
	(38, 18),
	(39, 13),
	(39, 19),
	(40, 20),
	(40, 21),
	(41, 25),
	(44, 26),
	(45, 27),
	(45, 28),
	(46, 29),
	(47, 30),
	(47, 31),
	(48, 32),
	(49, 33),
	(50, 35),
	(50, 36),
	(51, 37),
	(51, 38),
	(52, 39),
	(53, 40),
	(53, 41),
	(54, 30),
	(54, 42),
	(55, 43),
	(55, 44),
	(56, 45),
	(56, 46),
	(56, 47),
	(57, 48),
	(57, 49),
	(58, 48),
	(59, 48),
	(60, 48),
	(61, 48),
	(62, 37),
	(63, 49),
	(63, 50),
	(64, 48),
	(65, 48),
	(66, 51),
	(67, 32),
	(67, 52),
	(67, 53),
	(68, 55),
	(69, 54),
	(70, 55),
	(71, 54),
	(72, 56),
	(73, 54),
	(74, 54),
	(75, 54),
	(76, 57),
	(77, 54),
	(78, 58),
	(79, 58),
	(80, 59),
	(81, 58),
	(82, 58),
	(83, 60),
	(84, 58),
	(85, 58),
	(86, 58),
	(87, 58),
	(88, 58);
/*!40000 ALTER TABLE `musica_autor` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
