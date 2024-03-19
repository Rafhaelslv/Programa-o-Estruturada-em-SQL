
--Dado um número inteiro. Calcule e mostre o seu fatorial. (Não usar entrada superior a 12)
DECLARE @num1 INT, @FAT INT, @AUX INT
SET @num1 = 5
SET @FAT = 1
SET @AUX = @num1

WHILE (@AUX > 0)
BEGIN
SET @FAT = @FAT * @AUX
SET @AUX = @AUX - 1

END
PRINT @FAT

--Dados A, B, e C de uma equação do 2o grau da fórmula AX2+BX+C=0. Verifique e mostre a
--existência de raízes reais e se caso exista, calcule e mostre. Caso não existam, exibir mensagem.
DECLARE 	@a INT,
		@b INT,
		@c INT,
		@x1 DECIMAL(7, 2),
		@x2 DECIMAL(7, 2),
		@d DECIMAL(7,2)
SET @a = 2
SET @b = 3
SET @c = 5
SET @d = @b*@b - 4 * @a * @c
IF (@d > 0)
BEGIN 
	SET @x1 = (-@b + SQRT(@d)) / 2 * @a
	SET @x2 = (-@b - SQRT(@d)) / 2 * @a
	PRINT @x1
	PRINT @x2
END
ELSE
BEGIN
	PRINT 'Delta menor que zero!'
END




--Calcule e mostre quantos anos serão necessários para que Ana seja maior que Maria sabendo
--que Ana tem 1,10 m e cresce 3 cm ao ano e Maria tem 1,5 m e cresce 2 cm ao ano.
DECLARE @ana real , @maria real, @ano INT
SET @ana = 1.10
SET @maria  = 1.50
SET @ano = 0

WHILE (@ana < @maria)
BEGIN
SET @ana = @ana + 0.03
SET @maria = @maria + 0.02
SET @ano = @ano + 1
END
PRINT @ano


--Seja a seguinte série: 1, 4, 4, 2, 5, 5, 3, 6, 6, 4, 7, 7, ...

DECLARE @num INT, @cont INT, @numx INT
SET @num = 1
SET @numx = 4
SET @cont = 1

WHILE(@cont < 10)
BEGIN
	IF (@cont % 2 = 1)
	BEGIN
		PRINT @num
		SET @num = @num + 1
		SET @cont = @cont + 1
	END
	ELSE
	BEGIN
		SET @cont = @cont + 1
		PRINT @numx
		PRINT @numx
		SET @numx = @numx + 1
	END

END

--Considerando a tabela abaixo, gere uma massa de dados, com 50 registros, para fins de teste
--com as regras estabelecidas (Não usar constraints na criação da tabela)

CREATE TABLE PRODUTO(
codigo				int				NOT NULL IDENTITY(50001, 1),
nome				varchar(30)		NOT NULL,
valor				decimal(7,2)	NOT NULL,
vencimento			date			NOT NULL
)

DECLARE @cod_produto		INT,
		@nome_produto		VARCHAR(30),
		@valor_produto		decimal(7,2),
		@vencimento_produto date,
		@id_produto			INT
SET @id_produto = 1
SET @id_produto = (SELECT @cod_produto FROM PRODUTO WHERE nome = @id_produto)
PRINT @cod_produto
PRINT @nome_produto
