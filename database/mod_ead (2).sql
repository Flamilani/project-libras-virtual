-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 25-Maio-2020 às 19:02
-- Versão do servidor: 8.0.18
-- versão do PHP: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mod_ead`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`id`, `nome`, `email`, `senha`) VALUES
(1, 'Flavio', 'flavio@gmail.com', '63ee451939ed580ef3c4b6f0109d1fd0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno_curso`
--

CREATE TABLE `aluno_curso` (
  `id` int(11) NOT NULL,
  `curso_id` int(11) NOT NULL,
  `aluno_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno_curso`
--

INSERT INTO `aluno_curso` (`id`, `curso_id`, `aluno_id`) VALUES
(1, 1, 1),
(2, 3, 1),
(3, 7, 1),
(4, 5, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `aulas`
--

CREATE TABLE `aulas` (
  `aula_id` int(11) UNSIGNED NOT NULL,
  `modulo_id` int(11) DEFAULT NULL,
  `curso_id` int(11) DEFAULT NULL,
  `aula_tipo` varchar(90) DEFAULT NULL,
  `aula_ordem` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aulas`
--

INSERT INTO `aulas` (`aula_id`, `modulo_id`, `curso_id`, `aula_tipo`, `aula_ordem`) VALUES
(1, 1, 1, 'video', 1),
(2, 1, 1, 'video', 2),
(3, 1, 1, 'poll', 3),
(4, 1, 1, 'video', 4),
(5, 1, 1, 'video', 5),
(6, 1, 1, 'video', 6),
(7, 1, 1, 'video', 7),
(8, 1, 1, 'video', 8),
(9, 3, 1, 'video', 9),
(10, 3, 1, 'video', 10),
(11, 5, 3, 'video', 11),
(12, 4, 1, 'video', 12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `curso_id` int(11) NOT NULL,
  `curso_nome` varchar(50) NOT NULL,
  `curso_imagem` text NOT NULL,
  `curso_descricao` text NOT NULL,
  `curso_status` int(1) DEFAULT NULL,
  `curso_ordem` int(11) DEFAULT NULL,
  `nivel_id` int(11) DEFAULT NULL,
  `curso_view` decimal(10,0) DEFAULT NULL,
  `curso_duracao` int(10) DEFAULT NULL,
  `curso_created` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`curso_id`, `curso_nome`, `curso_imagem`, `curso_descricao`, `curso_status`, `curso_ordem`, `nivel_id`, `curso_view`, `curso_duracao`, `curso_created`) VALUES
(1, 'Libras I', 'libras-em-foco.jpg', 'Teste', 1, 1, 1, NULL, NULL, NULL),
(2, 'Libras II', 'libras-em-foco.jpg', '', 1, 2, 2, NULL, NULL, NULL),
(3, 'Libras III', 'libras-em-foco.jpg', '', 1, 3, 3, NULL, NULL, NULL),
(4, 'CSS', 'css.jpg', '', 0, 4, NULL, NULL, NULL, NULL),
(5, 'AngularJs', 'angularjs.jpg', '', 0, 5, NULL, NULL, NULL, NULL),
(6, 'jQuery', 'jquery.jpg', '', 0, 6, NULL, NULL, NULL, NULL),
(7, 'Android', 'android.jpg', '', 0, 7, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `duvidas`
--

CREATE TABLE `duvidas` (
  `id_duvida` int(11) UNSIGNED NOT NULL,
  `duvida` text,
  `respondida` tinyint(1) DEFAULT NULL,
  `data_duvida` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `aluno_id` int(11) DEFAULT NULL,
  `aula_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `duvidas`
--

INSERT INTO `duvidas` (`id_duvida`, `duvida`, `respondida`, `data_duvida`, `aluno_id`, `aula_id`) VALUES
(1, 'Teste enviado 1', NULL, '2018-02-11 09:37:17', 1, 1),
(2, 'Teste enviado 2', NULL, '2018-02-11 09:44:42', 1, 1),
(3, 'Teste enviado 3', NULL, '2018-02-11 09:46:10', 1, 1),
(4, 'Teste enviado 4', NULL, '2018-02-11 10:04:17', 1, 5),
(5, 'Teste enviado 5', NULL, '2018-02-11 10:10:04', 1, 4),
(6, 'Teste  6', NULL, '2018-02-11 10:11:08', 1, 2),
(7, 'Teste enviado 7', NULL, '2018-02-11 10:11:46', 1, 1),
(8, 'Teste enviado 8', NULL, '2018-02-11 10:12:25', 1, 1),
(9, 'Teste enviado 9', NULL, '2018-02-11 10:13:10', 1, 1),
(10, 'Teste teste', NULL, '2018-02-11 10:13:14', 1, 2),
(11, 'teste 42323', NULL, '2018-02-11 12:55:51', 1, 1),
(12, 'teste 42323', NULL, '2018-02-11 12:56:29', 1, 2),
(13, 'teste 42323', NULL, '2018-02-11 12:56:33', 1, 2),
(14, 'teste 42323', NULL, '2018-02-11 12:56:39', 1, 2),
(15, 'teste', NULL, '2018-05-26 21:22:46', 1, 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `exercicios`
--

CREATE TABLE `exercicios` (
  `exercicio_id` int(11) UNSIGNED NOT NULL,
  `aula_id` int(11) NOT NULL,
  `titulo` varchar(150) DEFAULT NULL,
  `pergunta` varchar(100) NOT NULL,
  `titulo1` varchar(150) DEFAULT NULL,
  `opcao1` text,
  `titulo2` varchar(150) DEFAULT NULL,
  `opcao2` text,
  `titulo3` varchar(150) DEFAULT NULL,
  `opcao3` text,
  `titulo4` varchar(150) DEFAULT NULL,
  `opcao4` text,
  `resposta` tinyint(1) NOT NULL,
  `tipo_midia` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `exercicios`
--

INSERT INTO `exercicios` (`exercicio_id`, `aula_id`, `titulo`, `pergunta`, `titulo1`, `opcao1`, `titulo2`, `opcao2`, `titulo3`, `opcao3`, `titulo4`, `opcao4`, `resposta`, `tipo_midia`) VALUES
(1, 3, 'Exercicio 1', 'O que é Libras?', NULL, 'A LIBRAS é uma língua natural, relacionada aos costumes e a cultura da\r\ncomunidade surda brasileira, que flui de uma necessidade de comunicação entre as pessoas\r\nque utilizam a modalidade gestual-visual para se comunicar.', NULL, 'A língua de sinais é somente um conjunto de\r\ngestos que interpretam as línguas orais.', NULL, 'A LIBRAS é o português feito com as mãos,\r\nque os sinais substituem as palavras desta língua', NULL, 'A LIBRAS é realmente uma língua, há algumas que pensam que ela é limitada e expressa\r\napenas informações concretas, e que não é capaz de transmitir idéias abstratas.', 3, 'texto'),
(2, 9, 'Exercicio 2', 'Qual sinal correto de viajar?', 'Sinal 1', 'sinal_01.jpeg', 'Sinal 2', 'sinal_02.jpeg', 'Sinal 3', 'sinal_viajar.jpg', 'Sinal 4', 'koni.jpg', 1, 'imagem'),
(3, 10, 'Exercicio 3', 'Video', NULL, '270598694', NULL, 'opcao 2', NULL, 'opcao 3', NULL, 'opcao 4', 2, 'video');

-- --------------------------------------------------------

--
-- Estrutura da tabela `historico`
--

CREATE TABLE `historico` (
  `hist_id` int(11) UNSIGNED NOT NULL,
  `data_viewed` datetime DEFAULT NULL,
  `aluno_id` int(11) DEFAULT NULL,
  `aula_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mais_videos`
--

CREATE TABLE `mais_videos` (
  `mais_video_id` int(10) UNSIGNED NOT NULL,
  `aula_id` int(11) DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  `video_nome` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_descricao` text COLLATE utf8mb4_unicode_ci,
  `video_url` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mais_video_ordem` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `modulos`
--

CREATE TABLE `modulos` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `curso_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `modulos`
--

INSERT INTO `modulos` (`id`, `nome`, `curso_id`) VALUES
(1, 'Modulo 1 - Introdução', 1),
(2, 'Modulo 2', 1),
(3, 'Modulo 3 - Material Escolar', 1),
(4, 'Modulo 4 - Verbos', 1),
(5, 'Modulo 1', 3),
(6, 'Modulo 2', 3),
(7, 'teste 1', 2),
(8, 'teste 2', 2),
(9, 'módulo 5', 1),
(10, 'eteste', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `niveis`
--

CREATE TABLE `niveis` (
  `id_nivel` int(11) UNSIGNED NOT NULL,
  `nivel` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `senha` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `senha`) VALUES
(1, 'flaviomilani@gmail.com', '63ee451939ed580ef3c4b6f0109d1fd0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `videos`
--

CREATE TABLE `videos` (
  `video_id` int(10) UNSIGNED NOT NULL,
  `aula_id` int(11) DEFAULT NULL,
  `video_nome` varchar(50) DEFAULT NULL,
  `video_descricao` text,
  `video_url` varchar(50) DEFAULT NULL,
  `video_ordem` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `videos`
--

INSERT INTO `videos` (`video_id`, `aula_id`, `video_nome`, `video_descricao`, `video_url`, `video_ordem`) VALUES
(1, 1, 'Aula 1 - Cumprimentos', 'teste conteudos', 'https://www.youtube.com/embed/wrs27sq-OT4', NULL),
(2, 2, 'Aula 2', 'teste', 'https://www.youtube.com/embed/NhgzTwJwe8Y', NULL),
(3, 3, 'Aula 3', 'teste', NULL, NULL),
(4, 4, 'Aula 4', 'teste', NULL, NULL),
(5, 5, 'Aula 5', 'teste', NULL, NULL),
(6, 6, 'Aula 6', 'teste teste', NULL, NULL),
(7, 7, 'Aula 7', 'teste 7', NULL, NULL),
(8, 8, 'Aula 8', 'teste 8', NULL, NULL),
(9, 11, 'Aula 1', 'teste', NULL, NULL),
(10, 12, 'Aula 9 - Devolver', NULL, NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `aluno_curso`
--
ALTER TABLE `aluno_curso`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`aula_id`);

--
-- Índices para tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`curso_id`);

--
-- Índices para tabela `duvidas`
--
ALTER TABLE `duvidas`
  ADD PRIMARY KEY (`id_duvida`);

--
-- Índices para tabela `exercicios`
--
ALTER TABLE `exercicios`
  ADD PRIMARY KEY (`exercicio_id`);

--
-- Índices para tabela `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`hist_id`);

--
-- Índices para tabela `mais_videos`
--
ALTER TABLE `mais_videos`
  ADD PRIMARY KEY (`mais_video_id`);

--
-- Índices para tabela `modulos`
--
ALTER TABLE `modulos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `niveis`
--
ALTER TABLE `niveis`
  ADD PRIMARY KEY (`id_nivel`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`video_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `aluno_curso`
--
ALTER TABLE `aluno_curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `aulas`
--
ALTER TABLE `aulas`
  MODIFY `aula_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `curso_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `duvidas`
--
ALTER TABLE `duvidas`
  MODIFY `id_duvida` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `exercicios`
--
ALTER TABLE `exercicios`
  MODIFY `exercicio_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `historico`
--
ALTER TABLE `historico`
  MODIFY `hist_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mais_videos`
--
ALTER TABLE `mais_videos`
  MODIFY `mais_video_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `modulos`
--
ALTER TABLE `modulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `niveis`
--
ALTER TABLE `niveis`
  MODIFY `id_nivel` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `videos`
--
ALTER TABLE `videos`
  MODIFY `video_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
