-- Criar um novo banco de dados chamado 'db_universidade'
CREATE DATABASE db_universidade;
-- Usar o banco de dados
USE db_universidade;

-- Excluir o banco de dados 'db_universidade' (apenas para fins de demonstração)
DROP DATABASE db_universidade;

-- Mudar para o banco de dados 'db_universidade' para operações posteriores
USE db_universidade;

-- Criar uma tabela 'faculdade' para armazenar informações sobre faculdades
CREATE TABLE faculdade (
    ID_facul INT AUTO_INCREMENT PRIMARY KEY,  -- Identificador único para cada faculdade
    nome_faculdade VARCHAR(50) NOT NULL        -- Nome da faculdade (não nulo)
);

-- Criar uma tabela 'departamento' para armazenar informações sobre departamentos
CREATE TABLE departamento (
    ID_dep INT AUTO_INCREMENT PRIMARY KEY,     -- Identificador único para cada departamento
    nome_departamento VARCHAR(50) NOT NULL,    -- Nome do departamento (não nulo)
    responsavel VARCHAR(20),                   -- Responsável pelo departamento
    email VARCHAR(100),                        -- Endereço de e-mail do departamento
    localizacao CHAR(15),                      -- Localização do departamento
    telefone CHAR(15)                          -- Número de contato do departamento
);

-- Adicionar uma chave estrangeira 'faculdade_ID' à tabela 'departamento' referenciando a tabela 'faculdade'
ALTER TABLE departamento
ADD COLUMN faculdade_ID INT,
ADD FOREIGN KEY (faculdade_ID) REFERENCES faculdade (ID_facul);

-- Criar uma tabela 'disciplina' para armazenar informações sobre disciplinas acadêmicas
CREATE TABLE disciplina (
    ID_disc INT AUTO_INCREMENT PRIMARY KEY,    -- Identificador único para cada disciplina
    nome_disciplina VARCHAR(30) NOT NULL,      -- Nome da disciplina (não nulo)
    carga_horaria VARCHAR(20) NOT NULL,        -- Carga horária da disciplina (não nulo)
    descricao TEXT,                            -- Descrição da disciplina
    grau_tecnico VARCHAR(20),                   -- Grau técnico associado à disciplina
    curso_ID INT                              -- Chave estrangeira referenciando a tabela 'curso'
);

-- Criar uma tabela 'curso' para armazenar informações sobre cursos
CREATE TABLE curso (
    ID_curso INT AUTO_INCREMENT PRIMARY KEY NOT NULL,  -- Identificador único para cada curso
    nome_curso VARCHAR(50),                           -- Nome do curso
    disciplina_ID INT,                                -- Chave estrangeira referenciando a tabela 'disciplina'
    FOREIGN KEY (disciplina_ID) REFERENCES disciplina(ID_disc)
);

-- Criar uma tabela 'disc_curso' para representar o relacionamento muitos para muitos entre 'disciplina' e 'curso'
CREATE TABLE disc_curso (
    disciplina_ID INT NOT NULL,
    curso_ID INT NOT NULL,
    PRIMARY KEY(disciplina_ID,curso_ID),
    CONSTRAINT disc_curso_FK FOREIGN KEY (disciplina_ID) REFERENCES disciplina (ID_disc),
    CONSTRAINT curso_disc_FK FOREIGN KEY (curso_ID) REFERENCES curso (ID_curso)
);

-- Criar uma tabela 'funcionario' para armazenar informações sobre membros da equipe
CREATE TABLE funcionario (
    ID_func INT AUTO_INCREMENT PRIMARY KEY,     -- Identificador único para cada membro da equipe
    nome_funcionario VARCHAR(20) NOT NULL,      -- Nome do membro da equipe (não nulo)
    sobrenome VARCHAR(50) NOT NULL,             -- Sobrenome do membro da equipe (não nulo)
    sexo CHAR(1) NOT NULL,                      -- Gênero do membro da equipe (não nulo)
    dt_nascimento DATE NOT NULL,                -- Data de nascimento do membro da equipe (não nulo)
    instituicao_associado VARCHAR(50) NOT NULL, -- Instituição afiliada ao membro da equipe (não nulo)
    titulo_academico VARCHAR(20) NOT NULL,      -- Título acadêmico do membro da equipe (não nulo)
    especializacao VARCHAR(50) NOT NULL,        -- Especialização do membro da equipe (não nulo)
    tipo_funcionario CHAR(15) NOT NULL,         -- Tipo de membro da equipe (não nulo)
    departamento_ID INT,                        -- Chave estrangeira referenciando a tabela 'departamento'
    CONSTRAINT departamento_FK FOREIGN KEY (departamento_ID) REFERENCES departamento (ID_dep)
);

-- Criar uma tabela 'disc_dep' para representar o relacionamento muitos para muitos entre 'disciplina' e 'departamento'
CREATE TABLE disc_dep (
    disciplina_ID INT,
    departamento_ID INT,
    PRIMARY KEY(disciplina_ID,departamento_ID),
    CONSTRAINT disc_dep_FK FOREIGN KEY (disciplina_ID) REFERENCES disciplina (ID_disc),
    CONSTRAINT dep_disc_FK FOREIGN KEY (departamento_ID) REFERENCES departamento (ID_dep)
);

-- Criar uma tabela 'endereco_faculdade' para armazenar endereços das faculdades
CREATE TABLE endereco_faculdade (
    faculdade_ID INT,
    rua VARCHAR(50) NOT NULL,
    numero INT NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    cidade VARCHAR(20) NOT NULL,
    complemento TEXT,
    CEP CHAR(10) NOT NULL,
    FOREIGN KEY (faculdade_ID) REFERENCES faculdade (ID_facul)
);

-- Criar uma tabela 'contato_faculdade' para armazenar informações de contato das faculdades
CREATE TABLE contato_faculdade (
    faculdade_ID INT PRIMARY KEY,
    whatsapp CHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone CHAR(15),
    FOREIGN KEY (faculdade_ID) REFERENCES faculdade (ID_facul)
);

-- Criar uma tabela 'endereco_funcionario' para armazenar endereços dos membros da equipe
CREATE TABLE endereco_funcionario (
    funcionario_ID INT PRIMARY KEY,
    rua VARCHAR(50) NOT NULL,
    numero INT NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    cidade VARCHAR(20) NOT NULL,
    complemento TEXT,
    CEP CHAR(10) NOT NULL,
    FOREIGN KEY (funcionario_ID) REFERENCES funcionario (ID_func)
);

-- Criar uma tabela 'contato_funcionario' para armazenar informações de contato dos membros da equipe
CREATE TABLE contato_funcionario (
    funcionario_ID INT PRIMARY KEY,
    whatsapp CHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone CHAR(15),
    FOREIGN KEY (funcionario_ID) REFERENCES funcionario (ID_func)
);

-- Criar uma tabela 'turma' para armazenar informações sobre aulas/grupos
CREATE TABLE turma (
    ID_turma INT AUTO_INCREMENT PRIMARY KEY,
    nome_turma VARCHAR(10) NOT NULL,        -- Nome/identificador da turma (não nulo)
    horario_aula VARCHAR(10),               -- Horário das aulas
    local_aulas VARCHAR(10) NOT NULL,       -- Local onde as aulas são realizadas (não nulo)
    numero_alunos INT NOT NULL,             -- Número de alunos na turma (não nulo)
    curso_ID INT,                           -- Chave estrangeira referenciando a tabela 'curso'
    func_ID INT,                            -- Chave estrangeira referenciando a tabela 'funcionario'
    CONSTRAINT func_FK FOREIGN KEY (func_ID) REFERENCES funcionario(ID_func),
    CONSTRAINT turma_FK FOREIGN KEY (curso_ID) REFERENCES curso(ID_curso )
);

-- Criar uma tabela 'aluno' para armazenar informações sobre estudantes
CREATE TABLE aluno (
    matricula INT AUTO_INCREMENT UNIQUE PRIMARY KEY,  -- Identificador único para cada estudante
    nome_aluno VARCHAR(20) NOT NULL,                 -- Nome do estudante (não nulo)
    sobrenome VARCHAR(50) NOT NULL,                   -- Sobrenome do estudante (não nulo)
    data_nascimento DATE NOT NULL,                    -- Data de nascimento do estudante (não nulo)
    genero CHAR(1) NOT NULL,                           -- Gênero do estudante (não nulo)
    status_academico CHAR(10),                        -- Status acadêmico do estudante
    curso_ID INT NOT NULL,                             -- Chave estrangeira referenciando a tabela 'curso'
    turma_ID INT NOT NULL,                             -- Chave estrangeira referenciando a tabela 'turma'
    CONSTRAINT FK_curso FOREIGN KEY (curso_ID) REFERENCES curso (ID_curso),
    CONSTRAINT FK_turma FOREIGN KEY (turma_ID) REFERENCES turma (ID_turma)
);

-- Criar uma tabela 'endereco_aluno' para armazenar endereços dos estudantes
CREATE TABLE endereco_aluno (
    matricula_ID INT PRIMARY KEY,
    rua VARCHAR(50) NOT NULL,
    numero INT NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    cidade VARCHAR(20) NOT NULL,
    complemento TEXT,
    CEP CHAR(10) NOT NULL,
    FOREIGN KEY (matricula_ID) REFERENCES aluno (matricula)
);

-- Criar uma tabela 'contato_aluno' para armazenar informações de contato dos estudantes
CREATE TABLE contato_aluno (
    matricula_ID INT PRIMARY KEY,
    whatsapp CHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone CHAR(15),
    FOREIGN KEY (matricula_ID) REFERENCES aluno (matricula)
);

-- Criar uma tabela 'documento_aluno' para armazenar documentos dos estudantes
CREATE TABLE documento_aluno (
    matricula_ID INT PRIMARY KEY,
    RG CHAR(9) NOT NULL UNIQUE,
    CPF CHAR(11) NOT NULL UNIQUE,
    data_expedicao DATE,
    FOREIGN KEY (matricula_ID) REFERENCES aluno (matricula)
);

-- Criar uma tabela 'aluno_turma' para representar o relacionamento muitos para muitos entre 'turma' e 'aluno'
CREATE TABLE aluno_turma (
    turma_ID INT NOT NULL,
    matricula_ID INT NOT NULL,
    PRIMARY KEY(turma_ID,matricula_ID),
    CONSTRAINT turma_aluno_FK FOREIGN KEY (turma_ID) REFERENCES turma (ID_turma),
    CONSTRAINT aluno_turma_FK FOREIGN KEY (matricula_ID) REFERENCES aluno (matricula)
);

-- Criar uma tabela 'func_disc' para representar o relacionamento muitos para muitos entre 'funcionario' e 'disciplina'
CREATE TABLE func_disc (
    funcionario_ID INT NOT NULL,
    disciplina_ID INT NOT NULL,
    PRIMARY KEY(funcionario_ID,disciplina_ID ),
    CONSTRAINT fun_disc_FK FOREIGN KEY (funcionario_ID) REFERENCES funcionario (ID_func),
    CONSTRAINT disc_fun_FK FOREIGN KEY (disciplina_ID) REFERENCES disciplina (ID_disc)
);







