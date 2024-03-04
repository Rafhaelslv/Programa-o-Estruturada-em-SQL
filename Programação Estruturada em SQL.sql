--EXERC 01
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

-- EXERC 04 
--Seja a seguinte série: 1, 4, 4, 2, 5, 5, 3, 6, 6, 4, 7, 7, ...

DECLARE @num INT, @cont INT, @numx INT
SET @num = 1
SET @numx = 4
SET @cont = 0

WHILE(@cont < 10)
BEGIN
	IF (@cont % 3 = 0)
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