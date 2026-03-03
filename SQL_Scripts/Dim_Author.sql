
CREATE TABLE Dim_Author (
    Author_SK INT IDENTITY(1,1) PRIMARY KEY,
    Author_BK INT,
    Author_Name VARCHAR(400),
    source_system_code NVARCHAR(50),
    start_date DATETIME NOT NULL DEFAULT (GETDATE()),
    end_date DATETIME NULL,
    is_current TINYINT NOT NULL DEFAULT (1)
);