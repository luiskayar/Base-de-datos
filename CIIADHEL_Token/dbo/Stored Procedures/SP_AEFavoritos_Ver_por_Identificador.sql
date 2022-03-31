create proc SP_AEFavoritos_Ver_por_Identificador
		@Identificador varchar(400)
		as
		Select ID_Aeropuerto FROM TB_Aero_Favoritos WHERE Identificador = @Identificador
