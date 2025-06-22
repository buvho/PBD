
SELECT * FROM Quarto;
SELECT * FROM Quarto WHERE idQuarto = 1;

SELECT * FROM Vaga;
SELECT * FROM Vaga WHERE idVaga = 1;

SELECT * FROM Usuario;
SELECT * FROM Usuario WHERE idUsuario = 1;

SELECT * FROM Pagamento;
SELECT * FROM Pagamento WHERE idPagamento = 1;

SELECT * FROM Reserva;
SELECT * FROM Reserva WHERE idReserva = 1;
SELECT * FROM Reserva WHERE idUsuario = 1;
SELECT * FROM Reserva WHERE idVaga = 1;

SELECT * FROM TipoTag;
SELECT * FROM TipoTag WHERE idTipoTag = 1;

SELECT * FROM Tag;
SELECT * FROM Tag WHERE idTag = 1;
SELECT * FROM Tag WHERE idTipoTag = 1;

SELECT * FROM Vaga_Tag;

SELECT *
FROM Vaga v
WHERE v.livre = 1 AND v.idVaga NOT IN (
    SELECT r.idVaga
    FROM Reserva r
    WHERE '2025-06-25' BETWEEN r.horarioInicial AND r.horarioFinal
);
