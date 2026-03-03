CREATE TABLE Fact_Sales (
    Sales_SK INT IDENTITY(1,1) PRIMARY KEY,
    Book_SK INT FOREIGN KEY REFERENCES Dim_Book(Book_SK),
    Date_SK INT FOREIGN KEY REFERENCES Dim_Date(Date_SK),
    Customer_SK INT FOREIGN KEY REFERENCES Dim_Customer(Customer_SK),
    Line_BK INT,
    Order_BK INT,
    Book_BK INT, 
    Price DECIMAL(10,2),
    source_system_code NVARCHAR(50)
);