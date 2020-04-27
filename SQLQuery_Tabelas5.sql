use asmadb

---------------------------------------------------------------------------------
-- Consultando todos os Atendimentos 

SELECT * FROM atendimentos

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

-- Consulta por Faixa Etária e Sexo
SELECT * FROM atendimentos where atd_faixa_etaria = 1 and atd_sexo = 2 order by atd_mes asc

