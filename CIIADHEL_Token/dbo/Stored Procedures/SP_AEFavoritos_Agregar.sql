		CREATE proc SP_AEFavoritos_Agregar
		@ID_Aeropuerto int,
		@Identificador varchar(200),
		@Nombre varchar(200),
		@Nombre_OACI varchar(5),
		@NombreICAO varchar(25),
		@Usuario_Creacion int
		as
		begin try
		insert into TB_Aero_Favoritos (ID_Aeropuerto,Identificador,Nombre,Nombre_OACI,NombreICAO,Ultima_Actualizacion,Usuario_Creacion)
		values (@ID_Aeropuerto,@Identificador,@Nombre,@Nombre_OACI,@NombreICAO,GETDATE(),@Usuario_Creacion)
		select ('Se ingreso un nuevo favorito')
		end try
		begin catch
		print 'Erorr'
		end catch
