-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Tempo de geração: 31-Jan-2021 às 11:07
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `hadson_teste`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `encaminhamento`
--

DROP TABLE IF EXISTS `encaminhamento`;
CREATE TABLE IF NOT EXISTS `encaminhamento` (
  `usuario` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `processo` int(20) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `situacao` char(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `encaminhamento`
--

INSERT INTO `encaminhamento` (`usuario`, `processo`, `data`, `situacao`) VALUES
('hadson', 156577891, '2021-01-11 00:00:00', '1455'),
('hadson', 122445577, '2021-01-11 00:00:00', 'gfgfgf'),
('hadson', 16, '2021-01-11 07:47:36', 'ativo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `processo`
--

DROP TABLE IF EXISTS `processo`;
CREATE TABLE IF NOT EXISTS `processo` (
  `numero` int(10) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `tipo` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orgao` char(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `processo`
--

INSERT INTO `processo` (`numero`, `data`, `tipo`, `orgao`) VALUES
(154455677, '2021-01-04', 'criminal', 'ministerio publico');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `nome` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rg` int(11) DEFAULT NULL,
  `cpf` int(11) DEFAULT NULL,
  `tipo_usuario` int(11) DEFAULT NULL,
  `senha` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`nome`, `rg`, `cpf`, `tipo_usuario`, `senha`) VALUES
('carlos', 38667548, 147458926, 147458926, '123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
