Create proc SP_AEFavoritos_Ver_Dispositivo
		@ID_Aeropuerto int
		as
		select  TD.Token,TD.Identificador from TB_Dispositivo TD,TB_Aero_Favoritos TA where TA.ID_Aeropuerto = @ID_Aeropuerto  and TA.Identificador = TD.Identificador
		