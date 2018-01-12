
-- Procedimiento  Insertar Producto
create proc spinsertar_Producto
@IdProducto int output,
@IdProveedor int output,
@Nombre varchar(255),
@Stock int,
@PrecioCompra money,
@PrecioVenta money,
@FechaCompra date

as

insert into Producto(IdProveedor,Nombre,Stock,PrecioCompra,PrecioVenta,FechaCompra)
values(@IdProveedor,@Nombre,@Stock,@PrecioCompra,@PrecioVenta,@FechaCompra)
go

-- Procedimiento  Editar producto
create proc speditar_producto
@IdProducto int output,
@IdProveedor int,
@Nombre varchar(255),
@Stock int,
@PrecioCompra money,
@PrecioVenta money,
@FechaCompra date
as
update Producto set IdProveedor=@IdProveedor,Nombre=@Nombre,Stock=@Stock,PrecioCompra=@PrecioCompra,PrecioVenta=@PrecioVenta,FechaCompra=@FechaCompra
where IdProducto=@IdProducto
go

-- Procedimiento  Eliminar producto
create proc speliminar_producto
@IdProducto int
as
delete from Producto
where IdProducto=@IdProducto
go

--Mostrar todos los productos
create proc spmostrar_productos
as

select * from Producto;
go 

--buscar productos like
create proc spbuscar_productos

@Nombre varchar(255)

as

select * from Producto 
where Nombre like @Nombre + '%'
go