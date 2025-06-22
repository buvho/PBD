
UPDATE Vaga SET idQuarto = ?, valor = ?, detalhes = ?, livre = ? WHERE idVaga = ?;
UPDATE Quarto SET valor = ?, quantVagas = ?, temBanheiro = ?, Vazio = ? WHERE idQuarto = ?;
UPDATE Pagamento SET idUsuario = ?, Valor = ?, Horario = ? WHERE idPagamento = ?;
UPDATE Usuario SET nome = ?, senha = ?, celular = ?, email = ? WHERE idUsuario = ?;
UPDATE Reserva SET idVaga = ?, idUsuario = ?, idPagamento = ?, horarioInicio = ?, horarioFinal = ? WHERE idReserva = ?;
UPDATE Tag SET idTipoTag = ?, nome = ? WHERE idTag = ?;
UPDATE VagaTag SET idVaga = ? WHERE idTag = ?;
UPDATE TipoTag SET nome = ? WHERE idTipoTag = ?;