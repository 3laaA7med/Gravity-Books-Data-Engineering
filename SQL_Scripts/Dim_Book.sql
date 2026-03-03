CREATE TABLE Dim_Book (
    Book_SK INT IDENTITY(1,1) PRIMARY KEY,
    Book_BK INT,
    ISBN13 VARCHAR(13),
    Title VARCHAR(400),
    Language_BK INT,
    Language_Name VARCHAR(100),
    Language_Code VARCHAR(20),
    Num_Pages INT,
    Publication_Date DATE,
    Publisher_BK INT,
    Publisher_Name VARCHAR(400),
    source_system_code NVARCHAR(50),
    start_date DATETIME NOT NULL DEFAULT (GETDATE()),
    end_date DATETIME NULL,
    is_current TINYINT NOT NULL DEFAULT (1)
);