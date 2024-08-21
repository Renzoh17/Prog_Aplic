GO

DROP TABLE IF EXISTS Alumnos

GO

CREATE TABLE Alumnos( --DECLARE @Alumnos TABLE
    ID INT PRIMARY KEY IDENTITY(1,1), 
    NOMBRE NVARCHAR(50) NOT NULL,
    LU INT UNIQUE NOT NULL,
    NOTA DECIMAL(18,2) NOT NULL DEFAULT 0
);

GO

INSERT INTO Alumnos (LU, NOMBRE, NOTA)
VALUES(2342, 'Anibal', 45.00),(2343, 'Camila', 85.50),(2333, 'Cecilia', 60.60),(2337, 'Nelson', 75.70),(2589, 'Jose', 85.90),(2902, 'Jose Manuel', 85.20);

GO

DROP PROCEDURE IF EXISTS SP_Aprobados;

GO

-- CREATE PROCEDURE SP_Aprobados(
--     @NOTA DECIMAL(18,2)
-- )
-- AS
-- BEGIN
-- SELECT * FROM Alumnos WHERE NOTA>=@NOTA
-- ORDER BY LU DESC;
-- END

GO

-- EXEC SP_Aprobados @NOTA=75

GO

DECLARE @Promedio DECIMAL(18,2) = 0
SELECT @Promedio = AVG(NOTA) FROM Alumnos
--PRINT 'Promedio: ' + CONVERT(NVARCHAR(50),@Promedio)

SELECT * FROM Alumnos WHERE NOTA>=@Promedio
ORDER BY LU DESC;

GO

DECLARE @Expresion NVARCHAR(50) = '%jose%';
SELECT * FROM Alumnos WHERE NOMBRE = @Expresion;

GO

SELECT TOP 1 * FROM Alumnos ORDER BY NOTA ASC
SELECT TOP 1 * FROM Alumnos ORDER BY NOTA DESC


