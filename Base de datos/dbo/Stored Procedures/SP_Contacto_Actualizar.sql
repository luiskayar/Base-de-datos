
Create procedure SP_Contacto_Actualizar
@IDAeropuerto int,
@Direccion_Exacta varchar(200), 
@Numero_Telefono1 varchar(50),
@Numero_Telefono2 varchar(50),
@Horario varchar(100),
@Usario int
as
declare @FechaActual Datetime
set @FechaActual = GETDATE()


update TB_Aeropuerto set Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where TB_Aeropuerto.ID_Aeropuerto = @IDAeropuerto
update NOTAMS set Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where NOTAMS.ID_Aeropuerto = @IDAeropuerto
update TB_Caracteristicas_especializadas_aeropuerto set Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where TB_Caracteristicas_especializadas_aeropuerto.ID_Aeropuerto = @IDAeropuerto
update TB_Contacto set Direccion_Exacta = @Direccion_Exacta,Numero_Telefono1 = @Numero_Telefono1,Numero_Telefono2 = @Numero_Telefono2,Horario = @Horario,Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where TB_Contacto.ID_Aeropuerto = @IDAeropuerto
update TB_Frecuencias set Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where TB_Frecuencias.ID_Aeropuerto = @IDAeropuerto
update TB_Pistas set Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where TB_Pistas.ID_Aeropuerto = @IDAeropuerto
