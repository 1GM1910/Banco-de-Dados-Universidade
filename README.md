# Banco-de-Dados-Universidade


## Sobre o projeto

O banco de dados, intitulado 'db_universidade', abrange uma variedade de entidades cruciais, como faculdades, departamentos, disciplinas, cursos, funcionários e alunos, proporcionando uma estrutura sólida para a gestão eficiente de informações acadêmicas.

### Características Principais

**-Relacionamentos Complexos:**
O projeto incorpora relacionamentos muitos para muitos, modelando de maneira precisa a interação entre disciplinas, cursos, departamentos, funcionários e alunos, essenciais para uma gestão acadêmica abrangente.

**-Integridade Referencial:**
Utilizando chaves primárias e estrangeiras, o banco de dados mantém a integridade referencial, garantindo a consistência dos dados e evitando inconsistências.

**-Detalhamento Abrangente:**
Além das entidades principais, tabelas específicas foram criadas para armazenar informações detalhadas, como endereços, contatos e documentos, oferecendo uma visão holística dos funcionários e alunos associados à instituição.

### Modelagem do Banco de Dados

Nesta demonstração breve, apresentarei a estrutura de modelegem do banco de dados voltado para a gestão acadêmica. Inicialmente, destacaremos tabelas essenciais. Em seguida, exploraremos o Modelo Conceitual para visualizar as relações entre essas entidades.
No Modelo Lógico, transformaremos as entidades em tabelas, estabelecendo relacionamentos através de chaves estrangeiras. Essa etapa fornece uma visão mais detalhada da estrutura do banco de dados.
Por fim, abordaremos o Modelo Normalizado, otimizando a eficiência da gestão de dados. Cada tabela é refinada para atender aos padrões da Terceira Forma Normal (3NF), eliminando redundâncias e garantindo integridade referencial.

# Modelagem do Banco de Dados: Demonstração

## Tabelas do Banco de Dados:

| Tabela       | Descrição                                                                                      |
|--------------|-----------------------------------------------------------------------------------------------|
| faculdade    | Informações sobre as faculdades, incluindo um identificador único e o nome da faculdade.       |
| departamento | Detalhes dos departamentos, com informações sobre o responsável, localização e contato.         |
| disciplina   | Armazena dados das disciplinas acadêmicas, incluindo carga horária, descrição e curso associado.|
| curso        | Informações sobre os cursos oferecidos, com referência à disciplina associada.                  |
| funcionario  | Detalhes dos membros da equipe, incluindo nome, título acadêmico e afiliação a departamentos.  |
| aluno        | Informações sobre estudantes, incluindo nome, curso associado e status acadêmico.               |

## Modelo Conceitual:

![Modelo Conceitual](https://github.com/1GM1910/Banco-de-Dados-Universidade/blob/main/diagramas/MODELO_CONCEITUAL.drawio.png?raw=true)

**Descrição do Modelo Conceitual:**
O modelo conceitual representa as principais entidades do sistema e seus relacionamentos. Facilita a compreensão da estrutura geral do banco de dados, destacando as conexões entre faculdades, departamentos, disciplinas, cursos, funcionários e alunos.

## Modelo Lógico:

![Modelo Lógico](link_para_a_imagem_logico)

**Descrição do Modelo Lógico:**
No modelo lógico, as entidades são convertidas em tabelas, e os relacionamentos são definidos por meio de chaves estrangeiras. Este modelo fornece uma visão mais detalhada da estrutura do banco de dados, destacando as tabelas e suas associações.

## Modelo Normalizado:

![Modelo Normalizado](link_para_a_imagem_normalizado)

**Descrição do Modelo Normalizado:**
O modelo normalizado reflete um banco de dados otimizado, livre de redundâncias e dependências transitivas. Cada tabela está na Terceira Forma Normal (3NF), garantindo eficiência na gestão de dados e preservando a integridade referencial.

Estas representações fornecem uma visão abrangente da estrutura, relacionamentos e eficiência do banco de dados desenvolvido para atender às demandas específicas do contexto acadêmico.

