CREATE PROCEDURE EJEMPLO
--SE REQUEIREN TODOS LOS PARAMETROS NECESAROPS PARA ALIMENTAR TODOS LOS SP
@USUARIO VARCHAR NULL,
@IdAeropuerto int,
@Flags Varchar(25)  null
as
BEGIN
	IF (@Flags like '%1%')
	
		Exec SP_Aeropuerto_Mostra_UltimaAcualizacion @IdAeropuerto
		select 'SE EJECUTA 1'
	
	IF (@Flags LIKE '%3%')
			Exec SP_Aeropuerto_Mostra_UltimaAcualizacion @IdAeropuerto

		SELECT 'SE EJECUTA OTRO SPP'	
	IF (@Flags LIKE '%5%')
	
		SELECT 'SE EJECUTA SP SECCIION 5'
	
END