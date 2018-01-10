use punto;
create table Proveedor(
	IdProveedor int IDENTITY(001,1) NOT NULL PRIMARY KEY,
	Nombre varchar(255) NOT NULL,
	telefono int NOT NULL
	
);

create table Producto(
	IdProducto int IDENTITY(001,1) NOT NULL PRIMARY KEY,
	IdProveedor int NOT NULL FOREIGN KEY REFERENCES Proveedor(IdProveedor),
	Nombre varchar(255) NOT NULL,
	Stock int NOT NULL,
	PrecioCompra money NOT NULL,
	PrecioVenta money NOT NULL,
	FechaCompra Date NOT NULL
	
);

create table Venta(
	IdVenta int IDENTITY(001,1) NOT NULL PRIMARY KEY,
	cliente varchar(255),
	fecha date NOT NULL
);


create table ListaVenta(
	IdListaVenta int IDENTITY(001,1) NOT NULL PRIMARY KEY,
	IdProducto int FOREIGN KEY REFERENCES Producto(IdProducto),
	IdVenta int FOREIGN KEY REFERENCES Venta(IdVenta),
	cantidad int NOT NULL
)



