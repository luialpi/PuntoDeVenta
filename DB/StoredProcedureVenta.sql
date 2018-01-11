-- Procedimiento  Insertar Venta
create proc spinsertar_venta
@IdVenta int output,
@cliente varchar(255),
@fecha date
as
insert into Venta(IdVenta,cliente,fecha)
values (@IdVenta,@cliente,@fecha)
go

-- Procedimiento  Editar Usuario
create proc speditar_venta
@IdVenta int output,
@cliente varchar(255),
@fecha date
as
update Venta set cliente=@cliente,fecha=@fecha
where IdVenta=@IdVenta
go

-- Procedimiento  Eliminar Venta
create proc speliminar_venta
@IdVenta int
as
delete from Venta
where IdVenta=@IdVenta
go