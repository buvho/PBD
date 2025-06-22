INSERT INTO Quarto (valor, quantVagas, temBanheiro, vazia) VALUES
(500.00, 3, 1, 0),
(300.00, 2, 0, 1);

INSERT INTO Vaga (IdQuarto.valor, detalhes, livre) VALUES
(1,180.00, 'Vaga do lado da janela e armário', 1),
(1,160.00, 'Vaga longe da janela', 1),
(2,150.00, 'Vaga do lado do ar-condicionado', 0);

INSERT INTO Usuario (nome, senha, celular, email) VALUES
('João Silva', 'ad820de7200cf1c42d0d28465b4df85b287363e8b48c5241845eb74b5a93632f', '11999999999', 'joao@email.com'),
('Maria Souza', '6712c161e11f30479913feb72981f19cec430af0cee47c2dfea1e04b81bca437', '21988888888', 'maria@email.com');

-- Inserindo Pagamentos
INSERT INTO Pagamento (idUsuario, valor, horario) VALUES
(1, 160.00, '2025-06-01 10:00:00'),
(2, 150.00, '2025-06-05 14:30:00');

-- Inserindo Reservas
INSERT INTO Reserva (idVaga, idUsuario, idPagamento, horarioInicial, horarioFinal) VALUES
(2, 1, 1, '2025-06-10 12:00:00', '2025-06-20 12:00:00'),
(3, 2, 2, '2025-06-15 03:00:00', '2025-06-25 12:00:00');

-- Inserindo Tipos de Tag
INSERT INTO TipoTag (nome) VALUES
('Comodidades'),
('Lado do sol'),
('Tipo De Cama')

-- Inserindo Tags
INSERT INTO Tag (idTipoTag, nome) VALUES
(1, 'Wi-Fi'),
(1, 'Ar-condicionado'),
(2, 'Sol de manha');
(2, 'Sol de tarde');
(3, 'Beliche de baixo');
(3, 'Beliche de cima');
(3, 'Cama de solteiro');

INSERT INTO Vaga_Tag (idTag, idVaga) VALUES
(5,1)
(6,2)
(7,3)

INSERT INTO Quarto_Tag (idTag, idQuarto) VALUES
(1, 1),
(3, 1),
(1, 2),
(2, 2);
(4, 2);

