-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 11-Out-2017 às 08:16
-- Versão do servidor: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leads`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `leads`
--

DROP TABLE IF EXISTS `leads`;
CREATE TABLE IF NOT EXISTS `leads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(128) NOT NULL,
  `renda-mensal` varchar(32) NOT NULL,
  `entrada` varchar(32) NOT NULL,
  `idade` varchar(8) NOT NULL,
  `imovel-tipo` varchar(32) NOT NULL,
  `imovel-situacao` varchar(32) NOT NULL,
  `prioridade` varchar(32) NOT NULL,
  `dormitorios` int(2) NOT NULL,
  `garagem` int(1) NOT NULL,
  `sacada` set('sim','nao') NOT NULL,
  `tamanho--localizacao` varchar(8) NOT NULL,
  `areainterna--areacomum` varchar(8) NOT NULL,
  `residencial--comercial` int(2) NOT NULL,
  `interesse` varchar(128) NOT NULL,
  `email` varchar(256) NOT NULL,
  `telefone` varchar(32) NOT NULL,
  `data_hora` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `leads`
--

INSERT INTO `leads` (`id`, `nome`, `renda-mensal`, `entrada`, `idade`, `imovel-tipo`, `imovel-situacao`, `prioridade`, `dormitorios`, `garagem`, `sacada`, `tamanho--localizacao`, `areainterna--areacomum`, `residencial--comercial`, `interesse`, `email`, `telefone`, `data_hora`) VALUES
(5, 'Luiz Felipe', '18500', '150000', '29', 'casa', 'planta', 'preco', 1, 1, 'nao', '-2', '-2', -2, 'gastronomia,fitness,negocios', 'lfelipe@websis.inf.br', '48 9 9994-8599', '2017-10-11 05:03:59'),
(6, 'Luiz Felipe', '2540', '150000', '33', 'todas', 'pronto', 'preco', 1, 0, 'nao', '-2', '-2', -3, 'praia,fitness,tecnologia,negocios', 'felipe@websis.inf.br', '(41) 3022-7550', '2017-10-11 05:07:52'),
(7, 'Play By Day', '18500', '150000', '45', 'apartamento', 'planta', 'preco', 1, 1, 'sim', '-3', '-2', -1, 'vida noturna,negocios', 'loja.crystal@gtinternacional.com', '(41) 3022-7550', '2017-10-11 05:09:46'),
(8, 'Luiz Felipe', '18500', '175000', '52', 'apartamento', 'pronto', 'preco', 2, 2, 'sim', '-3', '-3', 3, 'fitness,outros', 'felipe@websis.inf.br', '48 9 9994-8599', '2017-10-11 05:11:12'),
(9, 'Luiz Felipe', '1900', '150000', '45', 'apartamento', 'planta', 'preco', 2, 0, 'nao', '2', '2', 2, 'gastronomia,outros', 'loja.crystal@gtinternacional.com', '(41) 3022-7550', '2017-10-11 05:12:34');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
