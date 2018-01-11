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

insert into Producto(IdProducto,IdProveedor,Nombre,Stock,PrecioCompra,PrecioVenta,FechaCompra)
values(@IdProducto,@IdProveedor,@Nombre,@Stock,@PrecioCompra,@PrecioVenta,@FechaCompra)
go

-- Procedimiento  Editar producto
create proc speditar_producto
@IdProducto int output,
@IdProveedor int output,
@Nombre varchar(255),
@Stock int,
@PrecioCompra money,
@PrecioVenta money,
@FechaCompra date
as
update Producto set IdProducto=@IdProducto,IdProveedor=@IdProveedor,Nombre=@Nombre,Stock=@Stock,PrecioCompra=@PrecioCompra,PrecioVenta=@PrecioVenta,FechaCompra=@FechaCompra
where IdProducto=@IdProducto
go

-- Procedimiento  Eliminar producto
create proc speliminar_producto
@IdProducto int
as
delete from Producto
where IdProducto=@IdProducto
go