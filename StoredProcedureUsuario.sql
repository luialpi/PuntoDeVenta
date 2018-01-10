--Procedimiento Mostrar
create proc spmostrar_usuario
as
select * from Usuario
order by id_Usuario desc
go

-- Procedimiento  Insertar Usuario
create proc spinsertar_usuario
@id_Usuario int output,
@Nombre varchar(100),
@Apellido varchar(100),
@Usuario varchar(50),
@_Password varchar(50)
as
insert into Usuario(Nombre,Apellido,Usuario,_Password)
values (@Nombre,@Apellido,@Usuario,@_Password)
go

-- Procedimiento  Editar Usuario
create proc speditar_usuario
@id_Usuario int output,
@Nombre varchar(100),
@Apellido varchar(100),
@Usuario varchar(50),
@_Password varchar(50)
as
update Usuario set Nombre=@Nombre,
Apellido=@Apellido,Usuario=@Usuario,_Password=@_Password
where id_Usuario=@id_Usuario
go

-- Procedimiento  Eliminar Usuario
create proc speliminar_usuario
@id_Usuario int
as
delete from Usuario
where id_Usuario=@id_Usuario
go