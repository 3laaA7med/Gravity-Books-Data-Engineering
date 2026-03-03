CREATE TABLE Dim_Address (
    Address_SK INT IDENTITY(1,1) PRIMARY KEY,
    Address_BK INT,
    Street_Number VARCHAR(50),
    Street_Name VARCHAR(300),
    City VARCHAR(200),
    Country_BK INT,
    Country_Name VARCHAR(200),
    source_system_code NVARCHAR(50),
    start_date DATETIME NOT NULL DEFAULT (GETDATE()),
    end_date DATETIME NULL,
    is_current TINYINT NOT NULL DEFAULT (1)
);