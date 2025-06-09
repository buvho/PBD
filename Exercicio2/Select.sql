SELECT 
    p.Nome AS profissional,
    p.Cellular AS celular,
    s.Nome AS servico,
    s.Preco,
    s.Descricao,
    s.Duracao,
    r.Status
FROM 
    reserva r
JOIN 
    profissional p ON r.IdProfissional = p.IdProfissional
JOIN 
    servico s ON r.IdServico = s.IdServico;