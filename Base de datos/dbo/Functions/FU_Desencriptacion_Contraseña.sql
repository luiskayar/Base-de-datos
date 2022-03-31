   Create function FU_Desencriptacion_Contraseña
  (
  @Contraseña1 varbinary(500)
  )
  returns varchar(50)
  as
  begin
  declare @Contraseña as varchar(50)
  set @Contraseña=DECRYPTBYPASSPHRASE('Contraseña',@Contraseña1)
  return @Contraseña
  end