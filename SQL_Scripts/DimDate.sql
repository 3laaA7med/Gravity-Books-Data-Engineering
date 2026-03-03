 USE GravityBooks_DWH;
 GO

CREATE TABLE Dim_Date (
    Date_SK INT PRIMARY KEY,
    Date DATE,
    Day INT,
    Week INT,
    Month INT,
    Quarter INT,
    Year INT
);


DECLARE @StartDate DATE = '2020-01-01'; 
DECLARE @EndDate DATE = '2030-12-31';

WHILE @StartDate <= @EndDate
BEGIN
    INSERT INTO Dim_Date (Date_SK, Date, Day, Week, Month, Quarter, Year)
    VALUES (
        CAST(CONVERT(VARCHAR(8), @StartDate, 112) AS INT), -- بيعمل المفتاح بصيغة YYYYMMDD
        @StartDate,
        DAY(@StartDate),
        DATEPART(WEEK, @StartDate),
        MONTH(@StartDate),
        DATEPART(QUARTER, @StartDate),
        YEAR(@StartDate)
    );
    SET @StartDate = DATEADD(DAY, 1, @StartDate);
END
GO