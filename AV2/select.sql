SELECT * FROM Vaga;
SELECT * FROM Vaga WHERE idVaga = ?;

SELECT * FROM Quarto;
SELECT * FROM Quarto WHERE idQuarto = ?;

SELECT * FROM Pagamento;
SELECT * FROM Pagamento WHERE idPagamento = ?;

SELECT * FROM Usuario;
SELECT * FROM Usuario WHERE idUsuario = ?;

SELECT * FROM Reserva;
SELECT * FROM Reserva WHERE idReserva = ?;

SELECT * FROM Tag;
SELECT * FROM Tag WHERE idTag = ?;

SELECT * FROM VagaTag;
SELECT * FROM Vaga-Tag WHERE idTag = ? AND idVaga = ?;

SELECT * FROM TipoTag;
SELECT * FROM TipoTag WHERE idTipoTag = ?;

SELECT v.*
FROM Vaga v
WHERE v.livre = 1
  AND v.idVaga NOT IN (
    SELECT r.idVaga
    FROM Reserva r
    WHERE DATE(@data) BETWEEN DATE(r.horarioInicio) AND DATE(r.horarioFinal)
  );

SELECT v.*
FROM Vaga v
JOIN Reserva r ON v.idVaga = r.idVaga
WHERE DATE(@data) BETWEEN DATE(r.horarioInicio) AND DATE(r.horarioFinal);
