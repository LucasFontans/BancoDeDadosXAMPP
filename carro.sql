-- Banco de dados: `carro`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `carro`
--

CREATE TABLE `carro` (
  `Cod_Carro` int(11) NOT NULL,
  `Cod_Fabricante` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Modelo` varchar(255) NOT NULL,
  `Placa` int(11) NOT NULL,
  `Cor` char(25) NOT NULL,
  `Data_Fabricacao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `carro`
--

INSERT INTO `carro` (`Cod_Carro`, `Cod_Fabricante`, `Nome`, `Modelo`, `Placa`, `Cor`, `Data_Fabricacao`) VALUES
(1, 1, 'Civic', 'DX', 0, 'Vermelho', '2019-12-05');

-- --------------------------------------------------------

--
-- Estrutura para tabela `fabricante`
--

CREATE TABLE `fabricante` (
  `Cod_fabricante` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Pais` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `fabricante`
--

INSERT INTO `fabricante` (`Cod_fabricante`, `Nome`, `Pais`) VALUES
(1, 'Honda', 'JapÃ£o');

--
-- Ãndices para tabelas despejadas
--

--
-- Ãndices de tabela `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`Cod_Carro`),
  ADD KEY `fk_carro_fabricante` (`Cod_Fabricante`);

--
-- Ãndices de tabela `fabricante`
--
ALTER TABLE `fabricante`
  ADD PRIMARY KEY (`Cod_fabricante`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `carro`
--
ALTER TABLE `carro`
  MODIFY `Cod_Carro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `fabricante`
--
ALTER TABLE `fabricante`
  MODIFY `Cod_fabricante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- RestriÃ§Ãµes para tabelas despejadas
--

--
-- RestriÃ§Ãµes para tabelas `carro`
--
ALTER TABLE `carro`
  ADD CONSTRAINT `fk_carro_fabricante` FOREIGN KEY (`Cod_Fabricante`) REFERENCES `fabricante` (`Cod_fabricante`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
