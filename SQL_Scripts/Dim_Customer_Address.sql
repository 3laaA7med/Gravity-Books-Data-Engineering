CREATE TABLE Dim_Customer_Address (
    Customer_Address_SK INT IDENTITY(1,1) PRIMARY KEY,
    Customer_SK INT FOREIGN KEY REFERENCES Dim_Customer(Customer_SK),
    Address_SK INT FOREIGN KEY REFERENCES Dim_Address(Address_SK),
    Status_BK INT,
    Address_Status VARCHAR(100),
    source_system_code NVARCHAR(50)
);
