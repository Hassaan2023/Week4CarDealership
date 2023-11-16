CREATE TABLE Salesperson (
    SalespersonID INT PRIMARY KEY,
    Name VARCHAR(50),

);

CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),

);

CREATE TABLE Car (
    CarID INT PRIMARY KEY,
    SerialNumber VARCHAR(20) UNIQUE,
    Model VARCHAR(50),

);

CREATE TABLE Invoice (
    InvoiceID INT PRIMARY KEY,
    SalespersonID INT,
    CustomerID INT,
    CarID INT,

    FOREIGN KEY (SalespersonID) REFERENCES Salesperson(SalespersonID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (CarID) REFERENCES Car(CarID)
);


CREATE TABLE CarMechanic (
    CarID INT,
    MechanicID INT,
    PRIMARY KEY (CarID, MechanicID),
    FOREIGN KEY (CarID) REFERENCES Car(CarID),
    FOREIGN KEY (MechanicID) REFERENCES Mechanic(MechanicID)
);

