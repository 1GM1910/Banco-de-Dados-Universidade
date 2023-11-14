-- Dados fictícios para faculdade (Faculty)
INSERT INTO faculdade (nome_faculdade) VALUES
    ('Faculdade UNILESTE'),
    ('Faculdade UNISUL'),
    ('Faculdade UNINORTE'),
    ('Faculdade UNIOESTE');

-- Dados fictícios aleatórios para endereco_faculdade (Endereço da Faculdade)
INSERT INTO endereco_faculdade (faculdade_ID, rua, numero, bairro, cidade, complemento, CEP) VALUES
    (1, 'Rua da Educação', 123, 'Centro', 'Cidade A', 'Bloco A', '12345-678'),
    (2, 'Avenida do Saber', 456, 'Bairro B', 'Cidade B', 'Sala 102', '98765-432'),
    (3, 'Praça da Ciência', 789, 'Bairro C', 'Cidade C', 'Andar 3', '54321-876'),
    (4, 'Alameda do Conhecimento', 101, 'Centro', 'Cidade D', 'Laboratório B', '67890-123');

-- Dados fictícios aleatórios para contato_faculdade (Contato da Faculdade)
INSERT INTO contato_faculdade (faculdade_ID, whatsapp, email, telefone) VALUES
    (1, '+55123456789', 'contato_unileste@example.com', '+5511123456789'),
    (2, '+55234567890', 'contato_unisul@example.com', '+5522112345678'),
    (3, '+55345678901', 'contato_uninorte@example.com', '+5533112345678'),
    (4, '+55456789012', 'contato_unioeste@example.com', '+5544112345678');

SELECT * FROM departamento;
-- Dados fictícios para departamento (Departamento)
INSERT INTO departamento (nome_departamento, responsavel, email, localizacao, telefone, faculdade_ID) VALUES
    ('Departamento de Física', 'Dr. Rodriguez', 'fisica@universidadeLESTE.edu.br', 'ZONALESTE', '+1112233445', '1'),
    ('Departamento de Física', 'Dr. Garcia', 'fisica@universidadeSUL.edu.br', 'ZONASUL', '+1112233446', '2'),
    ('Departamento de Física', 'Dr. Martinez', 'fisica@universidadeNORTE.edu.br', 'ZONANORTE', '+1112233447', '3'),
    ('Departamento de Física', 'Dr. Hernandez', 'fisica@universidadeOESTE.edu.br', 'ZONAOESTE', '+1112233448', '4'),

    ('Departamento de Belas Artes', 'Dr. Thompson', 'belasartes@universidadeLESTE.edu.br', 'ZONALESTE', '+9876543210', '1'),
    ('Departamento de Belas Artes', 'Dr. Turner', 'belasartes@universidadeSUL.edu.br', 'ZONASUL', '+9876543211', '2'),
    ('Departamento de Belas Artes', 'Dr. Parker', 'belasartes@universidadeNORTE.edu.br', 'ZONANORTE', '+9876543212', '3'),
    ('Departamento de Belas Artes', 'Dr. Murphy', 'belasartes@universidadeOESTE.edu.br', 'ZONAOESTE', '+9876543213', '4'),

    ('Departamento de Ciência da Computação', 'Dr. Anderson', 'cc@universidadeLESTE.edu.br', 'ZONALESTE', '+1234567890', '1'),
    ('Departamento de Ciência da Computação', 'Dr. White', 'cc@universidadeSUL.edu.br', 'ZONASUL', '+1234567891', '2'),
    ('Departamento de Ciência da Computação', 'Dr. Johnson', 'cc@universidadeNORTE.edu.br', 'ZONANORTE', '+1234567892', '3'),
    ('Departamento de Ciência da Computação', 'Dr. Smith', 'cc@universidadeOESTE.edu.br', 'ZONAOESTE', '+1234567893', '4'),

    ('Departamento de Biologia', 'Dr. Taylor', 'biologia@universidadeLESTE.edu.br', 'ZONALESTE', '+2345678901', '1'),
    ('Departamento de Biologia', 'Dr. Adams', 'biologia@universidadeSUL.edu.br', 'ZONASUL', '+2345678902', '2'),
    ('Departamento de Biologia', 'Dr. Davis', 'biologia@universidadeNORTE.edu.br', 'ZONANORTE', '+2345678903', '3'),
    ('Departamento de Biologia', 'Dr. Brown', 'biologia@universidadeOESTE.edu.br', 'ZONAOESTE', '+2345678904', '4'),

    ('Departamento de Química', 'Dra. Turner', 'quimica@universidadeLESTE.edu.br', 'ZONALESTE', '+3456789012', '1'),
    ('Departamento de Química', 'Dra. White', 'quimica@universidadeSUL.edu.br', 'ZONASUL', '+3456789013', '2'),
    ('Departamento de Química', 'Dra. Johnson', 'quimica@universidadeNORTE.edu.br', 'ZONANORTE', '+3456789014', '3'),
    ('Departamento de Química', 'Dra. Smith', 'quimica@universidadeOESTE.edu.br', 'ZONAOESTE', '+3456789015', '4'),

    ('Departamento de História', 'Dr. Robinson', 'historia@universidadeLESTE.edu.br', 'ZONALESTE', '+4567890123', '1'),
    ('Departamento de História', 'Dr. Lewis', 'historia@universidadeSUL.edu.br', 'ZONASUL', '+4567890124', '2'),
    ('Departamento de História', 'Dr. Harris', 'historia@universidadeNORTE.edu.br', 'ZONANORTE', '+4567890125', '3'),
    ('Departamento de História', 'Dr. Nelson', 'historia@universidadeOESTE.edu.br', 'ZONAOESTE', '+4567890126', '4'),

    ('Departamento de Engenharia Civil', 'Dr. Miller', 'engcivil@universidadeLESTE.edu.br', 'ZONALESTE', '+5566778899', '1'),
    ('Departamento de Engenharia Civil', 'Dr. Wilson', 'engcivil@universidadeSUL.edu.br', 'ZONASUL', '+5566778900', '2'),
    ('Departamento de Engenharia Civil', 'Dr. Moore', 'engcivil@universidadeNORTE.edu.br', 'ZONANORTE', '+5566778901', '3'),
    ('Departamento de Engenharia Civil', 'Dr. Taylor', 'engcivil@universidadeOESTE.edu.br', 'ZONAOESTE', '+5566778902', '4'),

    ('Departamento de Psicologia', 'Dra. Turner', 'psicologia@universidadeLESTE.edu.br', 'ZONALESTE', '+6677889901', '1'),
    ('Departamento de Psicologia', 'Dra. White', 'psicologia@universidadeSUL.edu.br', 'ZONASUL', '+6677889902', '2'),
    ('Departamento de Psicologia', 'Dra. Johnson', 'psicologia@universidadeNORTE.edu.br', 'ZONANORTE', '+6677889903', '3'),
    ('Departamento de Psicologia', 'Dra. Smith', 'psicologia@universidadeOESTE.edu.br', 'ZONAOESTE', '+6677889904', '4'),

    ('Departamento de Literatura', 'Dra. Robinson', 'literatura@universidadeLESTE.edu.br', 'ZONALESTE', '+7788990011', '1'),
    ('Departamento de Literatura', 'Dra. Lewis', 'literatura@universidadeSUL.edu.br', 'ZONASUL', '+7788990012', '2'),
    ('Departamento de Literatura', 'Dra. Harris', 'literatura@universidadeNORTE.edu.br', 'ZONANORTE', '+7788990013', '3'),
    ('Departamento de Literatura', 'Dra. Nelson', 'literatura@universidadeOESTE.edu.br', 'ZONAOESTE', '+7788990014', '4'),

    ('Departamento de Economia', 'Dr. Robinson', 'economia@universidadeLESTE.edu.br', 'ZONALESTE', '+8899001122', '1'),
    ('Departamento de Economia', 'Dr. Lewis', 'economia@universidadeSUL.edu.br', 'ZONASUL', '+8899001123', '2'),
    ('Departamento de Economia', 'Dr. Harris', 'economia@universidadeNORTE.edu.br', 'ZONANORTE', '+8899001124', '3'),
    ('Departamento de Economia', 'Dr. Nelson', 'economia@universidadeOESTE.edu.br', 'ZONAOESTE', '+8899001125', '4'),

    ('Departamento de Medicina', 'Dra. Robinson', 'medicina@universidadeLESTE.edu.br', 'ZONALESTE', '+9900112233', '1'),
    ('Departamento de Medicina', 'Dra. Lewis', 'medicina@universidadeSUL.edu.br', 'ZONASUL', '+9900112234', '2'),
    ('Departamento de Medicina', 'Dra. Harris', 'medicina@universidadeNORTE.edu.br', 'ZONANORTE', '+9900112235', '3'),
    ('Departamento de Medicina', 'Dra. Nelson', 'medicina@universidadeOESTE.edu.br', 'ZONAOESTE', '+9900112236', '4'),

    ('Departamento de Engenharia Elétrica', 'Dr. Miller', 'engenhariaeletrica@universidadeLESTE.edu.br', 'ZONALESTE', '+0011223344', '1'),
    ('Departamento de Engenharia Elétrica', 'Dr. Wilson', 'engenhariaeletrica@universidadeSUL.edu.br', 'ZONASUL', '+0011223345', '2'),
    ('Departamento de Engenharia Elétrica', 'Dr. Moore', 'engenhariaeletrica@universidadeNORTE.edu.br', 'ZONANORTE', '+0011223346', '3'),
    ('Departamento de Engenharia Elétrica', 'Dr. Taylor', 'engenhariaeletrica@universidadeOESTE.edu.br', 'ZONAOESTE', '+0011223347', '4'),

    ('Departamento de Música', 'Dr. Robinson', 'musica@universidadeLESTE.edu.br', 'ZONALESTE', '+1122334455', '1'),
    ('Departamento de Música', 'Dr. Lewis', 'musica@universidadeSUL.edu.br', 'ZONASUL', '+1122334456', '2'),
    ('Departamento de Música', 'Dr. Harris', 'musica@universidadeNORTE.edu.br', 'ZONANORTE', '+1122334457', '3'),
    ('Departamento de Música', 'Dr. Nelson', 'musica@universidadeOESTE.edu.br', 'ZONAOESTE', '+1122334458', '4');


-- Dados fictícios para curso (Curso)
INSERT INTO curso (nome_curso) VALUES
    ('Física'),
    ('Belas Artes'),
    ('Ciência da Computação');

-- Dados fictícios para disciplina (Disciplina)
INSERT INTO `db_universidade`.`disciplina` (`nome_disciplina`, `carga_horaria`, `descricao`, `grau_tecnico`) VALUES
('Cálculo Integral', '90 horas', 'Teoria e prática do cálculo integral.', 'Bacharelado'),
('Escultura', '50 horas', 'Escultura em diferentes materiais.', 'Bacharelado'),
('Algoritmos e Lógica de Programação', '70 horas', 'Fundamentos de algoritmos e lógica de programação.', 'Bacharelado'),
('Física Moderna', '60 horas', 'Princípios da física moderna.', 'Bacharelado'),
('Desenho Artístico', '40 horas', 'Técnicas avançadas de desenho artístico.', 'Bacharelado'),
('Banco de Dados', '80 horas', 'Princípios de bancos de dados e modelagem.', 'Bacharelado'),
('Termodinâmica', '65 horas', 'Estudo das leis da termodinâmica.', 'Bacharelado'),
('Arquitetura de Computadores', '55 horas', 'Fundamentos de arquitetura de computadores.', 'Bacharelado'),
('História da Arte', '30 horas', 'Panorama histórico da arte mundial.', 'Bacharelado'),
('Redes de Computadores', '75 horas', 'Conceitos e práticas em redes de computadores.', 'Bacharelado'),
('Geometria Analítica', '60 horas', 'Estudo da geometria analítica.', 'Bacharelado'),
('Pintura Digital', '45 horas', 'Técnicas de pintura digital.', 'Bacharelado'),
('Sistemas Operacionais', '70 horas', 'Princípios de sistemas operacionais.', 'Bacharelado'),
('Filosofia da Ciência', '40 horas', 'Reflexão filosófica sobre a ciência.', 'Bacharelado'),
('Inteligência Artificial', '80 horas', 'Fundamentos de inteligência artificial.', 'Bacharelado'),
('Álgebra Linear', '65 horas', 'Estudo da álgebra linear.', 'Bacharelado'),
('Anatomia Artística', '50 horas', 'Estudo anatômico para artistas.', 'Bacharelado'),
('Programação Web', '75 horas', 'Desenvolvimento web e suas tecnologias.', 'Bacharelado'),
('Química Geral', '60 horas', 'Princípios da química geral.', 'Bacharelado'),
('Ética Profissional', '30 horas', 'Aspectos éticos na prática profissional.', 'Bacharelado');


-- Dados fictícios para disc_curso (Relação Curso-Disciplina)
INSERT INTO disc_curso (disciplina_ID, curso_ID) VALUES
    (1, 1),
    (2, 1),
    (2, 2),
    (3, 3);

-- Dados fictícios para funcionario (Funcionário)
INSERT INTO funcionario (nome_funcionario, sobrenome, sexo, dt_nascimento, instituicao_associado, titulo_academico, especializacao, tipo_funcionario, departamento_ID) VALUES
('Maria', 'Costa', 'F', '1982-11-25', 'UNILESTE', 'Mestre', 'Engenharia Civil', 'PROFESSOR', 4),
('Ricardo', 'Pereira', 'M', '1978-09-18', 'UNILESTE', 'Doutor', 'Biologia', 'PROFESSOR', 2),
('Amanda', 'Martins', 'F', '1989-07-12', 'UNILESTE', 'Mestre', 'Psicologia', 'PROFESSOR', 3),
('Lucas', 'Fernandes', 'M', '1987-04-30', 'UNILESTE', 'Doutor', 'Matemática', 'PROFESSOR', 4),
('Fernanda', 'Oliveira', 'F', '1984-02-15', 'UNILESTE', 'Mestre', 'Letras', 'PROFESSOR', 1),
('Paulo', 'Almeida', 'M', '1973-06-08', 'UNILESTE', 'Doutor', 'Economia', 'PROFESSOR', 2),
('Carla', 'Silveira', 'F', '1990-01-03', 'UNILESTE', 'Mestre', 'História', 'PROFESSOR', 3),
('Gustavo', 'Cunha', 'M', '1981-12-20', 'UNILESTE', 'Doutor', 'Química', 'PROFESSOR', 4),
('Camila', 'Sousa', 'F', '1986-10-05', 'UNILESTE', 'Mestre', 'Sociologia', 'PROFESSOR', 1),
('José', 'Rocha', 'M', '1970-07-22', 'UNILESTE', 'Doutor', 'Medicina', 'PROFESSOR', 4),
('Mariana', 'Lima', 'F', '1983-04-18', 'UNILESTE', 'Mestre', 'Educação Física', 'PROFESSOR', 2),
('André', 'Cardoso', 'M', '1976-11-12', 'UNILESTE', 'Doutor', 'Engenharia Elétrica', 'PROFESSOR', 3),
('Laura', 'Santana', 'F', '1988-09-02', 'UNILESTE', 'Mestre', 'Filosofia', 'PROFESSOR', 4),
('Carlos', 'Mendes', 'M', '1979-03-27', 'UNILESTE', 'Doutor', 'Geografia', 'PROFESSOR', 1),
('Beatriz', 'Ramos', 'F', '1992-06-10', 'UNILESTE', 'Mestre', 'Arquitetura', 'PROFESSOR', 3),
('Henrique', 'Araújo', 'M', '1974-01-14', 'UNILESTE', 'Doutor', 'Psicologia', 'PROFESSOR', 2),
('Juliana', 'Costa', 'F', '1980-08-08', 'UNILESTE', 'Mestre', 'Engenharia Química', 'PROFESSOR', 3),
('Fábio', 'Gomes', 'M', '1965-05-30', 'UNILESTE', 'Doutor', 'Física', 'PROFESSOR', 4),
('Isabel', 'Moraes', 'F', '1995-02-22', 'UNILESTE', 'Mestre', 'Comunicação', 'PROFESSOR', 1),
('Marcos', 'Freitas', 'M', '1971-10-17', 'UNILESTE', 'Doutor', 'Direito', 'PROFESSOR', 4);

INSERT INTO funcionario (nome_funcionario, sobrenome, sexo, dt_nascimento, instituicao_associado, titulo_academico, especializacao, tipo_funcionario, departamento_ID) VALUES
('Gabriel', 'Rodrigues', 'M', '1986-07-18', 'UNISUL', 'Mestre', 'Engenharia de Produção', 'PROFESSOR', 3),
('Patrícia', 'Oliveira', 'F', '1989-02-05', 'UNISUL', 'Doutor', 'Biomedicina', 'PROFESSOR', 2),
('Leandro', 'Ferreira', 'M', '1981-11-30', 'UNISUL', 'Mestre', 'Comunicação Social', 'PROFESSOR', 4),
('Vanessa', 'Silva', 'F', '1984-09-22', 'UNISUL', 'Doutor', 'Direito', 'PROFESSOR', 1),
('Rodrigo', 'Santos', 'M', '1977-04-12', 'UNISUL', 'Mestre', 'Psicologia', 'PROFESSOR', 5),
('Fernanda', 'Cunha', 'F', '1990-08-08', 'UNISUL', 'Doutor', 'Economia', 'PROFESSOR', 2),
('Felipe', 'Almeida', 'M', '1983-01-15', 'UNISUL', 'Mestre', 'Artes Visuais', 'PROFESSOR', 3),
('Camila', 'Ramos', 'F', '1987-05-20', 'UNISUL', 'Doutor', 'Engenharia Civil', 'PROFESSOR', 4),
('Lucas', 'Moraes', 'M', '1975-12-10', 'UNISUL', 'Mestre', 'História', 'PROFESSOR', 1),
('Juliana', 'Ferreira', 'F', '1988-06-28', 'UNISUL', 'Doutor', 'Medicina', 'PROFESSOR', 5),
('Rafael', 'Oliveira', 'M', '1972-03-14', 'UNISUL', 'Mestre', 'Engenharia Elétrica', 'PROFESSOR', 2),
('Tatiane', 'Costa', 'F', '1992-09-03', 'UNISUL', 'Doutor', 'Filosofia', 'PROFESSOR', 3),
('Bruno', 'Silveira', 'M', '1979-08-27', 'UNISUL', 'Mestre', 'Geografia', 'PROFESSOR', 4),
('Larissa', 'Araújo', 'F', '1986-04-05', 'UNISUL', 'Doutor', 'Engenharia Química', 'PROFESSOR', 1),
('Alexandre', 'Rocha', 'M', '1974-10-23', 'UNISUL', 'Mestre', 'Física', 'PROFESSOR', 5),
('Caroline', 'Mendes', 'F', '1995-07-19', 'UNISUL', 'Doutor', 'Sociologia', 'PROFESSOR', 2),
('Vinícius', 'Martins', 'M', '1980-11-08', 'UNISUL', 'Mestre', 'Psicologia', 'PROFESSOR', 3),
('Natália', 'Sousa', 'F', '1976-06-17', 'UNISUL', 'Doutor', 'Matemática', 'PROFESSOR', 4),
('Diego', 'Lima', 'M', '1990-02-09', 'UNISUL', 'Mestre', 'Arquitetura', 'PROFESSOR', 1),
('Ana', 'Cardoso', 'F', '1973-09-26', 'UNISUL', 'Doutor', 'Engenharia de Software', 'PROFESSOR', 5);

INSERT INTO funcionario (nome_funcionario, sobrenome, sexo, dt_nascimento, instituicao_associado, titulo_academico, especializacao, tipo_funcionario, departamento_ID) VALUES
('Laura', 'Oliveira', 'F', '1984-07-18', 'UNINORTE', 'Mestre', 'Engenharia Ambiental', 'PROFESSOR', 3),
('Pedro', 'Santos', 'M', '1987-02-05', 'UNINORTE', 'Doutor', 'Biologia Marinha', 'PROFESSOR', 2),
('Carolina', 'Ferreira', 'F', '1982-11-30', 'UNINORTE', 'Mestre', 'Comunicação Social', 'PROFESSOR', 4),
('Rafael', 'Silva', 'M', '1989-09-22', 'UNINORTE', 'Doutor', 'Direito Internacional', 'PROFESSOR', 1),
('Beatriz', 'Rodrigues', 'F', '1977-04-12', 'UNINORTE', 'Mestre', 'Psicologia Organizacional', 'PROFESSOR', 5),
('Gustavo', 'Cunha', 'M', '1990-08-08', 'UNINORTE', 'Doutor', 'Economia', 'PROFESSOR', 2),
('Tatiane', 'Almeida', 'F', '1983-01-15', 'UNINORTE', 'Mestre', 'Artes Visuais', 'PROFESSOR', 3),
('Fernando', 'Ramos', 'M', '1975-12-10', 'UNINORTE', 'Doutor', 'História Contemporânea', 'PROFESSOR', 4),
('Juliana', 'Costa', 'F', '1988-06-28', 'UNINORTE', 'Mestre', 'Medicina Integrativa', 'PROFESSOR', 1),
('Lucas', 'Oliveira', 'M', '1972-03-14', 'UNINORTE', 'Doutor', 'Engenharia Elétrica', 'PROFESSOR', 5),
('Mariana', 'Ferreira', 'F', '1992-09-03', 'UNINORTE', 'Mestre', 'Filosofia', 'PROFESSOR', 3),
('Henrique', 'Silveira', 'M', '1979-08-27', 'UNINORTE', 'Doutor', 'Geografia Urbana', 'PROFESSOR', 4),
('Camila', 'Araújo', 'F', '1986-04-05', 'UNINORTE', 'Mestre', 'Engenharia Química', 'PROFESSOR', 1),
('Diego', 'Rocha', 'M', '1974-10-23', 'UNINORTE', 'Doutor', 'Física Nuclear', 'PROFESSOR', 5),
('Aline', 'Mendes', 'F', '1995-07-19', 'UNINORTE', 'Mestre', 'Sociologia', 'PROFESSOR', 2),
('Vinícius', 'Martins', 'M', '1980-11-08', 'UNINORTE', 'Doutor', 'Psicologia Cognitiva', 'PROFESSOR', 3),
('Ana', 'Sousa', 'F', '1976-06-17', 'UNINORTE', 'Mestre', 'Matemática Aplicada', 'PROFESSOR', 4),
('Ricardo', 'Lima', 'M', '1990-02-09', 'UNINORTE', 'Doutor', 'Arquitetura Sustentável', 'PROFESSOR', 1),
('Bruna', 'Cardoso', 'F', '1973-09-26', 'UNINORTE', 'Mestre', 'Engenharia de Software', 'PROFESSOR', 5),
('Gabriel', 'Freitas', 'M', '1985-05-14', 'UNINORTE', 'Doutor', 'Comunicação Digital', 'PROFESSOR', 2);

INSERT INTO funcionario (nome_funcionario, sobrenome, sexo, dt_nascimento, instituicao_associado, titulo_academico, especializacao, tipo_funcionario, departamento_ID) VALUES
('Marcelo', 'Oliveira', 'M', '1983-07-18', 'UNIOESTE', 'Mestre', 'Engenharia de Computação', 'PROFESSOR', 3),
('Priscila', 'Santos', 'F', '1986-02-05', 'UNIOESTE', 'Doutor', 'Biologia Molecular', 'PROFESSOR', 2),
('Luciano', 'Ferreira', 'M', '1979-11-30', 'UNIOESTE', 'Mestre', 'Comunicação Digital', 'PROFESSOR', 4),
('Camila', 'Silva', 'F', '1991-09-22', 'UNIOESTE', 'Doutor', 'Direito Constitucional', 'PROFESSOR', 1),
('Ricardo', 'Rodrigues', 'M', '1977-04-12', 'UNIOESTE', 'Mestre', 'Psicologia Clínica', 'PROFESSOR', 5),
('Amanda', 'Cunha', 'F', '1990-08-08', 'UNIOESTE', 'Doutor', 'Economia', 'PROFESSOR', 2),
('Vinícius', 'Almeida', 'M', '1982-01-15', 'UNIOESTE', 'Mestre', 'Artes Cênicas', 'PROFESSOR', 3),
('Fernanda', 'Ramos', 'F', '1975-12-10', 'UNIOESTE', 'Doutor', 'História Medieval', 'PROFESSOR', 4),
('Rafael', 'Costa', 'M', '1988-06-28', 'UNIOESTE', 'Mestre', 'Medicina Interna', 'PROFESSOR', 1),
('Carolina', 'Oliveira', 'F', '1972-03-14', 'UNIOESTE', 'Doutor', 'Engenharia Elétrica', 'PROFESSOR', 5),
('Bruno', 'Ferreira', 'M', '1992-09-03', 'UNIOESTE', 'Mestre', 'Filosofia', 'PROFESSOR', 3),
('Tatiane', 'Silveira', 'F', '1979-08-27', 'UNIOESTE', 'Doutor', 'Geografia Humana', 'PROFESSOR', 4),
('Gustavo', 'Araújo', 'M', '1986-04-05', 'UNIOESTE', 'Mestre', 'Engenharia Química', 'PROFESSOR', 1),
('Mariana', 'Rodrigues', 'F', '1974-10-23', 'UNIOESTE', 'Doutor', 'Física Nuclear', 'PROFESSOR', 5),
('Diego', 'Mendes', 'M', '1995-07-19', 'UNIOESTE', 'Mestre', 'Sociologia', 'PROFESSOR', 2),
('Juliana', 'Martins', 'F', '1980-11-08', 'UNIOESTE', 'Doutor', 'Psicologia Cognitiva', 'PROFESSOR', 3),
('Lucas', 'Sousa', 'M', '1976-06-17', 'UNIOESTE', 'Mestre', 'Matemática Aplicada', 'PROFESSOR', 4),
('Fernando', 'Lima', 'M', '1990-02-09', 'UNIOESTE', 'Doutor', 'Arquitetura Sustentável', 'PROFESSOR', 1),
('Talita', 'Cardoso', 'F', '1973-09-26', 'UNIOESTE', 'Mestre', 'Engenharia de Software', 'PROFESSOR', 5),
('Alexandre', 'Freitas', 'M', '1985-05-14', 'UNIOESTE', 'Doutor', 'Comunicação Digital', 'PROFESSOR', 2);





-- Dados fictícios para endereco_funcionario (Endereço do Funcionário)
INSERT INTO endereco_funcionario (funcionario_ID, rua, numero, bairro, cidade, complemento, CEP) VALUES
    (1, 'Rua do Professor, 789', 10, 'Bairro Acadêmico', 'Cidade Universitária', 'Casa do Docente', '54321-876'),
    (2, 'Avenida das Artes, 456', 5, 'Zona Criativa', 'Cidade das Artes', NULL, '98765-432'),
    (3, 'Rua da Tecnologia, 123', 15, 'Parque da Inovação', 'Cidade Tecnológica', 'Residência Tecnológica', '12345-678');

-- Dados fictícios para contato_funcionario (Contato do Funcionário)
INSERT INTO contato_funcionario (funcionario_ID, whatsapp, email, telefone) VALUES
    (1, '+1111111111', 'joao.silva@universidade.edu.br', '+9999999999'),
    (3, '+2222222222', 'alice.santos@universidade.edu.br', '+8888888888'),
    (2, '+3333333333', 'david.oliveira@universidade.edu.br', '+7777777777'),
    (4, '+4444444444', 'maria.rodrigues@universidade.edu.br', '+6666666666'),
    (5, '+5555555555', 'pedro.martins@universidade.edu.br', '+5555555555'),
    (6, '+6666666666', 'ana.pereira@universidade.edu.br', '+4444444444'),
    (7, '+7777777777', 'roberto.silveira@universidade.edu.br', '+3333333333'),
    (8, '+8888888888', 'camila.almeida@universidade.edu.br', '+2222222222'),
    (9, '+9999999999', 'marcos.lima@universidade.edu.br', '+1111111111'),
    (10, '+1010101010', 'fernanda.souza@universidade.edu.br', '+1212121212'),
    (11, '+1111111111', 'gabriel.nunes@universidade.edu.br', '+1313131313'),
    (12, '+1212121212', 'isabela.costa@universidade.edu.br', '+1414141414'),
    (13, '+1313131313', 'felipe.mendes@universidade.edu.br', '+1515151515'),
    (14, '+1414141414', 'lucas.fernandes@universidade.edu.br', '+1616161616'),
    (15, '+1515151515', 'carla.souza@universidade.edu.br', '+1717171717'),
    (16, '+1616161616', 'gustavo.azevedo@universidade.edu.br', '+1818181818'),
    (17, '+1717171717', 'patricia.monteiro@universidade.edu.br', '+1919191919'),
    (18, '+1818181818', 'rafael.cunha@universidade.edu.br', '+2020202020'),
    (19, '+1919191919', 'thais.rocha@universidade.edu.br', '+2121212121'),
    (20, '+2020202020', 'bruno.alves@universidade.edu.br', '+2222222222');
    
    INSERT INTO contato_funcionario (funcionario_ID, whatsapp, email, telefone) VALUES
    (21, '+2121212121', 'larissa.mendes@universidade.edu.br', '+2323232323'),
    (22, '+2222222222', 'andre.silva@universidade.edu.br', '+2424242424'),
    (23, '+2323232323', 'lucas.souza@universidade.edu.br', '+2525252525'),
    (24, '+2424242424', 'carolina.ferreira@universidade.edu.br', '+2626262626'),
    (25, '+2525252525', 'marcelo.oliveira@universidade.edu.br', '+2727272727'),
    (26, '+2626262626', 'fernanda.nunes@universidade.edu.br', '+2828282828'),
    (27, '+2727272727', 'rodrigo.martins@universidade.edu.br', '+2929292929'),
    (28, '+2828282828', 'nathalia.santos@universidade.edu.br', '+3030303030'),
    (29, '+2929292929', 'gabriel.rocha@universidade.edu.br', '+3131313131'),
    (30, '+3030303030', 'amanda.almeida@universidade.edu.br', '+3232323232'),
    (31, '+3131313131', 'rafael.cunha@universidade.edu.br', '+3333333333'),
    (32, '+3232323232', 'julia.monteiro@universidade.edu.br', '+3434343434'),
    (33, '+3333333333', 'bruno.silveira@universidade.edu.br', '+3535353535'),
    (34, '+3434343434', 'lais.mendes@universidade.edu.br', '+3636363636'),
    (35, '+3535353535', 'felipe.fernandes@universidade.edu.br', '+3737373737'),
    (36, '+3636363636', 'thais.rodrigues@universidade.edu.br', '+3838383838'),
    (37, '+3737373737', 'vitor.souza@universidade.edu.br', '+3939393939'),
    (38, '+3838383838', 'camila.costa@universidade.edu.br', '+4040404040'),
    (39, '+3939393939', 'pedro.nunes@universidade.edu.br', '+4141414141'),
    (40, '+4040404040', 'marina.silva@universidade.edu.br', '+4242424242');
    
    INSERT INTO contato_funcionario (funcionario_ID, whatsapp, email, telefone) VALUES
    (41, '+4141414141', 'lucas.fernandes@universidade.edu.br', '+4343434343'),
    (42, '+4242424242', 'gabriela.martins@universidade.edu.br', '+4444444444'),
    (43, '+4343434343', 'daniel.silva@universidade.edu.br', '+4545454545'),
    (44, '+4444444444', 'ana.lima@universidade.edu.br', '+4646464646'),
    (45, '+4545454545', 'roberto.cunha@universidade.edu.br', '+4747474747'),
    (46, '+4646464646', 'juliana.almeida@universidade.edu.br', '+4848484848'),
    (47, '+4747474747', 'pedro.rocha@universidade.edu.br', '+4949494949'),
    (48, '+4848484848', 'thiago.santos@universidade.edu.br', '+5050505050'),
    (49, '+4949494949', 'isabela.ferreira@universidade.edu.br', '+5151515151'),
    (50, '+5050505050', 'vinicius.nunes@universidade.edu.br', '+5252525252'),
    (51, '+5151515151', 'patricia.mendes@universidade.edu.br', '+5353535353'),
    (52, '+5252525252', 'gustavo.silva@universidade.edu.br', '+5454545454'),
    (53, '+5353535353', 'lais.oliveira@universidade.edu.br', '+5555555555'),
    (54, '+5454545454', 'rafael.martins@universidade.edu.br', '+5656565656'),
    (55, '+5555555555', 'camila.santos@universidade.edu.br', '+5757575757'),
    (56, '+5656565656', 'joao.costa@universidade.edu.br', '+5858585858'),
    (57, '+5757575757', 'amanda.rodrigues@universidade.edu.br', '+5959595959'),
    (58, '+5858585858', 'felipe.almeida@universidade.edu.br', '+6060606060'),
    (59, '+5959595959', 'bruna.silveira@universidade.edu.br', '+6161616161'),
    (60, '+6060606060', 'thomas.souza@universidade.edu.br', '+6262626262');
    
    INSERT INTO contato_funcionario (funcionario_ID, whatsapp, email, telefone) VALUES
    (61, '+6161616161', 'lucia.martins@universidade.edu.br', '+6363636363'),
    (62, '+6262626262', 'gabriel.silva@universidade.edu.br', '+6464646464'),
    (63, '+6363636363', 'mariana.rodrigues@universidade.edu.br', '+6565656565'),
    (64, '+6464646464', 'thiago.costa@universidade.edu.br', '+6666666666'),
    (65, '+6565656565', 'raquel.nunes@universidade.edu.br', '+6767676767'),
    (66, '+6666666666', 'vitoria.almeida@universidade.edu.br', '+6868686868'),
    (67, '+6767676767', 'fernando.souza@universidade.edu.br', '+6969696969'),
    (68, '+6868686868', 'natalia.mendes@universidade.edu.br', '+7070707070'),
    (69, '+6969696969', 'andre.cunha@universidade.edu.br', '+7171717171'),
    (70, '+7070707070', 'marcos.silveira@universidade.edu.br', '+7272727272'),
    (71, '+7171717171', 'luiza.oliveira@universidade.edu.br', '+7373737373'),
    (72, '+7272727272', 'bruno.martins@universidade.edu.br', '+7474747474'),
    (73, '+7373737373', 'carlos.santos@universidade.edu.br', '+7575757575'),
    (74, '+7474747474', 'livia.costa@universidade.edu.br', '+7676767676'),
    (75, '+7575757575', 'ricardo.rodrigues@universidade.edu.br', '+7777777777'),
    (76, '+7676767676', 'sara.almeida@universidade.edu.br', '+7878787878'),
    (77, '+7777777777', 'andreia.martins@universidade.edu.br', '+7979797979'),
    (78, '+7878787878', 'eduardo.souza@universidade.edu.br', '+8080808080'),
    (79, '+7979797979', 'bianca.nunes@universidade.edu.br', '+8181818181'),
    (80, '+8080808080', 'joaquim.cunha@universidade.edu.br', '+8282828282');





-- Dados fictícios para disc_dep (Relação Departamento-Disciplina)
INSERT INTO disc_dep (disciplina_ID, departamento_ID) VALUES
    (1, 1),
    (2, 2),
    (3, 3);
    
SELECT * FROM turma;
-- Dados fictícios para turma (Turma)
INSERT INTO turma (curso_ID, nome_turma, horario_aula, local_aulas, numero_alunos) VALUES
(1,'FIS101','19h as 22h','SALA01',80),
(2,'ARTE102','13h as 17h ','SALA02',100),
(3,'CC201','14h as 18h','SALA03',50);
SELECT * FROM aluno;
-- Dados fictícios para aluno (Aluno)
INSERT INTO `db_universidade`.`aluno` (`matricula`, `nome_aluno`, `sobrenome`, `data_nascimento`, `genero`, `status_academico`, `curso_ID`, `turma_ID`) VALUES
('4', 'Roberto', 'Oliveira', '1990-04-15', 'M', 'ATIVO', '5', '24'),
('5', 'Fernanda', 'Silva', '1988-09-02', 'F', 'ATIVO', '8', '25'),
('6', 'Gabriel', 'Pereira', '1995-12-11', 'M', 'ATIVO', '2', '26'),
('7', 'Ana', 'Costa', '1987-06-28', 'F', 'ATIVO', '15', '27'),
('8', 'Rafael', 'Martins', '1993-11-07', 'M', 'ATIVO', '10', '28'),
('9', 'Juliana', 'Lima', '1989-02-14', 'F', 'ATIVO', '3', '29'),
('10', 'Carlos', 'Almeida', '1997-05-20', 'M', 'ATIVO', '14', '30'),
('11', 'Fernanda', 'Ramos', '1994-08-03', 'F', 'ATIVO', '7', '31'),
('12', 'Gabriel', 'Cruz', '1991-01-15', 'M', 'ATIVO', '1', '32'),
('13', 'Patrícia', 'Nunes', '1986-04-30', 'F', 'ATIVO', '9', '33'),
('14', 'Daniel', 'Rodrigues', '1998-09-12', 'M', 'ATIVO', '6', '34'),
('15', 'Isabela', 'Ferreira', '1995-12-25', 'F', 'ATIVO', '12', '35'),
('16', 'Vinícius', 'Gomes', '1993-03-09', 'M', 'ATIVO', '4', '36'),
('17', 'Tatiane', 'Sousa', '1987-06-14', 'F', 'ATIVO', '13', '37'),
('18', 'Alexandre', 'Machado', '1991-12-30', 'M', 'ATIVO', '16', '38'),
('19', 'Camila', 'Lopes', '1999-02-28', 'F', 'ATIVO', '19', '39'),
('20', 'Eduardo', 'Araújo', '1996-11-07', 'M', 'ATIVO', '20', '40'),
('21', 'Carolina', 'Fernandes', '1990-08-18', 'F', 'ATIVO', '18', '41'),
('22', 'Bruno', 'Santos', '1992-03-25', 'M', 'ATIVO', '17', '42'),
('23', 'Aline', 'Ribeiro', '1989-06-30', 'F', 'ATIVO', '5', '43'),
('24', 'Lucas', 'Oliveira', '1997-09-22', 'M', 'ATIVO', '8', '44'),
('25', 'Mariana', 'Silva', '1994-04-11', 'F', 'ATIVO', '11', '45'),
('26', 'Tiago', 'Pereira', '1991-07-18', 'M', 'ATIVO', '2', '46'),
('27', 'Laura', 'Costa', '1998-12-05', 'F', 'ATIVO', '15', '47'),
('28', 'André', 'Martins', '1995-05-27', 'M', 'ATIVO', '10', '48'),
('29', 'Carla', 'Lima', '1992-10-14', 'F', 'ATIVO', '3', '49'),
('30', 'Felipe', 'Almeida', '1988-01-28', 'M', 'ATIVO', '14', '50');



-- Dados fictícios para endereco_aluno (Endereço do Aluno)
INSERT INTO `db_universidade`.`endereco_aluno` (`matricula_ID`, `rua`, `numero`, `bairro`, `cidade`, `CEP`) VALUES
('30', 'Avenida dos Estudantes', '234', 'Vila Acadêmica', 'São Paulo', '04567890'),
('3', 'Rua da Educação', '567', 'Bairro do Conhecimento', 'Campinas', '01234567'),
('4', 'Alameda das Artes', '890', 'Setor Universitário', 'Rio de Janeiro', '08901234'),
('5', 'Avenida do Saber', '111', 'Vila do Estudo', 'Belo Horizonte', '09876543'),
('6', 'Rua da Ciência', '222', 'Bairro Acadêmico', 'Brasília', '05678901'),
('7', 'Alameda da Tecnologia', '333', 'Residencial do Saber', 'Porto Alegre', '02345678'),
('8', 'Avenida da Inovação', '444', 'Vila da Educação', 'Salvador', '04567890'),
('9', 'Rua do Progresso', '555', 'Bairro da Arte', 'Recife', '08901234'),
('10', 'Alameda do Futuro', '666', 'Residencial da Engenharia', 'Fortaleza', '09876543'),
('11', 'Avenida do Conhecimento', '777', 'Vila do Saber', 'Manaus', '01234567'),
('12', 'Rua do Aprendizado', '888', 'Setor da Ciência', 'Curitiba', '05678901'),
('13', 'Alameda do Saber', '999', 'Bairro da Tecnologia', 'Natal', '02345678'),
('14', 'Avenida da Engenharia', '1010', 'Vila da Inovação', 'Maceió', '04567890'),
('15', 'Rua do Conhecimento', '1212', 'Residencial da Arte', 'Florianópolis', '08901234'),
('16', 'Alameda das Tecnologias', '1313', 'Bairro do Progresso', 'João Pessoa', '09876543'),
('17', 'Avenida do Estudo', '1414', 'Vila da Educação', 'São Luís', '01234567'),
('18', 'Rua das Artes', '1515', 'Setor Universitário', 'Goiania', '05678901'),
('19', 'Alameda do Saber', '1616', 'Residencial Acadêmico', 'Vitória', '02345678'),
('20', 'Avenida da Ciência', '1717', 'Bairro da Tecnologia', 'Porto Velho', '04567890'),
('21', 'Rua da Inovação', '1818', 'Vila do Saber', 'Teresina', '08901234'),
('22', 'Alameda do Progresso', '1919', 'Setor do Conhecimento', 'Campo Grande', '09876543');



-- Dados fictícios para contato_aluno (Contato do Aluno)
INSERT INTO contato_aluno (matricula_ID, whatsapp, email, telefone) VALUES
    (1, '+5555555555', 'maria.fernandes@estudante.edu.br', '+7777777777'),
    (3, '+6666666666', 'pedro.santos@estudante.edu.br', '+8888888888'),
    (2, '+7777777777', 'carla.ribeiro@estudante.edu.br', '+9999999999');
    
    INSERT INTO contato_aluno (matricula_ID,whatsapp, email, telefone) VALUES
('30', '(11)98765-4321', 'ana.silva@email.com', '987654321'),
('3', '(21)99876-5432', 'carlos.almeida@email.com', '987654322'),
('4', '(31)98765-1234', 'daniel.rodrigues@email.com', '987654323'),
('5', '(51)98765-5678', 'elaine.lima@email.com', '987654324'),
('6', '(81)98765-9876', 'fernando.souza@email.com', '987654325'),
('7', '(91)98765-8765', 'gabriela.martins@email.com', '987654326'),
('8', '(41)98765-3456', 'hugo.alves@email.com', '987654327'),
('9', '(85)98765-2345', 'isabel.costa@email.com', '987654328'),
('10', '(92)98765-6789', 'joao.pereira@email.com', '987654329'),
('11', '(98)98765-0123', 'karen.nunes@email.com', '987654330'),
('12', '(27)98765-8901', 'lucas.silveira@email.com', '987654331'),
('13', '(19)98765-5678', 'maria.santos@email.com', '987654332'),
('14', '(73)98765-1234', 'natan.oliveira@email.com', '987654333'),
('15', '(65)98765-4321', 'olivia.machado@email.com', '987654334'),
('16', '(35)98765-8765', 'paulo.rocha@email.com', '987654335'),
('17', '(84)98765-2345', 'quiteria.pereira@email.com', '987654336'),
('18', '(86)98765-8901', 'ricardo.almeida@email.com', '987654337'),
('19', '(21)98765-6789', 'sara.silva@email.com', '987654338'),
('20', '(77)98765-0123', 'tiago.rodrigues@email.com', '987654339'),
('21', '(88)98765-8901', 'ursula.fernandes@email.com', '987654340');


-- Dados fictícios para documento_aluno (Documentos do Aluno)
INSERT INTO `db_universidade`.`documento_aluno` (`matricula_ID`, `RG`, `CPF`, `data_expedicao`) VALUES
(24, '098765432', '76543210987', '2019-05-14'),
(25, '987654322', '65432109876', '2018-08-21'),
(26, '12345678', '54321098765', '2017-02-09'),
(27, '234567890', '43210987654', '2020-10-06'),
(28, '345678901', '32109876543', '2019-01-17'),
(29, '456789012', '10987654321', '2018-06-30');



-- Dados fictícios para aluno_turma (Relação Aluno-Turma)
INSERT INTO aluno_turma (turma_ID, matricula_ID) VALUES
    (24, 1),
    (30, 5),
    (40, 3);

