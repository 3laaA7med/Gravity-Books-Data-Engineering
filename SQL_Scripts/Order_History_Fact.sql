
CREATE TABLE Order_History_Fact (
    Order_History_SK INT IDENTITY(1,1) PRIMARY KEY,
    Date_SK INT FOREIGN KEY REFERENCES Dim_Date(Date_SK),
    Customer_SK INT FOREIGN KEY REFERENCES Dim_Customer(Customer_SK),
    Shipping_Method_SK INT FOREIGN KEY REFERENCES Dim_Shipping_Method(Shipping_Method_SK),
    Order_BK INT, 
    History_BK INT,
    Status_BK INT,
    Status_Value VARCHAR(100),
    Cost DECIMAL(10,2),
    start_date DATETIME NOT NULL DEFAULT (GETDATE()) 
);