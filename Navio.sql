-- --------------------------------------------------------

--
-- Estrutura da tabela `navio`
--

CREATE TABLE `navio` (
  `Id_navio` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Capacidade_transporte` float NOT NULL,
  `Ano_construcao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `navio`
--

INSERT INTO `navio` (`Id_navio`, `Nome`, `Capacidade_transporte`, `Ano_construcao`) VALUES
(1, 'Titanic', 5000, '2000-11-16');

--
-- Ãndices para tabelas despejadas
--

--
-- Ãndices para tabela `navio`
--
ALTER TABLE `navio`
  ADD PRIMARY KEY (`Id_navio`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `navio`
--
ALTER TABLE `navio`
  MODIFY `Id_navio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
