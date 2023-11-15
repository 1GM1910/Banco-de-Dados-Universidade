-- Exemplo 1: Informações sobre Faculdades
-- Esta consulta retorna o nome da faculdade juntamente com detalhes do endereço associado, fornecendo uma visão abrangente das instituições de ensino.
SELECT F.nome_faculdade, E.rua, E.numero, E.bairro, E.cidade, E.complemento, E.CEP
FROM faculdade AS F
INNER JOIN endereco_faculdade AS E ON F.ID_facul = E.faculdade_ID;

-- Exemplo 2: Detalhes de Contato das Faculdades
-- Aqui, exibimos o nome da faculdade acompanhado de informações de contato, destacando a comunicação crucial para estudantes e colaboradores.
SELECT F.nome_faculdade, C.whatsapp, C.email, C.telefone
FROM faculdade AS F
INNER JOIN contato_faculdade AS C ON F.ID_facul = C.faculdade_ID;

-- Exemplo 3: Detalhes de Contato de Funcionários Ordenados por Nome
-- Esta consulta mostra o ID, nome e detalhes de contato dos funcionários, proporcionando uma lista organizada para facilitar a referência.
SELECT F.ID_func, F.nome_funcionario, C.whatsapp, C.email, C.telefone
FROM funcionario AS F
INNER JOIN contato_funcionario AS C ON F.ID_func = C.funcionario_ID
ORDER BY F.nome_funcionario;

-- Exemplo 4: Média de Idade dos Professores por Departamento
-- Apresentamos a média de idade dos professores agrupada por departamento, destacando a experiência dos educadores.
SELECT departamento.nome_departamento, AVG(YEAR(CURDATE()) - YEAR(funcionario.dt_nascimento)) AS media_idade
FROM departamento
JOIN funcionario ON departamento.ID_dep = funcionario.departamento_ID
WHERE funcionario.tipo_funcionario = 'Professor'
GROUP BY departamento.nome_departamento;

-- Exemplo 5: Total de Alunos por Curso
-- Essa consulta exibe o nome do curso e a contagem total de alunos, fornecendo uma visão quantitativa do envolvimento estudantil.
SELECT curso.nome_curso, COUNT(aluno.matricula) AS total_alunos
FROM curso
JOIN aluno ON curso.ID_curso = aluno.curso_ID
GROUP BY curso.nome_curso;






