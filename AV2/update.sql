UPDATE Quarto
SET valor = 550.00
WHERE idQuarto = 1;

UPDATE Vaga
SET livre = 0
WHERE idVaga = 1;

UPDATE Usuario
SET email = 'joao.silva@email.com'
WHERE idUsuario = 1;

UPDATE Pagamento
SET valor = 180.00
WHERE idPagamento = 1;

UPDATE Reserva
SET horarioInicial = '2025-06-12 12:00:00', horarioFinal = '2025-06-22 12:00:00'
WHERE idReserva = 1;

UPDATE Tag
SET nome = 'Proibido Fumar'
WHERE idTag = 3;

UPDATE TipoTag
SET nome = 'Regras da Casa'
WHERE idTipoTag = 2;
