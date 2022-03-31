 Create function Fu_Encriptacion_Contraseña
 (
 @Contraseña1 varchar(50)
 )
 returns VarBinary(500)
 as
 begin
 declare  @Contraseña as VarBinary(500)
 set  @Contraseña=ENCRYPTBYPASSPHRASE('Contraseña',@Contraseña1)
 return  @Contraseña
 end
