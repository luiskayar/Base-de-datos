
Create procedure SP_Notams_Actualizar
@IDAeropuerto int,
@Notam varchar(MAX),
@Usario int
as
declare @FechaActual Datetime
set @FechaActual = GETDATE()


update NOTAMS set Notam = @Notam,Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where NOTAMS.ID_Aeropuerto = @IDAeropuerto
update TB_Aeropuerto set Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where TB_Aeropuerto.ID_Aeropuerto = @IDAeropuerto
update TB_Caracteristicas_especializadas_aeropuerto set Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where TB_Caracteristicas_especializadas_aeropuerto.ID_Aeropuerto = @IDAeropuerto
update TB_Contacto set Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where TB_Contacto.ID_Aeropuerto = @IDAeropuerto
update TB_Frecuencias set Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where TB_Frecuencias.ID_Aeropuerto = @IDAeropuerto
update TB_Pistas set Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where TB_Pistas.ID_Aeropuerto = @IDAeropuerto
