
Create procedure SP_Pista_Actualizar
@IDAeropuerto int,
@Pista varchar(50),
@Elevacion varchar(100),
@Superficie_Pista varchar(50),
@ASDA_Rwy_1 int,
@ASDA_Rwy_2 int,
@TODA_Rwy_1 int,
@TODA_Rwy_2 int,
@TORA_Rwy_1 int,
@TORA_Rwy_2 int,
@LDA_Rwy_1 int,
@LDA_Rwy_2 int,
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
update TB_Frecuencias set Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where TB_Frecuencias.ID_Aeropuerto = @IDAeropuerto
update TB_Pistas set Pista = @Pista,Elevacion = @Elevacion,Superficie_Pista = @Superficie_Pista,ASDA_Rwy_1 = @ASDA_Rwy_1,ASDA_Rwy_2 = @ASDA_Rwy_2,TODA_Rwy_1  = @TODA_Rwy_1,TODA_Rwy_2 = @TODA_Rwy_2,TORA_Rwy_1  = @TORA_Rwy_1 ,TORA_Rwy_2  = @TORA_Rwy_2 ,LDA_Rwy_1  = @LDA_Rwy_1 ,LDA_Rwy_2  = @LDA_Rwy_2 ,Ultima_Actualizacion = @FechaActual, Usuario_Actualizacion = @Usario
where TB_Pistas.ID_Aeropuerto = @IDAeropuerto