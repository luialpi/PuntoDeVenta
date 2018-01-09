create table Proveedor(
	IdProveedor int NOT NULL,
	PRIMARY KEY (IdProveedor),
	Nombre varchar(255) NOT NULL,
	telefono int NOT NULL
	
);

create table Producto(
	IdProducto int NOT NULL,
	PRIMARY KEY (IdProducto),
	IdProveedor int NOT NULL FOREIGN KEY REFERENCES Proveedor(IdProveedor),
	Nombre varchar(255) NOT NULL,
	Stock int NOT NULL,
	PrecioCompra money NOT NULL,
	PrecioVenta money NOT NULL,
	FechaCompra Date NOT NULL
	
);

create table Venta(
	IdVenta int NOT NULL,
	PRIMARY KEY(IdVenta),
	cliente varchar(255),
	fecha date NOT NULL
);


create table ListaVenta(
	IdListaVenta int NOT NULL,
	PRIMARY KEY(IdListaVenta),
	IdProducto int FOREIGN KEY REFERENCES Producto(IdProducto),
	IdVenta int FOREIGN KEY REFERENCES Venta(IdVenta),
	cantidad int NOT NULL
);





