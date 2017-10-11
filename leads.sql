-- phpMyAdmin SQL Dump
-- version 4.4.15.1
-- http://www.phpmyadmin.net
--
-- Host: mysql857.umbler.com
-- Generation Time: 11-Out-2017 às 00:49
-- Versão do servidor: 5.6.34-log
-- PHP Version: 5.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `monstro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `leads`
--

CREATE TABLE IF NOT EXISTS `leads` (
  `id` int(11) NOT NULL,
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
  `interesse` varchar(32) NOT NULL,
  `estilo-vida` varchar(32) NOT NULL,
  `preferencia` varchar(32) NOT NULL,
  `email` varchar(256) NOT NULL,
  `telefone` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `leads`
--

INSERT INTO `leads` (`id`, `nome`, `renda-mensal`, `entrada`, `idade`, `imovel-tipo`, `imovel-situacao`, `prioridade`, `dormitorios`, `garagem`, `sacada`, `tamanho--localizacao`, `areainterna--areacomum`, `interesse`, `estilo-vida`, `preferencia`, `email`, `telefone`) VALUES
(8, 'Aparece 2x o nome essa é a 1', '1750000,00', '100000,00', 'meu nome', 'todas', 'planta', 'lifestyle', 1, 1, 'nao', '-3', '3', 'vida noturna', 'fitness', 'outros', 'naosei@naovoudizer.com.br', '123456789125812'),
(7, 'Flávia Mette', '2500,00', '20000,00', 'Flávia', 'apartamento', 'planta', 'preco', 1, 1, 'nao', '-2', '-2', 'praia', 'negocios', 'lazer', 'flaviamette@gmail.com', '47996151546'),
(6, 'Luiz Felipe', '2850', '45000', '29', 'casa', 'pronto', 'lifestyle', 2, 1, 'sim', '2', '-2', 'praia', 'fitness', 'lazer', 'lfelipe@websis.inf.br', '48 9 9994-8599'),
(9, 'Beatriz', '1500,00', '20000,00', '22', 'todas', 'planta', 'preco', 2, 1, 'sim', '-3', '-2', 'praia', 'arte e cultura', 'lazer', 'beatriz00bibi@gmail.com', '47 997197820'),
(10, 'Alana', '1750', '200000', '21', 'loft', 'planta', 'preco', 1, 1, 'sim', '-2', '-3', 'vida noturna', 'gastronomia', 'gastronomia', 'gcwerlich@gmail.com', '7975'),
(11, 'teste', 'aafafa', 'fafafa', 'fafa', 'todas', 'pronto', 'preco', 0, 0, '', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
