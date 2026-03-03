CREATE TABLE Dim_Book_Author (
    Book_Author_SK INT IDENTITY(1,1) PRIMARY KEY,
    Book_SK INT FOREIGN KEY REFERENCES Dim_Book(Book_SK),
    Author_SK INT FOREIGN KEY REFERENCES Dim_Author(Author_SK),
    source_system_code NVARCHAR(50)
);