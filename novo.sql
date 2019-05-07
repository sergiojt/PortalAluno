-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.1.38-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para portalaluno
CREATE DATABASE IF NOT EXISTS `portalaluno` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `portalaluno`;

-- Copiando estrutura para tabela portalaluno.aluno
CREATE TABLE IF NOT EXISTS `aluno` (
  `codaluno` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL DEFAULT '0',
  `idade` int(11) NOT NULL DEFAULT '0',
  `endereco` varchar(100) NOT NULL DEFAULT '0',
  `login` varchar(50) NOT NULL DEFAULT '0',
  `senha` varchar(50) NOT NULL DEFAULT '0',
  `curso` int(11) DEFAULT NULL,
  PRIMARY KEY (`codaluno`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela portalaluno.aluno: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` (`codaluno`, `nome`, `idade`, `endereco`, `login`, `senha`, `curso`) VALUES
	(11, 'Sergio', 29, 'rua capitao lima', 'sergiosw', 'e10adc3949ba59abbe56e057f20f883e', 2),
	(12, 'Jorge', 36, 'Aqui e agora', 'jorgelwuiz', 'eb6290011e4340bd75eaeaf9b82ee259', 2),
	(14, 'renato', 28, 'rua capitao lima', 'renato123', 'e10adc3949ba59abbe56e057f20f883e', 1),
	(15, 'teste denovo', 28, 'Rua edna', 'teste123', '670f8574bd93dd78bd568dab84c6733a', 3),
	(16, 'maria', 17, 'av liberdade', 'maria123', '263bce650e68ab4e23f28263760b9fa5', 3);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;

-- Copiando estrutura para tabela portalaluno.bancodiciplina
CREATE TABLE IF NOT EXISTS `bancodiciplina` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL DEFAULT '0',
  `diciplina` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela portalaluno.bancodiciplina: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `bancodiciplina` DISABLE KEYS */;
INSERT INTO `bancodiciplina` (`cod`, `login`, `diciplina`) VALUES
	(28, 'joao123', 'Ciencia Politica'),
	(31, 'sergiosw', 'POO'),
	(34, 'jorgelwuiz', 'Banco de Dados'),
	(36, 'sergiosw', 'Logica Matematica'),
	(37, 'renato123', 'Matematica e Economia'),
	(38, 'teste123', 'Ciencia Politica'),
	(39, 'teste123', 'Introducao ao Direito'),
	(41, 'maria123', 'Ciencia Politica');
/*!40000 ALTER TABLE `bancodiciplina` ENABLE KEYS */;

-- Copiando estrutura para tabela portalaluno.cursos
CREATE TABLE IF NOT EXISTS `cursos` (
  `codcurso` int(11) NOT NULL AUTO_INCREMENT,
  `curso` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`codcurso`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela portalaluno.cursos: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` (`codcurso`, `curso`) VALUES
	(1, 'Contabilidade'),
	(2, 'Analise e Desenvolvimento'),
	(3, 'Direito');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;

-- Copiando estrutura para tabela portalaluno.diciplinas
CREATE TABLE IF NOT EXISTS `diciplinas` (
  `coddiciplina` int(11) NOT NULL AUTO_INCREMENT,
  `diciplina` varchar(50) DEFAULT '0',
  `curso` int(11) DEFAULT '0',
  PRIMARY KEY (`coddiciplina`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela portalaluno.diciplinas: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `diciplinas` DISABLE KEYS */;
INSERT INTO `diciplinas` (`coddiciplina`, `diciplina`, `curso`) VALUES
	(10, 'Matematica e Economia', 1),
	(11, 'Analise de Custos', 1),
	(12, 'Planejamento Tributario', 1),
	(13, 'Ciencia Politica', 3),
	(14, 'Introducao ao Direito', 3),
	(15, 'Direito Constitucional', 3),
	(16, 'POO', 2),
	(17, 'Logica Matematica', 2),
	(18, 'Banco de Dados', 2);
/*!40000 ALTER TABLE `diciplinas` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
