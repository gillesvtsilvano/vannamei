-- phpMyAdmin SQL Dump
-- version 3.3.2deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Dez 03, 2010 as 10:44 PM
-- Versão do Servidor: 5.1.41
-- Versão do PHP: 5.3.2-1ubuntu4.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `vannamei`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `AmostragemDiagnostico`
--

CREATE TABLE IF NOT EXISTS `AmostragemDiagnostico` (
  `id` int(11) NOT NULL,
  `doenca_nome` varchar(255) NOT NULL,
  `tecnico_id` int(11) NOT NULL,
  `laboratorioPoslarvas_id` int(11) NOT NULL,
  `unidadeProducao_id` int(11) NOT NULL,
  `infraestruturaPropriedade_id` int(11) NOT NULL,
  `data_2` date NOT NULL,
  `tecnica` varchar(255) NOT NULL,
  `id_amostra_lote` int(11) NOT NULL,
  `obs` varchar(255) NOT NULL,
  `erro` varchar(255) NOT NULL,
  `id_amostra` int(11) NOT NULL,
  `diagnostico` varchar(255) NOT NULL,
  `grau_afetacao` double NOT NULL,
  `patogeno` varchar(255) NOT NULL,
  `nome_pat` varchar(255) NOT NULL,
  `doenca` varchar(255) NOT NULL,
  `tecido_orgao` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `doenca_nome` (`doenca_nome`),
  KEY `tecnico_id` (`tecnico_id`),
  KEY `laboratorioPoslarvas_id` (`laboratorioPoslarvas_id`),
  KEY `unidadeProducao_id` (`unidadeProducao_id`),
  KEY `infraestruturaPropriedade_id` (`infraestruturaPropriedade_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `AmostragemDiagnostico`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `AnaliseQuimica`
--

CREATE TABLE IF NOT EXISTS `AnaliseQuimica` (
  `id` int(11) NOT NULL,
  `infraestruturaPropriedade_id` int(11) NOT NULL,
  `nitrito` double NOT NULL,
  `dbo` double NOT NULL,
  `nitrato` double NOT NULL,
  `fosforo` double NOT NULL,
  `data_2` date NOT NULL,
  `amonia` double NOT NULL,
  `solidos` double NOT NULL,
  `ntotal` double NOT NULL,
  `id_propriedade` int(11) NOT NULL,
  `alcalinidade` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `infraestruturaPropriedade_id` (`infraestruturaPropriedade_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `AnaliseQuimica`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `Doenca`
--

CREATE TABLE IF NOT EXISTS `Doenca` (
  `nome` varchar(255) NOT NULL,
  `obg` varchar(255) NOT NULL,
  `problema` varchar(255) NOT NULL,
  `especialista` varchar(255) NOT NULL,
  PRIMARY KEY (`nome`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `Doenca`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `InfraestruturaPropriedade`
--

CREATE TABLE IF NOT EXISTS `InfraestruturaPropriedade` (
  `id` int(11) NOT NULL,
  `data_2` date NOT NULL,
  `captacao` int(11) NOT NULL,
  `tratamentoAF` varchar(255) NOT NULL,
  `baciaESTAB` varchar(255) NOT NULL,
  `proprietario` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `alugada` tinyint(1) NOT NULL,
  `rep_legal` varchar(255) NOT NULL,
  `nome_propriedade` varchar(255) NOT NULL,
  `tec_responsavel` varchar(255) NOT NULL,
  `fone` double NOT NULL,
  `cel` double NOT NULL,
  `email` varchar(255) NOT NULL,
  `setor` varchar(255) NOT NULL,
  `q_ves` varchar(255) NOT NULL,
  `inicio_ope` varchar(255) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `municipio` varchar(255) NOT NULL,
  `uf` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `InfraestruturaPropriedade`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `LaboratorioPoslarvas`
--

CREATE TABLE IF NOT EXISTS `LaboratorioPoslarvas` (
  `id` int(11) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cap_producao` double NOT NULL,
  `rep_comercial` varchar(255) NOT NULL,
  `biosseguro` varchar(255) NOT NULL,
  `proprietario` varchar(255) NOT NULL,
  `prog_genetica` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `LaboratorioPoslarvas`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `Operador`
--

CREATE TABLE IF NOT EXISTS `Operador` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `data_nasc` date NOT NULL,
  `status_2` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `Operador`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `ParametrosBiologicos`
--

CREATE TABLE IF NOT EXISTS `ParametrosBiologicos` (
  `id` int(11) NOT NULL,
  `infraestruturaPropriedade_id` int(11) NOT NULL,
  `data_2` date NOT NULL,
  `fito` varchar(255) NOT NULL,
  `fitoplancton` varchar(255) NOT NULL,
  `zoo` varchar(255) NOT NULL,
  `zooplancton` varchar(255) NOT NULL,
  `bacteriologico` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `infraestruturaPropriedade_id` (`infraestruturaPropriedade_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ParametrosBiologicos`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `ParametrosFisicos`
--

CREATE TABLE IF NOT EXISTS `ParametrosFisicos` (
  `id` int(11) NOT NULL,
  `data_2` date NOT NULL,
  `ph` double NOT NULL,
  `analise_quimico` double NOT NULL,
  `freq` double NOT NULL,
  `observações` varchar(255) NOT NULL,
  `tempo_min` double NOT NULL,
  `tempo_max` double NOT NULL,
  `oxi_min` double NOT NULL,
  `oxi_max` double NOT NULL,
  `salinidade` double NOT NULL,
  `transparencia` double NOT NULL,
  `infraestruturaPropriedade_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `infraestruturaPropriedade_id` (`infraestruturaPropriedade_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ParametrosFisicos`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `Produto`
--

CREATE TABLE IF NOT EXISTS `Produto` (
  `id` int(11) NOT NULL,
  `uso` varchar(255) NOT NULL,
  `nome_tecnico` varchar(255) NOT NULL,
  `nome_comercial` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `Produto`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `RegistroProblema`
--

CREATE TABLE IF NOT EXISTS `RegistroProblema` (
  `id` int(11) NOT NULL,
  `infraestruturaPropriedade_id` int(11) NOT NULL,
  `grau` int(11) NOT NULL,
  `idade_animais` double NOT NULL,
  `grau_pls` int(11) NOT NULL,
  `salinidade` double NOT NULL,
  `temperatura_minima` double NOT NULL,
  `prejuizo_est` double NOT NULL,
  `outros` varchar(255) NOT NULL,
  `densidade_pov` double NOT NULL,
  `tipo_racao` varchar(255) NOT NULL,
  `epoca_climatica` varchar(255) NOT NULL,
  `data_visita` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `infraestruturaPropriedade_id` (`infraestruturaPropriedade_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `RegistroProblema`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `Tecnico`
--

CREATE TABLE IF NOT EXISTS `Tecnico` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `formacao` varchar(255) NOT NULL,
  `especialidade` varchar(255) NOT NULL,
  `telefone` double NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `Tecnico`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `UnidadeProducao`
--

CREATE TABLE IF NOT EXISTS `UnidadeProducao` (
  `id` int(11) NOT NULL,
  `produto_codigo` int(11) NOT NULL,
  `infraestruturaPropriedade_id` int(11) NOT NULL,
  `data_2` date NOT NULL,
  `up` varchar(255) NOT NULL,
  `medicamentos` varchar(255) NOT NULL,
  `freq_biom` varchar(255) NOT NULL,
  `cv_bombas` int(11) NOT NULL,
  `bombeamento` int(11) NOT NULL,
  `fertilizacao` varchar(255) NOT NULL,
  `frequencia` varchar(255) NOT NULL,
  `alimento` varchar(255) NOT NULL,
  `n_bandeijas` int(11) NOT NULL,
  `aeracao` double NOT NULL,
  `uso_quimicos` varchar(255) NOT NULL,
  `arracoamentos` double NOT NULL,
  `uso_inmunoest` int(11) NOT NULL,
  `uso_bacterias` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `infraestruturaPropriedade_id` (`infraestruturaPropriedade_id`),
  KEY `produto_codigo` (`produto_codigo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `UnidadeProducao`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `Visitas`
--

CREATE TABLE IF NOT EXISTS `Visitas` (
  `id` int(11) NOT NULL,
  `infraestruturaPropriedade_id` int(11) NOT NULL,
  `id_propriedade` int(11) NOT NULL,
  `responsavel` varchar(255) NOT NULL,
  `data_2` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `infraestruturaPropriedade_id` (`infraestruturaPropriedade_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `Visitas`
--

