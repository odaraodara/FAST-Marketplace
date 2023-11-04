-- FAST_Marketplace.Data_Insertion

-- Inserindo dados da tabela Pessoa:

insert into pessoa (CPF,Nome,Data_Nascimento,Salario) values 
("26849375192","Débora Luz Carvalho","1988-07-05",3200.00),
("17223343516","Renato Santos Rocha", "1983-11-03",2850.00),
("72075148135","Maria Juliana Rezende", "1960-04-18",3500.00),
("95248131920","Pedro Mendes Filho", "1992-09-30",2850.00),
("68533306351", "Maria Luiza Rocha", "1996-05-11",3000.00)


-- Inserindo dados da tabela Departamento:

insert into departamento (Nome_departamento,Descricao) values
("Operações de Varejo","Responsável por todas as atividades operacionais diárias que ocorrem na loja."),
("Financeiro","Responsável pelas finanças da empresa, incluindo contabilidade, folha de pagamento e gestão de receitas e despesas."),
("Tecnologia","Responsável pelo desenvolvimento e manutenção da plataforma online do marketplace."),
("Marketing","Encarregado de promover os produtos e serviços oferecidos no marketplace e atrair mais clientes."),
("Logística","Gerencia a logística de armazenamento e entrega dos produtos vendidos no marketplace.")


-- Inserindo dados da tabela Função:

insert into funcao (Nome_funcao,Descricao) values
("Caixa", "Responsável por processar transações financeiras e fornecer atendimento ao cliente durante o pagamento"),
("Analista Financeiro", "Coleta e analisa dados financeiros, auxilia na gestão de orçamento e despesas"),
("Desenvolvedor(a) Web", "Cria e mantém a presença online da empresa, desenvolvendo sites e aplicativos."),
("Suporte Técnico","Resolve problemas técnicos e fornece suporte em questões de tecnologia."),
("Supervisor de Estoque","Coordena a gestão do estoque, monitora o fluxo de mercadorias e garante organização.")


-- Inserindo dados da tabela Funcão_Departamento:

insert into funcao_departamento (ID_funcao, ID_departamento) values 
(10,1),
(11,2),
(12,3),
(13,3),
(14,5)


-- Inserindo dados da tabela Pessoa_Função:

insert into pessoa_funcao (CPF_pessoa, ID_funcao) values
("26849375192", 14),
("17223343516", 13),
("72075148135", 11),
("95248131920", 12),
("68533306351", 12)


-- Inserindo dados da tabela Pessoa_Departamento:

insert into pessoa_departamento (CPF_pessoa, ID_departamento) values 
("26849375192",5),
("17223343516",3),
("72075148135",2),
("95248131920",3),
("68533306351",3)


-- Inserindo dados da tabela Formação:

insert into formacao (Grau,Curso,Instituicao) values
("Técnico", "Gestão de Varejo", "Senac-PE"),
("Superior","Ciências Contábeis","UNICAP"),
("Superior","Ciência da Computação","UFPE"),
("Superior","Ciência da Computação","CESAR School"),
("Técnico", "Suporte de TI","Senac-SP"),
("Técnico", "Gestão de Estoque", "Senac-SP")


-- Inserindo dados da tabela Pessoa_Formação:

insert into pessoa_formacao (CPF_pessoa,ID_formacao) values 
("26849375192",6),
("17223343516",5),
("72075148135",2),
("95248131920",3),
("68533306351",4)

-- Inserindo dados da tabela Loja:

insert into loja (Nome_loja,Rua,Bairro,Cidade,Numero,CEP,Complemento) values 
("FAST Marketplace Caxangá","Rua das Lajotas", "Caxangá","Recife", 13,"30123-456","Sala 01"),
("FAST Marketplace Massangana","Rua Pétala","Massangana", "Jaboatão dos Guararapes",255,"54321-987","Térreo"),
("FAST Marketplace Casa Caiada","Rua do Tempo","Casa Caiada","Olinda",88,"98765-432","Loja 3")


-- Inserindo dados da tabela Pessoa_Loja:

insert into pessoa_loja (CPF_pessoa,ID_loja) values 
("26849375192",1),
("17223343516",3),
("72075148135",1),
("95248131920",3),
("68533306351",3)


-- Inserindo dados da tabela Categoria_Produto: 

insert into categoria_prod (Nome_categoria) values 
("Computadores"),
("Notebooks"),
("Impressoras"),
("Periféricos"),
("Jogos")

-- Inserindo dados da tabela Produto:

insert into produto (Nome_produto,Valor,Marca,Descricao) values 
("Mouse com fio USB",29.99,"Logitech","M90 com Design Ambidestro e Facilidade Plug and Play"),
("Mouse sem Fio",62.99,"Logitech","M170 com Design Ambidestro Compacto, Pilha Inclusa e Preto"),
("Impressora Multifuncional",1061.91,"Epson","Ecotank L3250 - Tanque de Tinta Colorida USB Wi-Fi"),
("Notebook Gamer Acer Nitro 5 ",3779.10,"Acer","Intel Core i5 8GB - 512GB SSD 15,6” Full HD IPS NVidia GTX 1650 4GB"),
("Notebook Dell Inspiron 15",4049.10,"Dell","Intel Core i5 16GB - 512GB SSD 15,6” Full HD Windows 11"),
("Teclado Multimídia",92.07,"Dell","ABNT2 108 teclas")


-- Inserindo dados da tabela Produto_Categoria_Produto:

insert into produto_categoria_produto (ID_produto,ID_categoria) values 
(1,4),
(2,4),
(3,3),
(4,2),
(5,2)


-- Inserindo dados da tabela Produto_Loja:

insert into produto_loja (ID_produto,ID_loja) values 
(1,1),
(1,2),
(1,3),
(2,1),
(2,2),
(3,1),
(3,2),
(3,3),
(4,3),
(5,3)


-- Inserindo dados da tabela Loja_Departamento:
insert into loja_departameto  (ID_loja,ID_Departamento) values 
(1,1),
(2,1),
(3,1),
(1,2),
(2,2),
(3,2),
(1,3),
(2,3),
(3,3),
(1,4),
(2,4),
(3,4),
(1,5),
(2,5),
(3,5)







