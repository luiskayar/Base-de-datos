
CREATE procedure SP_Aeropuerto_Actualizar
@IDAeropuerto int,
@Nombre_OACI varchar(5),
@NombreICAO varchar(25),
@Estado_Aeropuerto varchar(30),
@Usario int
as
declare @FechaActual Datetime
set @FechaActual = GETDATE()
update TB_Aeropuerto set Nombre_OACI = @Nombre_OACI, NombreICAO = @NombreICAO,Ultima_Actualizacion = @FechaActual,Estado_Aeropuerto= @Estado_Aeropuerto,Usuario_Actualizacion = @Usario
where TB_Aeropuerto.ID_Aeropuerto = @IDAeropuerto
update NOTAMS set Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where NOTAMS.ID_Aeropuerto = @IDAeropuerto
update TB_Caracteristicas_especializadas_aeropuerto set Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where TB_Caracteristicas_especializadas_aeropuerto.ID_Aeropuerto = @IDAeropuerto
update TB_Contacto set Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where TB_Contacto.ID_Aeropuerto = @IDAeropuerto
update TB_Frecuencias set Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where TB_Frecuencias.ID_Aeropuerto = @IDAeropuerto
update TB_Pistas set Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where TB_Pistas.ID_Aeropuerto = @IDAeropuerto