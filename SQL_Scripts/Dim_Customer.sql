
CREATE TABLE Dim_Customer (
    Customer_SK INT IDENTITY(1,1) PRIMARY KEY,
    Customer_BK INT,
    First_Name VARCHAR(200),
    Last_Name VARCHAR(200),
    Email VARCHAR(300),
    source_system_code NVARCHAR(50),
    start_date DATETIME NOT NULL DEFAULT (GETDATE()),
    end_date DATETIME NULL,
    is_current TINYINT NOT NULL DEFAULT (1)
);