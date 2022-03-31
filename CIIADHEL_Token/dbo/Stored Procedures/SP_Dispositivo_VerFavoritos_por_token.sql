CREATE proc SP_Dispositivo_VerFavoritos_por_token
		@ID_Aeropuerto int
		as
		select Token from TB_Dispositivo TD,TB_Aero_Favoritos TA where TA.ID_Aeropuerto = @ID_Aeropuerto and TA.Identificador = TD.Identificador
