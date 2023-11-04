-- FAST_Marketplace.Data_Selections


-- mostrando tabela de pessoas / média de salário / pessoas que ganham acima da média / pessoa com o maior salário
select * from pessoa;

select AVG(Salario) as `Salario_Medio` from pessoa;

select Nome, Salario from pessoa where Salario > (select AVG(Salario) from pessoa);

select Nome, Salario from pessoa where Salario = (select MAX(Salario) from pessoa);


-- mostrando tabela de formação / filtro para curso superior / filtro para curso superior de Ciência da Computação

select * from formacao;

select * from formacao where grau = "superior";

select * from formacao where grau = "superior" and curso = "Ciência da Computação";


-- mostrando tabela de produtos / filtro para produtos que comecem com o nome "mouse"

select * from produto;

select Nome_produto , Marca, Valor from produto where Nome_produto like "mouse %";


-- Junção de tabelas

-- Pessoa / Formação / Função

select p.Nome, f.Curso, f.Instituicao,fu.Nome_funcao as `Função` from pessoa p 
inner join pessoa_formacao pf on p.CPF = pf.CPF_pessoa 
inner join formacao f on pf.ID_formacao  = f.ID_formacao 
inner join pessoa_funcao pfu on p.CPF = pfu.CPF_pessoa 
inner join funcao fu on pfu.ID_funcao = fu.ID_funcao;


-- Função / Departamento
select f.nome_funcao as Função,f.descricao as Descrição_Função, d.nome_departamento as Departamento, d.descricao as Descrição_Departamento
from funcao f
left outer join funcao_departamento fd on f.ID_funcao = fd.ID_funcao 
left outer join departamento d on fd.ID_departamento = d.ID_departamento; 

