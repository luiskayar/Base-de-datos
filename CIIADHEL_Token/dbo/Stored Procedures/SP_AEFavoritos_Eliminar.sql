CREATE proc SP_AEFavoritos_Eliminar
		@ID_Aeropuerto int,
		@Identificador varchar(400)
		as
		begin try
		delete TB_Aero_Favoritos where ID_Aeropuerto = @ID_Aeropuerto AND Identificador = @Identificador
		select ('Se elimino correctamente')
		end try
		begin catch
		print 'Erorr'
		end catch
