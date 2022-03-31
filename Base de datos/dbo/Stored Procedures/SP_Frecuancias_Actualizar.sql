
CREATE procedure SP_Frecuancias_Actualizar
@IDAeropuerto int,
@ATIS varchar(20),
@GRND varchar(20),
@TWR varchar(20),
@EMERGENCY varchar(20),
@Otras varchar(20),
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
update TB_Contacto set Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where TB_Contacto.ID_Aeropuerto = @IDAeropuerto
update TB_Frecuencias set Frecuencia = @ATIS,Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where TB_Frecuencias.ID_Aeropuerto = @IDAeropuerto and TipoFrecuencia = 'ATIS'
update TB_Frecuencias set Frecuencia = @GRND,Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where TB_Frecuencias.ID_Aeropuerto = @IDAeropuerto and TipoFrecuencia = 'GRND'
update TB_Frecuencias set Frecuencia = @TWR,Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where TB_Frecuencias.ID_Aeropuerto = @IDAeropuerto and TipoFrecuencia = 'TWR'
update TB_Frecuencias set Frecuencia = @EMERGENCY,Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where TB_Frecuencias.ID_Aeropuerto = @IDAeropuerto and TipoFrecuencia = 'EMERGENCY'
update TB_Frecuencias set Frecuencia = @Otras,Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where TB_Frecuencias.ID_Aeropuerto = @IDAeropuerto and TipoFrecuencia = 'Otras'
update TB_Pistas set Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where TB_Pistas.ID_Aeropuerto = @IDAeropuerto
