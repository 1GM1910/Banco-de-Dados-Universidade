SELECT * FROM faculdade;
-- Retorna o nome da faculdade e detalhes do endereço associado a cada faculdade.
SELECT F.nome_faculdade,E.rua,E.numero,E.bairro,E.cidade,E.complemento,E.CEP
FROM faculdade as F
INNER JOIN endereco_faculdade as E
ON F.ID_facul = E.faculdade_ID;

-- Retorna o nome da faculdade e detalhes de contato associados a cada faculdade.
SELECT F.nome_faculdade,C.whatsapp,C.email,C.telefone
FROM faculdade as F
INNER JOIN contato_faculdade as C
ON F.ID_facul = C.faculdade_ID;

SELECT * FROM endereco_faculdade;

SELECT * FROM contato_faculdade;

SELECT * FROM departamento;

SELECT *FROM curso;


SELECT * FROM disciplina;

SELECT * FROM disc_curso;

SELECT * FROM funcionario;
-- Retorna o ID do funcionário, nome e detalhes de contato associados a cada funcionário, ordenados pelo nome.
SELECT F.ID_func,F.nome_funcionario,C.whatsapp, C.email,C.telefone
FROM funcionario as F
INNER JOIN contato_funcionario as C
ON F.ID_func = C.funcionario_ID
ORDER BY  F.nome_funcionario; 

SELECT * FROM endereco_funcionario;

SELECT * FROM contato_funcionario;

SELECT *FROM disc_dep;

SELECT *FROM turma;

SELECT * FROM aluno;

SELECT * FROM endereco_aluno;

SELECT * FROM contato_aluno;

SELECT * FROM documento_aluno;

SELECT * FROM aluno_turma;




