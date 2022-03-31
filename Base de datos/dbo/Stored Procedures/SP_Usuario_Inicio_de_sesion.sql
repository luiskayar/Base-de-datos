CREATE proc SP_Usuario_Inicio_de_sesion
@Cedula varchar(50),
@Contraseña varchar(50)
as
IF EXISTS( select TU.Contraseña ,TU.Cedula
  from TB_Usuarios TU
  where Tu.Cedula = @Cedula and dbo.FU_Desencriptacion_Contraseña(TU.Contraseña) = @Contraseña
  and TU.ID_Rol = 2
  )
Select 'Dar acceso',TU.ID_Aeropuerto from TB_Usuarios TU where @Cedula = Cedula
Else 
Select 'Denegar acceso '

