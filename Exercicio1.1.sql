-- A) Criar a seguinte tabela:



create table veiculos

(Placa  Char(7),
Modelo varchar(40),
Fabricante varchar(20),
Ano int,
Cor varchar(20),
Combustível varchar(20),
Preço numeric(10,2),
constraint pk_pla primary key (Placa));

select * from veiculos;





-- B) inserir registros:

insert into veiculos values
('MUB2752','HOVER CUV 2.4 16V 4WD 5p Mec.','GREAT WALL',2007,'Preto','Disel',500000.00),
('JJI3658','Gallardo Spider LP560-4 ','LAMBORGHINI', 2009, 'Vermelho', 'GasolinaATV', 8000.00),
('MVF0777','MINI STAR CE 1.0 8V 53cv (Pick-Up)','CHANGAN',2011,'Cinza','Gasolina', 124820.00),
('MQI9306','MG6 1.8 16V Turbo 170cv Aut.','MG', 2011, 'Marrom', 'Etanol', 6458.00),
('JGG9286','GC2 1.0 12V 68cv 5p','GEELY', 2015, 'Amarelo', 'Dual-Flex', 346198.00),
('NIC0712','GOLF GTI MK7 2.0 16V 143CV','VOLKSWAGEN',2017,'VERMELHO','GASOLINA',110000.00),
('THC0420','CIVIC EX MT. 1.6 16V V-TEC 127CV','HONDA',2000,'PRETO','GASOLINA',15000.00),
('PJL0000','FOCUS GL MT 1.6 8V Z-TEC 113CV','FORD',2008,'PRETO','GASOLINA', 17000.00),
('TIT6969','AUDI RS3 3.6 20V 430CV','AUDI',2018,'BRANCO','GASOLINA', 300000.00),
('OVO2424','C3 1.6 8V 105CV','CITROËN',2004,'ROSA','FLEX',15000.00);


 -- C) Selecionar todos os veículos com modelo iniciado pela letra ‘F’

 select * from VEICULOS where Fabricante like 'F%';


 -- D) Selecionar todos os veículos  de ano entre 2000 e 2008
 
 select * from veiculos where Ano between 2000 and 2008
 
 
 -- E) Selecionar todos de combustível FLEX
 
 select * from veiculos where Combustível= 'Flex'
 
 -- F) Selecionar todos do fabricante GM com ano superior a 2001
 
  select * from veiculos where Fabricante = 'GM' and Ano > 2001
 
-- g)	Qual a média de preço dos veículos;

	select Avg(PREÇO) AS 'media' from veiculos;
 
--h)	Qual o valor do veículo mais caro;
		select MAX(preço) as 'maior' from veiculos;
	
--i)	Qual o valor do veículo mais barato;
		select MIN (PREÇO) AS 'menor' from veiculos; 

--j)	Acrescentar um aumento de 10% para todos os veículos do fabricante FIAT;
		update veiculos set Preço=Preço*0.9
				where Modelo= 'MG6 1.8 16V Turbo 170cv Aut.';
		

--k)	Quantos veículos prata temos no cadastro?
		SELECT COUNT(*)AS 'qtde' FROM veiculos
				WHERE Cor='prata'; 

 
--l)	Qual o somatório dos preços?

 select SUM (Preço) as 'total' from veiculos;


 -- M) Excluir do cadastro todos os veículos com ano inferior a 1985
 
 delete from veiculos where Ano < 2001

 -- N) Selecionar todos dos fabricantes: GM, FORD e TOYOTA
 
 select * from veiculos where Fabricante in ('GM', 'FORD', 'TOYOTA')
 
 -- O) Listar todos os fabricantes, sem duplicidade
 
 select distinct fabricante from veiculos  

