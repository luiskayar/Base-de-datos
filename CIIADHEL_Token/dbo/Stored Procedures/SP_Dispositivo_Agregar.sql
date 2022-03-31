		CREATE proc SP_Dispositivo_Agregar
		@Identificador varchar(max),
		@Token  varchar(300),
		@Usuario_Creacion int
		as
		delete TB_Dispositivo where Identificador = @Identificador
		insert into TB_Dispositivo (Identificador,Token,Ultima_Actualizacion,Usuario_Creacion) 
		values (@Identificador,@Token,GETDATE(),@Usuario_Creacion)

		exec SP_Dispositivo_Agregar 'ddd',
		'dyrN5l0u0eg:APA91bHUTP0Yx0mH_j2TeDUJfsFaA8UOEQHO_qxX6mXumwNRBDgKMcZXJSkFvbCq-R0j86uI5AuZO7vf-xdKpWpjSwJ2KjU-u9O-t4oX2i6JVCVwrU0j-bpPPL2ipremcBuoJo2dkmeX'
		,'0'
