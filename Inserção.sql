INSERT INTO `especialidade` (`IdEspecialidade`, `Nome`, `Descricao`) VALUES
(1, 'Corte Masculino', 'Cortes para homens'),
(2, 'Manicure', 'Cuidados com unhas'),
(3, 'Massagem', 'Massagens relaxantes');

INSERT INTO `servico` (`IdServico`, `IdEspecialidade`, `Preco`, `Nome`, `Descricao`, `Duracao`) VALUES
(1, 1, 50, 'Corte Social', 'Corte básico', 30),
(2, 2, 35, 'Manicure Simples', 'Corte e esmaltação', 40),
(3, 3, 80, 'Massagem Relaxante', 'Massagem de 30min', 30);

INSERT INTO `profissional` (`IdProfissional`, `IdServico`, `Nome`, `Email`, `Cellular`, `Ativo`) VALUES
(1, 1, 'Carlos Barbeiro', 'carlos@salão.com', '11999991111', 1),
(2, 2, 'Ana Manicure', 'ana@salão.com', '11999992222', 1),
(3, 3, 'Roberto Massagista', 'roberto@salão.com', '11999993333', 1);

INSERT INTO `cliente` (`IdCliente`, `Nome`, `Cellular`, `Email`, `Creditos`) VALUES
(1, 'João Silva', '11988881111', 'joao@email.com', 100),
(2, 'Maria Oliveira', '11988882222', 'maria@email.com', 150),
(3, 'Pedro Santos', '11988883333', 'pedro@email.com', 200);

INSERT INTO `pagamento` (`IdPagamento`, `Valor`, `HarfarbaDPagamento`) VALUES
(1, 50, '2025-05-01 10:00:00'),
(2, 35, '2025-05-02 11:00:00'),
(3, 80, '2025-05-03 09:00:00');

INSERT INTO `especialidade_profissional` (`IdEspProf`, `IdEspecialidade`, `IdProfissional`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

INSERT INTO `pacote` (`IdPacote`, `Preco`, `Nome`, `Descricao`) VALUES
(1, 150, 'Pacote Completo', 'Corte + Manicure + Massagem');

INSERT INTO `pacote_service` (`IdPacote`, `IdServico`) VALUES
(1, 1),
(1, 2),
(1, 3);

INSERT INTO `reserva` (`IdReserva`, `IdProfissional`, `IdServico`, `IdCliente`, `IdPagamento`, `HarfarbaDehiato`, `Status`) VALUES
(1, 1, 1, 1, 1, '2025-05-10 10:00:00', 'Confirmado'),
(2, 2, 2, 2, 2, '2025-05-11 11:00:00', 'Confirmado'),
(3, 3, 3, 3, 3, '2025-05-12 09:00:00', 'Confirmado');

INSERT INTO `lugarfila` (`IdLugarFila`, `IdCliente`, `IdServico`, `HaraDaChegada`) VALUES
(1, 1, 1, '2025-05-10 09:45:00'),
(2, 2, 2, '2025-05-11 10:45:00'),
(3, 3, 3, '2025-05-12 08:30:00');