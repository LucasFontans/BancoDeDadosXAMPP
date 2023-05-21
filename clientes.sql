-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Mar-2023 às 01:32
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `s112_clientedb6`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_clientes`
--

CREATE TABLE `tabela_clientes` (
  `COD_Cliente` int(10) DEFAULT NULL,
  `Nome` char(30) DEFAULT NULL,
  `Telefone` int(15) DEFAULT NULL,
  `Endereco` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tabela_clientes`
--

INSERT INTO `tabela_clientes` (`COD_Cliente`, `Nome`, `Telefone`, `Endereco`) VALUES
(1, 'Fabiano', 9999, 'Rua 2, mansão 3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_intens_pedido`
--

CREATE TABLE `tabela_intens_pedido` (
  `COD_Pedido` int(10) DEFAULT NULL,
  `COD_Produto` int(10) DEFAULT NULL,
  `QTD` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_pedidos`
--

CREATE TABLE `tabela_pedidos` (
  `COD_Pedido` int(10) DEFAULT NULL,
  `COD_Cliente` int(15) DEFAULT NULL,
  `Data_Pedido` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tabela_pedidos`
--

INSERT INTO `tabela_pedidos` (`COD_Pedido`, `COD_Cliente`, `Data_Pedido`) VALUES
(1, 1, '2019-03-01');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_produtos`
--

CREATE TABLE `tabela_produtos` (
  `COD_Produto` int(10) DEFAULT NULL,
  `Descricao` char(50) DEFAULT NULL,
  `Estoque` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tabela_produtos`
--

INSERT INTO `tabela_produtos` (`COD_Produto`, `Descricao`, `Estoque`) VALUES
(1, 'Pizza', 5),
(2, 'Coca Cola', 10);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
