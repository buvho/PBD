DELETE FROM Vaga WHERE idVaga = ?;
DELETE FROM Quarto WHERE idQuarto = ?;
DELETE FROM Pagamento WHERE idPagamento = ?;
DELETE FROM Usuario WHERE idUsuario = ?;
DELETE FROM Reserva WHERE idReserva = ?;
DELETE FROM Tag WHERE idTag = ?;
DELETE FROM VagaTag WHERE idTag = ? AND idVaga = ?;
DELETE FROM TipoTag WHERE idTipoTag = ?;
