Create proc SP_AEFavoritos_Ver
		@ID_Aeropuerto int,
		@Identificador varchar(400)
		as
		select * from TB_Aero_Favoritos where ID_Aeropuerto = @ID_Aeropuerto and Identificador = @Identificador
