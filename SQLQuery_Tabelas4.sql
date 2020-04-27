use asmadb

-- Tab atendimentos 

-- atd_ano						int
-- atd_mes						int
-- atd_faixa_etaria			int
-- atd_sexo					nchar M ou F
-- atd_uf						int
-- atd_qtd_internacoes			double
-- atd_aih_aprovadas			double
-- atd_valor_total				double
-- atd_valor_servicos_hosp		double
-- atd_valor_servicos_prof     double
-- atd_valor_medio_aihAIH		double
-- atd_valor_medio_internacao  double
-- atd_qtd_dias_permanencia    double
-- atd_media_permanencia       double
-- atd_qtd_obitos              double
-- atd_taxa_mortalidade        double

CREATE TABLE atendimentos (
	atd_id						INT				PRIMARY KEY IDENTITY (1, 1),
    atd_ano						INT				NOT NULL,
	atd_mes						INT				NOT NULL,
	atd_faixa_etaria			INT				NOT	NULL,
	atd_sexo					INT				NOT NULL,
	atd_tipo_atend				INT				NOT NULL,
	atd_uf						INT				NOT NULL,
	atd_qtd_internacoes			INT				NOT NULL,
	atd_aih_aprovadas			INT				NOT NULL,
	atd_valor_total				DECIMAL(12,2)	NOT NULL,
	atd_valor_servicos_hosp		DECIMAL(12,2)	NOT NULL,
	atd_valor_servicos_prof		DECIMAL(12,2)	NOT NULL,
	atd_valor_medio_aihAIH		DECIMAL(12,2)   NOT NULL,
	atd_valor_medio_internacao  DECIMAL(12,2)	NOT NULL,
	atd_qtd_dias_permanencia    DECIMAL(12,2)	NOT NULL,
	atd_media_permanencia       DECIMAL(12,2)	NOT NULL,
	atd_qtd_obitos              INT				NOT NULL,
	atd_taxa_mortalidade		DECIMAL(12,2)	NOT NULL,
	FOREIGN KEY (atd_faixa_etaria)	REFERENCES	dbo.tb_faixa		(FE_Cod),
	FOREIGN KEY (atd_sexo)			REFERENCES	dbo.tb_sexo			(sexo_cod),
	FOREIGN KEY (atd_uf)			REFERENCES	dbo.tb_uf			(UF_Cod),
	FOREIGN KEY (atd_tipo_atend)	REFERENCES	dbo.tb_tipo_atend	(tp_cod)
);

----------------------------------------------------------------

CREATE TABLE tb_sexo (
	sexo_cod	INT			PRIMARY KEY,
	sexo_desc	NCHAR(10)	NOT NULL
);

insert into tb_sexo (sexo_cod, sexo_desc) values (1, 'Masculino');
insert into tb_sexo (sexo_cod, sexo_desc) values (2, 'Feminino');

select * from tb_sexo




SELECT * FROM atendimentos

select * from tb_faixa

select * from tb_sexo

select * from tb_uf

insert into tb_uf (UF_Cod, UF_Desc) values (00, 'Ignorado/exterior');

delete from tb_uf where UF_Cod = 99

INSERT INTO asmadb.dbo.atendimentos 
(atd_ano, atd_mes, atd_faixa_etaria, atd_sexo, atd_uf, atd_qtd_internacoes, 
atd_aih_aprovadas, atd_valor_total, atd_valor_servicos_hosp, 
atd_valor_servicos_prof, atd_valor_medio_aihAIH, atd_valor_medio_internacao, 
atd_qtd_dias_permanencia, atd_media_permanencia, atd_qtd_obitos, 
atd_taxa_mortalidade) VALUES (2019, 12, 1, 'M', 11 , 1, 1, 1, 23.45, 1234.56, 234.90, 2, 5, 45.23, 2, 1)

SELECT * FROM atendimentos where atd_faixa_etaria = 12 order by atd_mes asc

-- Pesquisando a quantidade de internações por UF

select u.UF_Desc, a.atd_qtd_internacoes from atendimentos as a
left join tb_uf as u on u.UF_Cod = a.atd_uf

delete from atendimentos

-- Resetar o Indice
DBCC CHECKIDENT (atendimentos, reseed, 0);

drop table atendimentos

--------------------------------------------------------

insert into tb_tipo_atend (tp_cod, tp_desc) values (1, 'Eletivo');
insert into tb_tipo_atend (tp_cod, tp_desc) values (2, 'Urgência');

select * from tb_tipo_atend

select * from tb_sexo

delete from tb_sexo

drop table tb_sexo

---------------------------------------------------------------------------------
-- Consultando todos os Atendimentos 

SELECT * FROM atendimentos

SELECT * FROM atendimentos where atd_faixa_etaria = 12 order by atd_mes asc










