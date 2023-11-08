--CREATE TABLE Assessments (
--ID int PRIMARY KEY,
--ItemID int,
--Rater1 varchar(255),
--Rater2 varchar(255)

--INSERT INTO Assessments (ID,ItemID,Rater1,Rater2)
--VALUES
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

--CREATE TABLE Scores(
--ID int PRIMARY KEY,
--ItemID int,
--Rater1Score int,
--Rater2Score int
--)

--INSERT INTO Scores (ID,ItemID,Rater1Score,Rater2Score)
--VALUES
--(1,101,4,3),
--(2,102,5,4),
--(3,103,3,2),
--(4,104,4,4),
--(5,105,2,2)

--SELECT * FROM Scores 

WITH CategorizedScores AS (
	SELECT
		ID,
		ItemID,
		CASE
			WHEN Rater1Score <= 2 THEN 'Low'
			WHEN Rater1Score <= 4 THEN 'Moderate'
			ELSE 'High'
		END AS Rater1Category,
		CASE
			WHEN Rater2Score <= 2 THEN 'Low'
			WHEN Rater2Score <= 4 THEN 'Moderate'
			ELSE 'High'
		END AS Rater2Category
	FROM Scores
	)

SELECT 
	Rater1Category,
	Rater2Category,
	COUNT (*) AS Count
FROM CategorizedScores
GROUP BY Rater1Category,Rater2Category

