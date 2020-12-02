-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Dez-2020 às 20:18
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dbouber`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `carro`
--

CREATE TABLE `carro` (
  `PLACA` char(7) NOT NULL,
  `MODELO` varchar(20) DEFAULT NULL,
  `MARCA` varchar(20) DEFAULT NULL,
  `COR` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `carro`
--

INSERT INTO `carro` (`PLACA`, `MODELO`, `MARCA`, `COR`) VALUES
('ABC2132', 'Omega', 'Chevrolet', 'Preta');

-- --------------------------------------------------------

--
-- Estrutura da tabela `motorista`
--

CREATE TABLE `motorista` (
  `CNH` char(10) NOT NULL,
  `AVALIACOES` int(11) DEFAULT NULL,
  `VIAGENS_CONCLUIDAS` int(11) DEFAULT NULL,
  `PLACA_CARRO` char(7) DEFAULT NULL,
  `CPF_USUARIO` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `motorista`
--

INSERT INTO `motorista` (`CNH`, `AVALIACOES`, `VIAGENS_CONCLUIDAS`, `PLACA_CARRO`, `CPF_USUARIO`) VALUES
('5449879874', 0, 0, 'ABC2132', '44644449878');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `CPF` char(11) NOT NULL,
  `NOME` varchar(50) DEFAULT NULL,
  `SEXO` char(1) DEFAULT NULL,
  `ENDERECO` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(30) DEFAULT NULL,
  `TELEFONE` varchar(11) DEFAULT NULL,
  `SENHA` varchar(20) DEFAULT NULL,
  `DATA_NASCIMENTO` char(10) DEFAULT NULL,
  `MOTORISTA` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`CPF`, `NOME`, `SEXO`, `ENDERECO`, `EMAIL`, `TELEFONE`, `SENHA`, `DATA_NASCIMENTO`, `MOTORISTA`) VALUES
('44644449878', 'Renato Lomba', 'M', 'Rua Força Pública, 89-Guarulhos-BA-54444444', '215202019@eniac.edu.br', '32123132132', 'renato@lomba', '2001-02-09', 1),
('55566677788', 'Teste Teste', 'M', 'Rua teste, 666-São Paulo-BA-55555000', 'teste@teste.com', '11999777555', 'teste@teste', '2020-11-18', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`PLACA`);

--
-- Índices para tabela `motorista`
--
ALTER TABLE `motorista`
  ADD PRIMARY KEY (`CNH`),
  ADD KEY `fk_relacionamento_usuario` (`CPF_USUARIO`),
  ADD KEY `fk_relacionamento_carro` (`PLACA_CARRO`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`CPF`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `motorista`
--
ALTER TABLE `motorista`
  ADD CONSTRAINT `fk_relacionamento_carro` FOREIGN KEY (`PLACA_CARRO`) REFERENCES `carro` (`PLACA`),
  ADD CONSTRAINT `fk_relacionamento_usuario` FOREIGN KEY (`CPF_USUARIO`) REFERENCES `usuario` (`CPF`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
