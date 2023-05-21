-- Banco de dados: `restaurante`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `Id_endereco` int(11) NOT NULL,
  `Descricao` varchar(255) NOT NULL,
  `Cep` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`Id_endereco`, `Descricao`, `Cep`) VALUES
(1, 'rua fulano de tal, numero 30', 9999999);

-- --------------------------------------------------------

--
-- Estrutura da tabela `restaurate`
--

CREATE TABLE `restaurate` (
  `Id_restaurante` int(11) NOT NULL,
  `Id_endereco` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `telefone` int(12) DEFAULT NULL,
  `Estilo_comida` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `restaurate`
--

INSERT INTO `restaurate` (`Id_restaurante`, `Id_endereco`, `Nome`, `telefone`, `Estilo_comida`) VALUES
(1, 1, 'Okawa sushi bar', 3333333, 'Japonesa');

--
-- Ãndices para tabelas despejadas
--

--
-- Ãndices para tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`Id_endereco`);

--
-- Ãndices para tabela `restaurate`
--
ALTER TABLE `restaurate`
  ADD PRIMARY KEY (`Id_restaurante`),
  ADD KEY `fk_restaurante_endereco` (`Id_endereco`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `Id_endereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `restaurate`
--
ALTER TABLE `restaurate`
  MODIFY `Id_restaurante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- RestriÃ§Ãµes para despejos de tabelas
--

--
-- Limitadores para a tabela `restaurate`
--
ALTER TABLE `restaurate`
  ADD CONSTRAINT `fk_restaurante_endereco` FOREIGN KEY (`Id_endereco`) REFERENCES `endereco` (`Id_endereco`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
