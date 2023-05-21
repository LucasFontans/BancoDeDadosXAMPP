-- Banco de dados: `escola`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `estudante`
--

CREATE TABLE `estudante` (
  `RA` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `Endereco` varchar(255) DEFAULT NULL,
  `telefone` int(12) DEFAULT NULL,
  `Nome_mae` varchar(255) DEFAULT NULL,
  `Nome_pai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `estudante`
--

INSERT INTO `estudante` (`RA`, `Nome`, `Endereco`, `telefone`, `Nome_mae`, `Nome_pai`) VALUES
(1, 'Jose augsto torves', 'Av 2 casa 3021', 89848466, 'Maria fonceca torves', 'Paulo torves');

-- --------------------------------------------------------

--
-- Estrutura da tabela `materia`
--

CREATE TABLE `materia` (
  `Id_materia` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `carga_horaria` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `materia`
--

INSERT INTO `materia` (`Id_materia`, `Nome`, `carga_horaria`) VALUES
(1, 'banco de dados', '80:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `registro_academico`
--

CREATE TABLE `registro_academico` (
  `RA` int(11) NOT NULL,
  `Id_materia` int(11) NOT NULL,
  `data_matricula` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `registro_academico`
--

INSERT INTO `registro_academico` (`RA`, `Id_materia`, `data_matricula`) VALUES
(1, 1, '2020-03-15');

--
-- Ãndices para tabelas despejadas
--

--
-- Ãndices para tabela `estudante`
--
ALTER TABLE `estudante`
  ADD PRIMARY KEY (`RA`);

--
-- Ãndices para tabela `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`Id_materia`);

--
-- Ãndices para tabela `registro_academico`
--
ALTER TABLE `registro_academico`
  ADD KEY `fk_registroacademico_estudante` (`RA`),
  ADD KEY `fk_registroacademico_materia` (`Id_materia`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `estudante`
--
ALTER TABLE `estudante`
  MODIFY `RA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `materia`
--
ALTER TABLE `materia`
  MODIFY `Id_materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- RestriÃ§Ãµes para despejos de tabelas
--

--
-- Limitadores para a tabela `registro_academico`
--
ALTER TABLE `registro_academico`
  ADD CONSTRAINT `fk_registroacademico_estudante` FOREIGN KEY (`RA`) REFERENCES `estudante` (`RA`),
  ADD CONSTRAINT `fk_registroacademico_materia` FOREIGN KEY (`Id_materia`) REFERENCES `materia` (`Id_materia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
