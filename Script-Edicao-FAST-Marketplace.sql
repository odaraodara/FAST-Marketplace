-- FAST_Marketplace.Data_Updates


-- atualizando o salário de um dos funcionários

update pessoa set Salario = 3100.00 where cpf = 95248131920;


-- aumentar o salário de todos os funcionários que tem o cargo de Desenvolvedor(a) Web em 10%

update pessoa p 
inner join pessoa_funcao pf on p.CPF = pf.CPF_pessoa 
inner join funcao f on pf.ID_funcao = f.ID_funcao 
set p.Salario = p.Salario * 1.1
where f.Nome_funcao = "Desenvolvedor(a) Web";


-- conferir o ID de um produto e deletar o mesmo da tabela de produtos 

select * from produto;

delete from produto where ID_produto = 6;



