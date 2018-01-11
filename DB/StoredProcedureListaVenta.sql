-- Procedimiento  Insertar ListaVenta
create proc spinsertar_listaventa
@IdListaVenta int output,
@IdProducto int,
@IdVenta int,
@cantidad int
as
insert into ListaVenta(IdListaVenta,IdProducto,IdVenta,cantidad)
values (@IdListaVenta,@IdProducto,@IdVenta,@cantidad)
go

-- Procedimiento  Editar ListaVenta
create proc speditar_listaventa
@IdListaVenta int output,
@IdProducto int,
@IdVenta int,
@cantidad int
as
update ListaVenta set IdProducto=@IdProducto,IdVenta=@IdVenta,cantidad=@cantidad
where IdListaVenta=@IdListaVenta
go

-- Procedimiento  Eliminar ListaVenta
create proc speliminar_listaventa
@IdListaVenta int
as
delete from ListaVenta
where IdListaVenta=@IdListaVenta
go