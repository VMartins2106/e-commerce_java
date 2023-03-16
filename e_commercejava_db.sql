-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Mar-2023 às 15:26
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
-- Banco de dados: `e_commercejava_db`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_adm`
--

CREATE TABLE `tb_adm` (
  `id` int(11) NOT NULL,
  `nomeAdm` varchar(50) NOT NULL,
  `emailAdm` varchar(100) NOT NULL,
  `senhaAdm` varchar(15) NOT NULL,
  `telefoneAdm` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tb_adm`
--

INSERT INTO `tb_adm` (`id`, `nomeAdm`, `emailAdm`, `senhaAdm`, `telefoneAdm`) VALUES
(1, 'victor', 'victor@adm.com', '123456', '11960586785');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_carrinho`
--

CREATE TABLE `tb_carrinho` (
  `idProduto` int(11) NOT NULL,
  `nomeProduto` varchar(100) NOT NULL,
  `valorProduto` double NOT NULL,
  `descricaoProduto` varchar(500) NOT NULL,
  `qtdProduto` int(11) NOT NULL,
  `valorTotal` double NOT NULL,
  `fkUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_compras`
--

CREATE TABLE `tb_compras` (
  `id` int(11) NOT NULL,
  `valorCompra` double NOT NULL,
  `dataCompra` varchar(10) NOT NULL,
  `fkUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tb_compras`
--

INSERT INTO `tb_compras` (`id`, `valorCompra`, `dataCompra`, `fkUsuario`) VALUES
(3, 1859.49, '08/03/2023', 14),
(4, 79.9, '08/03/2023', 14),
(5, 259.9, '08/03/2023', 9),
(6, 959.79, '08/03/2023', 9),
(7, 839.3000000000001, '08/03/2023', 9),
(8, 1999.95, '08/03/2023', 9),
(9, 69.9, '08/03/2023', 9),
(10, 69.9, '08/03/2023', 9),
(11, 719.4000000000001, '08/03/2023', 9),
(12, 139.9, '08/03/2023', 9),
(13, 259.9, '08/03/2023', 9),
(14, 6138.0999999999985, '09/03/2023', 9),
(15, 5457.9, '09/03/2023', 9),
(16, 2998.5, '09/03/2023', 9),
(17, 1149.94, '09/03/2023', 23),
(18, 499.99, '10/03/2023', 25);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_reclamacao`
--

CREATE TABLE `tb_reclamacao` (
  `id` int(11) NOT NULL,
  `assunto` varchar(100) NOT NULL,
  `mensagem` varchar(500) NOT NULL,
  `fkUsuarioSender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tb_reclamacao`
--

INSERT INTO `tb_reclamacao` (`id`, `assunto`, `mensagem`, `fkUsuarioSender`) VALUES
(1, 'Lentidão no servidor', 'Muito instável em todas as telas', 9),
(2, 'Outros', 'Lentidão no servidor', 23),
(3, 'Dificuldades na compra', 'waqewqe', 25);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `idUsuario` int(11) NOT NULL,
  `nomeUsuario` varchar(50) NOT NULL,
  `emailUsuario` varchar(100) NOT NULL,
  `senhaUsuario` varchar(15) NOT NULL,
  `telefoneUsuario` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tb_usuario`
--

INSERT INTO `tb_usuario` (`idUsuario`, `nomeUsuario`, `emailUsuario`, `senhaUsuario`, `telefoneUsuario`) VALUES
(9, 'Vitão', 'victor@gmail.com', '123456', '11960586785'),
(14, 'nat', 'nat@gmail.com', '123456', '11998574875'),
(23, 'matheus', 'bryan@gmail.com', '123456', '11958678577'),
(25, 'david', 'b@gmail.com', '123456', '119487584732');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_adm`
--
ALTER TABLE `tb_adm`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_carrinho`
--
ALTER TABLE `tb_carrinho`
  ADD PRIMARY KEY (`idProduto`),
  ADD KEY `fkUsuario` (`fkUsuario`);

--
-- Índices para tabela `tb_compras`
--
ALTER TABLE `tb_compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkUsuario` (`fkUsuario`);

--
-- Índices para tabela `tb_reclamacao`
--
ALTER TABLE `tb_reclamacao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkUsuarioSender` (`fkUsuarioSender`);

--
-- Índices para tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`idUsuario`) USING BTREE;

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_adm`
--
ALTER TABLE `tb_adm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tb_carrinho`
--
ALTER TABLE `tb_carrinho`
  MODIFY `idProduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de tabela `tb_compras`
--
ALTER TABLE `tb_compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `tb_reclamacao`
--
ALTER TABLE `tb_reclamacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tb_carrinho`
--
ALTER TABLE `tb_carrinho`
  ADD CONSTRAINT `tb_carrinho_ibfk_1` FOREIGN KEY (`fkUsuario`) REFERENCES `tb_usuario` (`idUsuario`);

--
-- Limitadores para a tabela `tb_compras`
--
ALTER TABLE `tb_compras`
  ADD CONSTRAINT `tb_compras_ibfk_1` FOREIGN KEY (`fkUsuario`) REFERENCES `tb_usuario` (`idUsuario`);

--
-- Limitadores para a tabela `tb_reclamacao`
--
ALTER TABLE `tb_reclamacao`
  ADD CONSTRAINT `tb_reclamacao_ibfk_1` FOREIGN KEY (`fkUsuarioSender`) REFERENCES `tb_usuario` (`idUsuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
