
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

SELECT
    Reserva.idReserva,
    Usuario.idUsuario,
    Usuario.nome AS nomeUsuario,
    Reserva.idVaga,
    Reserva.horarioInicial,
    Reserva.horarioFinal
FROM Reserva
JOIN Usuario ON Reserva.idUsuario = Usuario.idUsuario;


SELECT * FROM TipoTag;
SELECT * FROM TipoTag WHERE idTipoTag = 1;

SELECT * FROM Tag;
SELECT * FROM Tag WHERE idTag = 1;
SELECT * FROM Tag WHERE idTipoTag = 1;

SELECT * FROM Vaga_Tag;

SELECT * FROM Reserva


--mostrar todas as vagas com alguma tag
SELECT
    Vaga.idVaga,
    Vaga.idQuarto,
    Vaga.valor,
    Vaga.detalhes,
    Vaga.livre
FROM Vaga
JOIN Vaga_Tag ON Vaga.idVaga = Vaga_Tag.idVaga
JOIN Tag ON Vaga_Tag.idTag = Tag.idTag
WHERE Tag.idTag = 1;

--mostar todos os quartos com alguma tag
SELECT DISTINCT
    Quarto.idQuarto,
    Quarto.valor,
    Quarto.quantVagas,
    Quarto.temBanheiro,
    Quarto.vazia
FROM Quarto
JOIN Quarto_Tag ON Quarto.idQuarto = Quarto_Tag.idQuarto
JOIN Tag ON Vaga_Tag.idTag = Tag.idTag
WHERE Tag.idTag = 1;



--Mostra todos as vagas livres em um determinado periodo de tempo
SELECT * FROM Vaga
WHERE livre = 1 AND Vaga.idVaga NOT IN (
    SELECT Reserva.idVaga
    FROM Reserva
    WHERE horarioInicial < '2025-06-30 12:00:00' AND 
    horarioFinal > '2025-06-25 12:00:00'
);
