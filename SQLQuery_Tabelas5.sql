use asmadb
---------------------------------------------------------------------------------
select * from tb_sexo
--sexo_cod	sexo_desc
--1			Masculino 
--2			Feminino  

select * from tb_faixa
--FE_Cod	FE_Desc
--1			Menor 1 ano                   
--2			1 a 4 anos                    
--3			5 a 9 anos                    
--4			10 a 14 anos                  
--5			15 a 19 anos                  
--6			20 a 29 anos                  
--7			30 a 39 anos                  
--8			40 a 49 anos                  
--9			50 a 59 anos                  
--10		60 a 69 anos                  
--11		70 a 79 anos                  
--12		80 anos e mais   

-- Consultando todos os Atendimentos 
SELECT * FROM atendimentos


-- Consulta por Faixa Etária e Sexo
SELECT * FROM atendimentos where atd_tipo_atend = 2 and atd_sexo = 2 and atd_faixa_etaria = 12 order by atd_mes asc

-- Qual o Valor de Conta Mais Alto em 2019
select * from atendimentos order by atd_valor_total desc

-- Quantidade de Registros de Internações Eletivas 
select count(atd_tipo_atend) as total_eletiva from atendimentos where atd_tipo_atend = 1

-- Quantidade de Registros de Internações Emergência 
select count(atd_tipo_atend) as total_eletiva from atendimentos where atd_tipo_atend = 2

-- Total de Internações Eletivas
select sum(atd_qtd_internacoes) as total_int from atendimentos where atd_tipo_atend = 1

-- atd_id	atd_ano	atd_mes	atd_faixa_etaria	atd_sexo	atd_tipo_atend	atd_uf	atd_qtd_internacoes	atd_aih_aprovadas	atd_valor_total	atd_valor_servicos_hosp	atd_valor_servicos_prof	atd_valor_medio_aihAIH	atd_valor_medio_internacao	atd_qtd_dias_permanencia	atd_media_permanencia	atd_qtd_obitos	atd_taxa_mortalidade
-- 1	2019	12	1	1	1	11	0	0	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0.00



-- Total de Internações Emergência 
select sum(atd_qtd_internacoes) as total_int from atendimentos where atd_tipo_atend = 2

-- Total de obitos internações eletivas 
select sum(atd_qtd_obitos) as total_int from atendimentos where atd_tipo_atend = 1

-- Total de obitos internações emergência 
select sum(atd_qtd_obitos) as total_int from atendimentos where atd_tipo_atend = 2

-- Valor Total de Contas de Internações Eletivas 
select sum(atd_valor_total) as total_int from atendimentos where atd_tipo_atend = 1

-- Valor Total de Contas de Internações Urgência 
select sum(atd_valor_total) as total_int from atendimentos where atd_tipo_atend = 2

-- Valor Total Geral de Contas de Internações 
select sum(atd_valor_total) as total_int from atendimentos

-- tempo médio de ocupação 
select sum(atd_valor_total) as total_int from atendimentos


-- Tabela de faixa etária
select * from tb_faixa
-- FE_Cod	FE_Desc
-- 1	Menor 1 ano    

select * from tb_sexo
-- sexo_cod	sexo_desc
-- 1	Masculino 

select * from tb_tipo_atend
-- tp_cod	tp_desc
-- 1	Eletivo             

select * from tb_uf

-- UF_Cod	UF_Desc					UF_Sigla

update tb_uf set UF_Sigla = 'EX' where UF_Cod = 0
update tb_uf set UF_Sigla = 'RO' where UF_Cod = 11
update tb_uf set UF_Sigla = 'AC' where UF_Cod = 12
update tb_uf set UF_Sigla = 'AM' where UF_Cod = 13
update tb_uf set UF_Sigla = 'RR' where UF_Cod = 14
update tb_uf set UF_Sigla = 'PA' where UF_Cod = 15
update tb_uf set UF_Sigla = 'AP' where UF_Cod = 16
update tb_uf set UF_Sigla = 'TO' where UF_Cod = 17
update tb_uf set UF_Sigla = 'MA' where UF_Cod = 21
update tb_uf set UF_Sigla = 'PI' where UF_Cod = 22
update tb_uf set UF_Sigla = 'CE' where UF_Cod = 23
update tb_uf set UF_Sigla = 'RN' where UF_Cod = 24
update tb_uf set UF_Sigla = 'PB' where UF_Cod = 25
update tb_uf set UF_Sigla = 'PE' where UF_Cod = 26
update tb_uf set UF_Sigla = 'AL' where UF_Cod = 27
update tb_uf set UF_Sigla = 'SE' where UF_Cod = 28
update tb_uf set UF_Sigla = 'BA' where UF_Cod = 29
update tb_uf set UF_Sigla = 'MG' where UF_Cod = 31
update tb_uf set UF_Sigla = 'ES' where UF_Cod = 32
update tb_uf set UF_Sigla = 'RJ' where UF_Cod = 33
update tb_uf set UF_Sigla = 'SP' where UF_Cod = 35
update tb_uf set UF_Sigla = 'PR' where UF_Cod = 41
update tb_uf set UF_Sigla = 'SC' where UF_Cod = 42
update tb_uf set UF_Sigla = 'RS' where UF_Cod = 43
update tb_uf set UF_Sigla = 'MS' where UF_Cod = 50
update tb_uf set UF_Sigla = 'MT' where UF_Cod = 51
update tb_uf set UF_Sigla = 'GO' where UF_Cod = 52
update tb_uf set UF_Sigla = 'DF' where UF_Cod = 53

select * from tb_mes

insert into tb_mes (mes_cod, mes_desc) values (1, 'Jan')
insert into tb_mes (mes_cod, mes_desc) values (2, 'Fev')
insert into tb_mes (mes_cod, mes_desc) values (3, 'Mar')
insert into tb_mes (mes_cod, mes_desc) values (4, 'Abr')
insert into tb_mes (mes_cod, mes_desc) values (5, 'Mai')
insert into tb_mes (mes_cod, mes_desc) values (6, 'Jun')
insert into tb_mes (mes_cod, mes_desc) values (7, 'Jul')
insert into tb_mes (mes_cod, mes_desc) values (8, 'Ago')
insert into tb_mes (mes_cod, mes_desc) values (9, 'Set')
insert into tb_mes (mes_cod, mes_desc) values (10, 'Out')
insert into tb_mes (mes_cod, mes_desc) values (11, 'Nov')
insert into tb_mes (mes_cod, mes_desc) values (12, 'Dez')

-- mes_cod	mes_desc
-- 1		Jan       

update tb_mes set mes_ordem = '01 Jan' where mes_cod = 1
update tb_mes set mes_ordem = '02 Fev' where mes_cod = 2
update tb_mes set mes_ordem = '03 Mar' where mes_cod = 3
update tb_mes set mes_ordem = '04 Abr' where mes_cod = 4
update tb_mes set mes_ordem = '05 Mai' where mes_cod = 5
update tb_mes set mes_ordem = '06 Jun' where mes_cod = 6
update tb_mes set mes_ordem = '07 Jul' where mes_cod = 7
update tb_mes set mes_ordem = '08 Ago' where mes_cod = 8
update tb_mes set mes_ordem = '09 Set' where mes_cod = 9
update tb_mes set mes_ordem = '10 Out' where mes_cod = 10
update tb_mes set mes_ordem = '11 Nov' where mes_cod = 11
update tb_mes set mes_ordem = '12 Dez' where mes_cod = 12


select * from atendimentos where atd_qtd_internacoes > 0

-- Dataset asma internacoes.csv
select 
atd_mes as 'Mes', 
atd_faixa_etaria as 'Faixa_Etaria', 
atd_sexo as 'Genero', 
atd_tipo_atend as 'Tipo', 
atd_uf as 'Uf', 
atd_qtd_internacoes as 'Internacoes',
atd_qtd_dias_permanencia as 'Dias_Permanencia',
atd_qtd_obitos as 'Nr_Obito'
from atendimentos 
where atd_qtd_internacoes > 0

-- Mes	Faixa_Etaria	Genero	Tipo	Uf	Internacoes	Dias_Permanencia	Nr_Obito
-- 12	1	1	1	16	2	10.00	0

select 
atd_mes as 'Mes', 
atd_faixa_etaria as 'Faixa_Etaria', 
atd_sexo as 'Genero', 
atd_tipo_atend as 'Tipo', 
atd_uf as 'Uf', 
atd_qtd_internacoes as 'Internacoes',
atd_qtd_dias_permanencia as 'Dias_Permanencia',
atd_qtd_obitos as 'Nr_Obito'
from atendimentos 
where atd_qtd_internacoes > 0 and atd_tipo_atend = 1


select 
atd_mes as 'Mes', 
atd_faixa_etaria as 'Faixa_Etaria', 
case atd_sexo
	when 1 then 0
	when 2 then 1
end as 'Genero', 
atd_uf as 'Uf', 
atd_qtd_internacoes as 'Internacoes',
atd_qtd_dias_permanencia as 'Dias_Permanencia',
case atd_tipo_atend
	when 1 then 0
	when 2 then 1
end as 'Tipo'
from atendimentos 
where atd_qtd_internacoes > 0 
-- and atd_tipo_atend = 1

-- Mes	Faixa_Etaria	Genero	Uf	Internacoes	Dias_Permanencia	Tipo
-- 12	1	0	16	2	10.00	0















