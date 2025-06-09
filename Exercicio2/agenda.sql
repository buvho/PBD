--Decidir criar uma tabela para agenda que estava faltando no meu banco inicial:
CREATE TABLE `agenda_profissional` (
  `IdAgenda` int(11) NOT NULL AUTO_INCREMENT,
  `IdProfissional` int(11) NOT NULL,
  `DiaSemana` enum('Segunda','Terça','Quarta','Quinta','Sexta','Sábado','Domingo') NOT NULL,
  `Disponivel` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`IdAgenda`),
  FOREIGN KEY (`IdProfissional`) REFERENCES `profissional`(`IdProfissional`)
);

CREATE TABLE `horarios_disponiveis` (
  `IdHorario` int(11) NOT NULL AUTO_INCREMENT,
  `IdAgenda` int(11) NOT NULL,
  `HoraInicio` time NOT NULL,
  `HoraFim` time NOT NULL,
  `Disponivel` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`IdHorario`),
  FOREIGN KEY (`IdAgenda`) REFERENCES `agenda_profissional`(`IdAgenda`)
);

INSERT INTO `agenda_profissional` (`IdProfissional`, `DiaSemana`, `Disponivel`) VALUES
(1, 'Segunda', 1),
(1, 'Terça', 1),
(1, 'Quarta', 1),
(1, 'Quinta', 1),
(1, 'Sexta', 1);

INSERT INTO `horarios_disponiveis` (`IdAgenda`, `HoraInicio`, `HoraFim`) VALUES
(1, '10:00:00', '12:00:00'), (1, '14:00:00', '18:00:00'),
(2, '09:00:00', '12:00:00'), (2, '14:00:00', '18:00:00'),
(3, '14:00:00', '18:00:00'),
(4, '09:00:00', '12:00:00'), (4, '14:00:00', '18:00:00'),
(5, '09:00:00', '12:00:00'), (5, '14:00:00', '18:00:00');

