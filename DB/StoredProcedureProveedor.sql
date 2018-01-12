-- Procedimiento  Insertar Proveedor
create proc spinsertar_proveedor
@IdProveedor int output,
@Nombre varchar(255),
@telefono int

as
insert into Proveedor(IdProveedor,Nombre,telefono)
values(@IdProveedor,@Nombre,@telefono);
go

-- Procedimiento  Editar Proveedor
create proc speditar_proveedor
@IdProveedor int output,
@Nombre varchar(255),
@telefono int
as
update Proveedor set IdProveedor=@IdProveedor,Nombre=@Nombre,telefono=@telefono
where IdProveedor=@IdProveedor
go

-- Procedimiento  Eliminar proveedor
create proc speliminar_proveedor
@IdProveedor int
as
delete from Proveedor
where IdProveedor=@IdProveedor
go

--Mostrar todos los proveedores
create proc spmostrar_proveedores
as

select * from Proveedor;
go 

--buscar productos like
create proc spbuscar_proveedor

@IdProveedor int output

as

select * from proveedor where IdProveedor like @IdProveedor ;
go