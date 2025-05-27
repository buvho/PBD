-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/05/2025 às 01:47
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `execicio`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `IdCliente` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Cellular` varchar(20) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Creditos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `reserva`
--

CREATE TABLE `reserva` (
  `IdReserva` int(11) NOT NULL,
  `IdProfissional` int(11) NOT NULL,
  `IdService` int(11) NOT NULL,
  `IdCliente` int(11) NOT NULL,
  `IdPagamento` int(11) NOT NULL,
  `HarfarbaDehiato` datetime NOT NULL,
  `Status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pagamento`
--

CREATE TABLE `pagamento` (
  `IdPagamento` int(11) NOT NULL,
  `Valor` int(11) NOT NULL,
  `HarfarbaDPagamento` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lugarfila`
--

CREATE TABLE `lugarfila` (
  `IdLugarFila` int(11) NOT NULL,
  `IdCliente` int(11) NOT NULL,
  `IdService` int(11) NOT NULL,
  `HaraDaChegada` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `profissional`
--

CREATE TABLE `profissional` (
  `IdProfissional` int(11) NOT NULL,
  `IdService` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Cellular` varchar(20) NOT NULL,
  `Ativo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `especialidade_profissional`
--

CREATE TABLE `especialidade_profissional` (
  `IdEspProf` int(11) NOT NULL,
  `IdEspecialidade` int(11) NOT NULL,
  `IdProfissional` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `especialidade`
--

CREATE TABLE `especialidade` (
  `IdEspecialidade` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Descricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `servico`
--

CREATE TABLE `servico` (
  `IdServico` int(11) NOT NULL,
  `IdEspecialidade` int(11) NOT NULL,
  `Preco` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Descricao` text NOT NULL,
  `Duracao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pacote`
--

CREATE TABLE `pacote` (
  `IdPacote` int(11) NOT NULL,
  `Preco` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Descricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pacote_service`
--

CREATE TABLE `pacote_service` (
  `IdPacote` int(11) NOT NULL,
  `IdService` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`IdCliente`);

--
-- Índices de tabela `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`IdReserva`),
  ADD KEY `IdProfissional` (`IdProfissional`),
  ADD KEY `IdService` (`IdService`),
  ADD KEY `IdCliente` (`IdCliente`),
  ADD KEY `IdPagamento` (`IdPagamento`);

--
-- Índices de tabela `pagamento`
--
ALTER TABLE `pagamento`
  ADD PRIMARY KEY (`IdPagamento`);

--
-- Índices de tabela `lugarfila`
--
ALTER TABLE `lugarfila`
  ADD PRIMARY KEY (`IdLugarFila`),
  ADD KEY `IdCliente` (`IdCliente`),
  ADD KEY `IdService` (`IdService`);

--
-- Índices de tabela `profissional`
--
ALTER TABLE `profissional`
  ADD PRIMARY KEY (`IdProfissional`),
  ADD KEY `IdService` (`IdService`);

--
-- Índices de tabela `especialidade_profissional`
--
ALTER TABLE `especialidade_profissional`
  ADD PRIMARY KEY (`IdEspProf`),
  ADD KEY `IdEspecialidade` (`IdEspecialidade`),
  ADD KEY `IdProfissional` (`IdProfissional`);

--
-- Índices de tabela `especialidade`
--
ALTER TABLE `especialidade`
  ADD PRIMARY KEY (`IdEspecialidade`);

--
-- Índices de tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`IdServico`),
  ADD KEY `IdEspecialidade` (`IdEspecialidade`);

--
-- Índices de tabela `pacote`
--
ALTER TABLE `pacote`
  ADD PRIMARY KEY (`IdPacote`);

--
-- Índices de tabela `pacote_service`
--
ALTER TABLE `pacote_service`
  ADD PRIMARY KEY (`IdPacote`,`IdService`),
  ADD KEY `IdService` (`IdService`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `IdCliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `reserva`
--
ALTER TABLE `reserva`
  MODIFY `IdReserva` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pagamento`
--
ALTER TABLE `pagamento`
  MODIFY `IdPagamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lugarfila`
--
ALTER TABLE `lugarfila`
  MODIFY `IdLugarFila` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `profissional`
--
ALTER TABLE `profissional`
  MODIFY `IdProfissional` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `especialidade_profissional`
--
ALTER TABLE `especialidade_profissional`
  MODIFY `IdEspProf` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `especialidade`
--
ALTER TABLE `especialidade`
  MODIFY `IdEspecialidade` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `IdServico` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pacote`
--
ALTER TABLE `pacote`
  MODIFY `IdPacote` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pacote_service`
--
ALTER TABLE `pacote_service`
  MODIFY `IdPacote` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`IdProfissional`) REFERENCES `profissional` (`IdProfissional`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`IdService`) REFERENCES `servico` (`IdServico`),
  ADD CONSTRAINT `reserva_ibfk_3` FOREIGN KEY (`IdCliente`) REFERENCES `cliente` (`IdCliente`),
  ADD CONSTRAINT `reserva_ibfk_4` FOREIGN KEY (`IdPagamento`) REFERENCES `pagamento` (`IdPagamento`);

--
-- Restrições para tabelas `lugarfila`
--
ALTER TABLE `lugarfila`
  ADD CONSTRAINT `lugarfila_ibfk_1` FOREIGN KEY (`IdCliente`) REFERENCES `cliente` (`IdCliente`),
  ADD CONSTRAINT `lugarfila_ibfk_2` FOREIGN KEY (`IdService`) REFERENCES `servico` (`IdServico`);

--
-- Restrições para tabelas `profissional`
--
ALTER TABLE `profissional`
  ADD CONSTRAINT `profissional_ibfk_1` FOREIGN KEY (`IdService`) REFERENCES `servico` (`IdServico`);

--
-- Restrições para tabelas `especialidade_profissional`
--
ALTER TABLE `especialidade_profissional`
  ADD CONSTRAINT `especialidade_profissional_ibfk_1` FOREIGN KEY (`IdEspecialidade`) REFERENCES `especialidade` (`IdEspecialidade`),
  ADD CONSTRAINT `especialidade_profissional_ibfk_2` FOREIGN KEY (`IdProfissional`) REFERENCES `profissional` (`IdProfissional`);

--
-- Restrições para tabelas `servico`
--
ALTER TABLE `servico`
  ADD CONSTRAINT `servico_ibfk_1` FOREIGN KEY (`IdEspecialidade`) REFERENCES `especialidade` (`IdEspecialidade`);

--
-- Restrições para tabelas `pacote_service`
--
ALTER TABLE `pacote_service`
  ADD CONSTRAINT `pacote_service_ibfk_1` FOREIGN KEY (`IdPacote`) REFERENCES `pacote` (`IdPacote`),
  ADD CONSTRAINT `pacote_service_ibfk_2` FOREIGN KEY (`IdService`) REFERENCES `servico` (`IdServico`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;