
Create procedure SP_Caracteristicas_Actualizar
@IDAeropuerto int,
@Publico int,
@Controlado int,
@Coordenada varchar(100),
@Info_Torre varchar(300),
@Info_General varchar(MAX),
@Espacio_Aereo varchar(20),
@Combustible varchar(50),
@Norma_General varchar(MAX),
@Norma_Particular varchar(500),
@Usario int
as
declare @FechaActual Datetime
set @FechaActual = GETDATE()


update TB_Aeropuerto set Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where TB_Aeropuerto.ID_Aeropuerto = @IDAeropuerto
update NOTAMS set Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where NOTAMS.ID_Aeropuerto = @IDAeropuerto
update TB_Caracteristicas_especializadas_aeropuerto set Publico = @Publico, Controlado = @Controlado,Coordenada = @Coordenada,Info_Torre = @Info_Torre,Info_General = @Info_General,Espacio_Aereo = @Espacio_Aereo, Combustible = @Combustible,Norma_General = @Norma_General, Norma_Particular = @Norma_Particular
where TB_Caracteristicas_especializadas_aeropuerto.ID_Aeropuerto = @IDAeropuerto
update TB_Contacto set Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where TB_Contacto.ID_Aeropuerto = @IDAeropuerto
update TB_Frecuencias set Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where TB_Frecuencias.ID_Aeropuerto = @IDAeropuerto
update TB_Pistas set Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where TB_Pistas.ID_Aeropuerto = @IDAeropuerto