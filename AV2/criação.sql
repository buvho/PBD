CREATE TABLE Quarto (
    idQuarto INT PRIMARY KEY AUTO_INCREMENT,
    valor DECIMAL(10,2),
    quantVagas INT,
    temBanheiro TINYINT(1),
    vazia TINYINT(1)
);

CREATE TABLE Vaga (
    idVaga INT PRIMARY KEY AUTO_INCREMENT,
    idQuarto INT,
    valor DECIMAL(10,2),
    detalhes TEXT,
    livre TINYINT(1),
    FOREIGN KEY (idQuarto) REFERENCES Quarto(idQuarto)
);

CREATE TABLE Usuario (
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    senha VARCHAR(100),
    celular VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE Pagamento (
    idPagamento INT PRIMARY KEY AUTO_INCREMENT,
    idUsuario INT,
    valor DECIMAL(10,2),
    horario DATETIME,
    FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario)
);

CREATE TABLE Reserva (
    idReserva INT PRIMARY KEY AUTO_INCREMENT,
    idVaga INT,
    idUsuario INT,
    idPagamento INT,
    horarioInicial DATETIME,
    horarioFinal DATETIME,
    FOREIGN KEY (idVaga) REFERENCES Vaga(idVaga),
    FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario),
    FOREIGN KEY (idPagamento) REFERENCES Pagamento(idPagamento)
);

CREATE TABLE TipoTag (
    idTipoTag INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)
);

CREATE TABLE Tag (
    idTag INT PRIMARY KEY AUTO_INCREMENT,
    idTipoTag INT,
    nome VARCHAR(100),
    FOREIGN KEY (idTipoTag) REFERENCES TipoTag(idTipoTag)
);

CREATE TABLE Vaga_Tag (
    idVagaTag INT PRIMARY KEY AUTO_INCREMENT,
    idTag INT,
    idVaga INT,
    FOREIGN KEY (idTag) REFERENCES Tag(idTag),
    FOREIGN KEY (idVaga) REFERENCES Vaga(idVaga)
);

CREATE TABLE Quarto_Tag (
    idVagaTag INT PRIMARY KEY AUTO_INCREMENT,
    idTag INT,
    idQuarto INT,
    FOREIGN KEY (idTag) REFERENCES Tag(idTag),
    FOREIGN KEY (idQuarto) REFERENCES Quarto(idQuarto)
);

CREATE TABLE Reserva_Vaga (
    idReservaVaga INT PRIMARY KEY AUTO_INCREMENT,
    idReserva INT,
    idVaga INT,
    FOREIGN KEY (idReserva) REFERENCES Reserva(idReserva),
    FOREIGN KEY (idQuarto) REFERENCES Quarto(idQuarto)
);
