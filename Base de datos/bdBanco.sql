create database Banco;
USE Banco;
CREATE TABLE Empleado (
    Id_Empleado VARCHAR(10) PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL, 
    Cargo VARCHAR(50) NOT NULL
    );


CREATE TABLE Cliente (
    Id_Cliente VARCHAR(10) PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL, 
    Apellido VARCHAR(50) NOT NULL,
    DNI VARCHAR(20) NOT NULL, 
    Direccion VARCHAR(50) NOT NULL, 
    Telefono VARCHAR(15) NOT NULL,
    Email VARCHAR(50) NOT NULL, 
    Id_Empleado VARCHAR(10) NOT NULL,
    CONSTRAINT FK_Cliente_Empleado FOREIGN KEY (Id_Empleado) REFERENCES Empleado(Id_Empleado)
);

CREATE TABLE Cuenta (
    Id_Cuenta VARCHAR(10) PRIMARY KEY,
    TipoCuenta VARCHAR(30) NOT NULL, 
    Saldo DECIMAL(10,2) NOT NULL, 
    Fecha_Apertura DATE NOT NULL,
    Estado VARCHAR(30) NOT NULL,
    Id_Cliente VARCHAR(10) NOT NULL,
    CONSTRAINT FK_Cuenta_Cliente FOREIGN KEY (Id_Cliente) REFERENCES Cliente(Id_Cliente)
);  



SELECT * FROM Cliente;



SELECT * FROM Cuenta;



SELECT * FROM Empleado;