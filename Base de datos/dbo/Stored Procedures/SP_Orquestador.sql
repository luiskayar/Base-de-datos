

CREATE procedure SP_Orquestador 
@Ejecutables varchar(20) null,
@IDAeropuerto int,
@Usario int,
@Nombre_OACI varchar(5) null,
@NombreICAO varchar(25) null,
@Estado_Aeropuerto varchar(30) null,
@Notam varchar(MAX) null,
@Publico int null,
@Controlado int null,
@Coordenada varchar(100) null,
@Info_Torre varchar(300) null,
@Info_General varchar(MAX) null,
@Espacio_Aereo varchar(20) null,
@Combustible varchar(50) null,
@Norma_General varchar(MAX) null,
@Norma_Particular varchar(500) null,
@Direccion_Exacta varchar(200) null, 
@Numero_Telefono1 varchar(50) null,
@Numero_Telefono2 varchar(50) null,
@Horario varchar(100) null,
@ATIS varchar(20),
@GRND varchar(20),
@TWR varchar(20),
@EMERGENCY varchar(20),
@Otras varchar(20),
@Pista varchar(50) null,
@Elevacion varchar(100) null,
@Superficie_Pista varchar(50) null,
@ASDA_Rwy_1 int null,
@ASDA_Rwy_2 int null,
@TODA_Rwy_1 int null,
@TODA_Rwy_2 int null,
@TORA_Rwy_1 int null,
@TORA_Rwy_2 int null,
@LDA_Rwy_1 int null,
@LDA_Rwy_2 int null
as
Declare @Error1 int
begin try 
begin tran

	IF (@Ejecutables LIKE '%1%')
		Exec SP_Aeropuerto_Actualizar 
		@IDAeropuerto,@Nombre_OACI,@NombreICAO,@Estado_Aeropuerto,@Usario
		

	IF (@Ejecutables LIKE '%2%')
		Exec SP_Notams_Actualizar
		@IDAeropuerto,@Notam,@Usario
		

	IF (@Ejecutables LIKE '%3%')
		Exec SP_Caracteristicas_Actualizar
		@IDAeropuerto,@Publico,@Controlado,@Coordenada,@Info_Torre,@Info_General,@Espacio_Aereo
		,@Combustible,@Norma_General,@Norma_Particular,@Usario
		

	IF (@Ejecutables LIKE '%4%')
		Exec SP_Contacto_Actualizar
		@IDAeropuerto,@Direccion_Exacta,@Numero_Telefono1,@Numero_Telefono2,@Horario,@Usario
		

	IF (@Ejecutables LIKE '%5%')
		Exec SP_Frecuancias_Actualizar
		@IDAeropuerto,@ATIS,@GRND,@TWR,@EMERGENCY,@Otras,@Usario
		

	IF (@Ejecutables LIKE '%6%')
		Exec SP_Pista_Actualizar
		@IDAeropuerto,@Pista,@Elevacion,@Superficie_Pista,@ASDA_Rwy_1,@ASDA_Rwy_2
		,@TODA_Rwy_1,@TODA_Rwy_2,@TORA_Rwy_1,@TORA_Rwy_2,@LDA_Rwy_1,@LDA_Rwy_2,@Usario

		set @Error1 = @@ERROR

		if(@Error1 <> 0)
		begin 
		rollback tran
		end
		else

		commit tran
		
		end try
		begin catch
				print 'Error en la transacción'
		rollback tran
		end catch
		select 'Ok'
