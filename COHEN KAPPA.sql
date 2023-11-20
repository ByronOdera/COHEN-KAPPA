--CREATE TABLE Assessments (
--ID int PRIMARY KEY,
--ItemID int,
--Rater1 varchar(255),
--Rater2 varchar(255)

--INSERT INTO Assessments (ID,ItemID,Rater1,Rater2)
--VALUES
--(1,101,'A','A')
--(2,102,'B','A')
--(3,103,'A','B')
--(4,104,'B','B')
--(5,105,'A','A')

--SELECT * FROM Assessments

--SELECT ItemID,Rater1 FROM Assessments

--SELECT ItemID,Rater2 FROM Assessments

--WITH ConfusionMatrix AS (
--    SELECT
--        CASE WHEN Rater1 = Rater2 THEN 1 ELSE 0 END AS Agreement,
--        1 AS Total
--    FROM Assessments
--)
--SELECT
--    SUM(Agreement) AS ObservedAgreement,
--    SUM(Total) AS TotalCount,
--    COUNT(*) AS ItemCount,
--    1.0 - (SUM(Agreement) / CAST(SUM(Total) AS FLOAT)) AS ProportionOfDisagreement,
--    1.0 - (SUM(Agreement) / CAST(SUM(Total) AS FLOAT)) / (1.0 - (SUM(Agreement) / CAST(SUM(Total) AS FLOAT))) AS Kappa
--FROM ConfusionMatrix
