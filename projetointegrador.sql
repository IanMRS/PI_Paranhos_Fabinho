-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Ago-2023 às 04:23
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projetointegrador`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cores`
--

CREATE TABLE `cores` (
  `Nome` text NOT NULL,
  `SIAPE` varchar(50) NOT NULL,
  `E-mail` varchar(50) NOT NULL,
  `Usuario` varchar(50) NOT NULL,
  `Senha` varchar(20) NOT NULL,
  `Coordenacao` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cores`
--

INSERT INTO `cores` (`Nome`, `SIAPE`, `E-mail`, `Usuario`, `Senha`, `Coordenacao`) VALUES
('AWDWAD', '2D2323', '22DAD', 'AWDA2', '23232', ''),
('AWDWAD', '2D2323', '22DAD', 'AWDA2', '23232', ''),
('adwad', 'awd2', '2ada', 'awd', '232', 'awdd');

-- --------------------------------------------------------

--
-- Estrutura da tabela `discente`
--

CREATE TABLE `discente` (
  `Nome` text NOT NULL,
  `E-mail(INST)` varchar(50) NOT NULL,
  `Curso` text NOT NULL,
  `Turma` varchar(20) NOT NULL,
  `Telefone` int(20) NOT NULL,
  `Matricula` int(50) NOT NULL,
  `Senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `discente`
--

INSERT INTO `discente` (`Nome`, `E-mail(INST)`, `Curso`, `Turma`, `Telefone`, `Matricula`, `Senha`) VALUES
('awd', '2ad', 'ad', '2d', 1313, 0, '2323'),
('pedro', 'pl1997433@gmail.com', 'informatica', 'EI-32', 1313, 12, '1221'),
('marco', 'ad1997433@gmail.com', 'ed', 'EI-22', 13132, 2147483647, '211');

-- --------------------------------------------------------

--
-- Estrutura da tabela `doscente`
--

CREATE TABLE `doscente` (
  `SIAP` varchar(50) NOT NULL,
  `Nome` text NOT NULL,
  `E-mail` varchar(50) NOT NULL,
  `Curso` text NOT NULL,
  `Usuario` varchar(20) NOT NULL,
  `Senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `doscente`
--

INSERT INTO `doscente` (`SIAP`, `Nome`, `E-mail`, `Curso`, `Usuario`, `Senha`) VALUES
('34', 'sef', '34s', 's3fsef', 'sef3', '3434'),
('2D2323', 'julio', 'awl1997433@gmail.com', 'ed', '1234567', '234'),
('1234567', 'helio', 'awd97433@gmail.com', 'ei', 'hel', '1234');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
