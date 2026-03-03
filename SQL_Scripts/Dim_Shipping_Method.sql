CREATE TABLE Dim_Shipping_Method (
    Shipping_Method_SK INT IDENTITY(1,1) PRIMARY KEY,
    Shipping_Method_BK INT,
    Shipping_Method_Name VARCHAR(200),
    source_system_code NVARCHAR(50),
    start_date DATETIME NOT NULL DEFAULT (GETDATE()),
    end_date DATETIME NULL,
    is_current TINYINT NOT NULL DEFAULT (1)
);
