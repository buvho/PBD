CREATE TABLE `Vaga` (
  `idVaga` INT,
  `idQuarto` INT,
  `valor` DECIMAL,
  `detalhes` TEXT,
  `livre` tinyInt(1),
  PRIMARY KEY (`idVaga`)
);

CREATE TABLE `Quarto` (
  `idQuarto` INT,
  `valor` DECIMAL,
  `quantVagas` INT,
  `temBanheiro` tinyint(1),
  `Vazio` tinyint(1),
  PRIMARY KEY (`idQuarto`),
  FOREIGN KEY (`idQuarto`) REFERENCES `Vaga`(`idVaga`)
);

CREATE TABLE `Pagamento` (
  `idPagamento` INT,
  `idUsuario` INT,
  `Valor` INT,
  `Horario` DATETIME,
  PRIMARY KEY (`idPagamento`)
);

CREATE TABLE `Usuario` (
  `idUsuario` INT,
  `nome` VARCHAR(30),
  `senha` VARCHAR(30),
  `celular` VARCHAR(20),
  `email` VARCHAR(50),
  PRIMARY KEY (`idUsuario`),
  FOREIGN KEY (`email`) REFERENCES `Pagamento`(`idPagamento`)
);

CREATE TABLE `Reserva` (
  `idReserva` INT,
  `idVaga` INT,
  `idUsuario` INT,
  `idPagamento` INT,
  `horarioInicio` DATETIME,
  `horarioFinal` DATETIME,
  PRIMARY KEY (`idReserva`),
  FOREIGN KEY (`idUsuario`) REFERENCES `Usuario`(`nome`)
);

CREATE TABLE `Tag` (
  `idTag` INT,
  `idTipoTag` INT,
  `nome` VARCHAR(20),
  PRIMARY KEY (`idTag`)
);

CREATE TABLE `VagaTag` (
  `idTag` INT,
  `idVaga` INT,
  PRIMARY KEY (`idTag`)
);

CREATE TABLE `TipoTag` (
  `idTipoTag` INT,
  `nome` VARCHAR(20),
  PRIMARY KEY (`idTipoTag`)
);