# Banco-de-Dados-Universidade

## Índice
- [Sobre o Projeto](#sobre-o-projeto)
- [Tabelas do Banco de Dados](#tabelas-do-banco-de-dados)
- [Modelo Conceitual](#modelo-conceitual)
- [Modelo Lógico](#modelo-lógico)
- [Modelo Normalizado](#modelo-normalizado)
- [Modelo Físico do Banco de Dados](#modelo-físico-do-banco-de-dados)
- [Código SQL](#código-sql)
- [Consultas SQL](#consultas-sql)
- [Diagrama EER do Modelo Físico](#diagrama-eer-do-modelo-físico)
- [Considerações Finais](#considerações-finais)


## Sobre o projeto

O banco de dados, intitulado 'db_universidade', abrange uma variedade de entidades cruciais, como faculdades, departamentos, disciplinas, cursos, funcionários e alunos, proporcionando uma estrutura sólida para a gestão eficiente de informações acadêmicas.

### Características Principais

**-Relacionamentos Complexos:**
O projeto incorpora relacionamentos muitos para muitos, modelando de maneira precisa a interação entre disciplinas, cursos, departamentos, funcionários e alunos, essenciais para uma gestão acadêmica abrangente.

**-Integridade Referencial:**
Utilizando chaves primárias e estrangeiras, o banco de dados mantém a integridade referencial, garantindo a consistência dos dados e evitando inconsistências.

**-Detalhamento Abrangente:**
Além das entidades principais, tabelas específicas foram criadas para armazenar informações detalhadas, como endereços, contatos e documentos, oferecendo uma visão holística dos funcionários e alunos associados à instituição.

# Modelagem do Banco de Dados

Nesta demonstração breve, apresentarei a estrutura de modelegem do banco de dados voltado para a gestão acadêmica. Inicialmente, destacaremos tabelas essenciais. Em seguida, exploraremos o Modelo Conceitual para visualizar as relações entre essas entidades.
No Modelo Lógico, transformaremos as entidades em tabelas, estabelecendo relacionamentos através de chaves estrangeiras. Essa etapa fornece uma visão mais detalhada da estrutura do banco de dados.
Por fim, abordaremos o Modelo Normalizado, otimizando a eficiência da gestão de dados. Cada tabela é refinada para atender aos padrões da Terceira Forma Normal (3NF), eliminando redundâncias e garantindo integridade referencial.

## Tabelas do Banco de Dados:

![Tabelas](https://github.com/1GM1910/Banco-de-Dados-Universidade/blob/main/diagramas/TABELAS.png?raw=true)

## Modelo Conceitual:

![Modelo Conceitual](https://github.com/1GM1910/Banco-de-Dados-Universidade/blob/main/diagramas/MODELO_CONCEITUAL.drawio.png?raw=true)

**Descrição do Modelo Conceitual:**
O modelo conceitual representa as principais entidades do sistema e seus relacionamentos. Facilita a compreensão da estrutura geral do banco de dados, destacando as conexões entre faculdades, departamentos, disciplinas, cursos, funcionários e alunos.

## Modelo Lógico:

![Modelo Lógico](https://github.com/1GM1910/Banco-de-Dados-Universidade/blob/main/diagramas/MODELO_LOGICO.drawio.png?raw=true)

**Descrição do Modelo Lógico:**
No modelo lógico, as entidades são convertidas em tabelas, e os relacionamentos são definidos por meio de chaves estrangeiras. Este modelo fornece uma visão mais detalhada da estrutura do banco de dados, destacando as tabelas e suas associações.

## Modelo Normalizado:

![Modelo Normalizado](https://github.com/1GM1910/Banco-de-Dados-Universidade/blob/main/diagramas/MODELO_NORMALIZADO.drawio.png?raw=true)

**Descrição do Modelo Normalizado:**
O modelo normalizado reflete um banco de dados otimizado, livre de redundâncias e dependências transitivas. Cada tabela está na Terceira Forma Normal (3NF), garantindo eficiência na gestão de dados e preservando a integridade referencial.

Estas representações fornecem uma visão abrangente da estrutura, relacionamentos e eficiência do banco de dados desenvolvido para atender às demandas específicas do contexto acadêmico.

# Modelo Físico do Banco de Dados 

Na etapa de Modelo Físico, serão destacados trechos-chave do código SQL, revelando a criação e configuração prática das tabelas. A apresentação incluirá o Diagrama do Modelo Físico, proporcionando uma visão visual da estrutura implementada. Consultas específicas serão demonstradas para ilustrar a eficácia do banco de dados na recuperação de informações. Este momento oferece uma compreensão concreta da execução do projeto, da criação das tabelas à realização de consultas práticas.

## Código SQL

- [Código SQL na criaçao das tabelas ](https://github.com/1GM1910/Banco-de-Dados-Universidade/blob/main/db_universidade/db_tabelas.sql)
- [Código SQL na inserção de dados](https://github.com/1GM1910/Banco-de-Dados-Universidade/blob/main/db_universidade/dados_fict%C3%ADcios.sql) 

Exemplo de trecho de código SQL:
```sql
-- Criação das Tabelas
CREATE TABLE departamento (
    ID_dep INT AUTO_INCREMENT PRIMARY KEY,     
    nome_departamento VARCHAR(50) NOT NULL,    
    responsavel VARCHAR(20),                  
    email VARCHAR(100),                      
    localizacao CHAR(15),                     
    telefone CHAR(15)                          
);

-- Inserção de Dados de Exemplo ficticios
INSERT INTO departamento (nome_departamento, responsavel, email, localizacao, telefone, faculdade_ID) VALUES
    ('Departamento de Física', 'Dr. Rodriguez', 'fisica@universidadeLESTE.edu.br', 'ZONALESTE', '+1112233445', '1'),
    ('Departamento de Física', 'Dr. Garcia', 'fisica@universidadeSUL.edu.br', 'ZONASUL', '+1112233446', '2'),
    ('Departamento de Física', 'Dr. Martinez', 'fisica@universidadeNORTE.edu.br', 'ZONANORTE', '+1112233447', '3'),
    ('Departamento de Física', 'Dr. Hernandez', 'fisica@universidadeOESTE.edu.br', 'ZONAOESTE', '+1112233448', '4'):
```

## Consultas SQL 

- [Código SQL de exemplos de consultas ](https://github.com/1GM1910/Banco-de-Dados-Universidade/blob/main/db_universidade/Selects.sql)

Exemplo de trecho de código SQL:
```sql
SELECT curso.nome_curso, COUNT(aluno.matricula) AS total_alunos
FROM curso
JOIN aluno ON curso.ID_curso = aluno.curso_ID
GROUP BY curso.nome_curso;
```
Descrição:
Esta consulta retorna o total de alunos matriculados em cada curso, agrupados por nome do curso. A junção entre as tabelas 'curso' e 'aluno' é realizada para vincular as informações relevantes.


##  Diagrama EER do modelo fisico

- [Diagrama do Modelo Físico](https://github.com/1GM1910/Banco-de-Dados-Universidade/blob/main/db_universidade/Diagrama%20EER%20-%20Modelo%20Fisico.mwb)

![Diagrama do Modelo Físico](https://github.com/1GM1910/Banco-de-Dados-Universidade/blob/main/diagramas/MODELO%20FISICO.png)

**Destaques:**
- Organização eficaz das entidades.
- Relacionamentos claramente definidos.
- Restrições configuradas para garantir integridade.

Este modelo físico é a tradução prática do projeto conceitual, oferecendo uma visão clara da arquitetura do banco de dados implementada.


**Tecnologias Utilizadas**


   - [MySQL](https://www.mysql.com/) - Sistema de gerenciamento de banco de dados relacional amplamente utilizado


   - [Draw.io](https://www.draw.io/) - Ferramenta online para criação de diagramas e fluxogramas. 

## Considerações finais

Certamente, ao concluir este projeto, sinto-me extremamente gratificado pela oportunidade de aplicar os conhecimentos sólidos que adquiri ao longo do meu percurso acadêmico na Escola SENAI. O desenvolvimento deste banco de dados não apenas consolidou minha compreensão teórica, mas também proporcionou um ambiente prático para aprimorar habilidades cruciais em modelagem, normalização e implementação de sistemas relacionais.

Durante esse processo, explorei e desenvolvi competências essenciais para projetar e implementar sistemas de banco de dados de maneira eficaz. Compreendi profundamente a importância da estruturação adequada, reconhecendo que a flexibilidade é a chave para a adaptação a diferentes demandas e a eficácia no armazenamento e recuperação de dados.
Este projeto não apenas representa uma etapa significativa no meu percurso educacional, mas também destaca meu comprometimento com a excelência na área de banco de dados. Estou confiante de que as habilidades aprimoradas ao longo deste processo serão fundamentais em minha jornada profissional, contribuindo para futuros desafios e projetos.



