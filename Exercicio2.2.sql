CREATE TABLE PRODUTOS
(Codprod	int,
Descrição	varchar(20),
Preco		numeric(9,2),
Qtde		int,
Cor		char(20),

CONSTRAINT PK_PROD PRIMARY KEY(Codprod));

insert into PRODUTOS VALUES
(12345,'CHOCOLATE',5.99,150,'AZUL'),
(23487,'AMACIANTE',15.50,30,'AMARELO'),
(97854,'PEPSI',3.00,4,'VERMELHO'),
(13647,'PAO',2.50,90,'AMARELO'),
(46235,'ROUPAS',60.00,7,'PRETO'),
(47813,'CELULAR',1499.90,2,'BRANCO'),
(71325,'FINI',5.00,40,'ROSA'),
(41587,'AGUA',2.00,13,'AZUL'),
(13158,'ALVEJANTE',7.99,45,'CINZA'),
(79879,'CARNE',19.90,60,'VERMELHO');

SELECT *FROM PRODUTOS 

DELETE *FROM PRODUTOS

--Excluir todos os produtos com qtde abaixo de 5;
DELETE *FROM PRODUTOS WHERE Qtde < 5;

--Listar  as cores sem duplicidade
SELECT DISTINCT COR FROM PRODUTOS;

--Selecionar todos os produtos de cor Azul, vermelho, branco e preto.
SELECT *FROM PRODUTOS WHERE Cor IN('AZUL','VERMELHO','BRANCO','PRETO');

--Listar todos os produtos que tem descrição iniciado em ‘A’.
SELECT *FROM PRODUTOS WHERE Descrição LIKE 'A%';

--Quantos produtos temos no cadastro?
SELECT COUNT(*) AS 'PRODUTOS' FROM PRODUTOS;

--Selecionar os produtos com preço entre 10 e 50 reais.
SELECT *FROM PRODUTOS WHERE Preco BETWEEN 10 AND 50;

--Qual o valor do produto mais caro?
SELECT MAX(PRECO) AS 'MAIOR' FROM PRODUTOS;

--Qual o valor do produto mais barato?
SELECT MIN(PRECO) AS 'MENOR'FROM PRODUTOS;

--Qual a média de preços?
SELECT AVG(PRECO) AS 'MEDIA' FROM PRODUTOS;

--Quantos produtos vermelhos temos no cadastro?
SELECT COUNT(*) AS 'QTDE' FROM PRODUTOS
       WHERE Cor='VERMELHO';

--Atualizar o preço dos produtos com preço abaixo de 10.00 acrescentando 15%;
UPDATE PRODUTOS SET Preco = Preco*1.15
       WHERE Preco < 10.00; 

--Atualizar o preço dos produtos com preço acima de 500.00 com um desconto de 5%
UPDATE PRODUTOS SET Preco = Preco*0.95
       WHERE Preco > 500.00;

--Qual o somatório das quantidades?
SELECT SUM(QTDE) AS 'QTDE' FROM PRODUTOS;





