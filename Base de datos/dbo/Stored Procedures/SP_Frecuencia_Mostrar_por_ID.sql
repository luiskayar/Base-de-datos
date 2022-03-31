Create procedure SP_Frecuencia_Mostrar_por_ID 
@ID_Aeropuerto int
as
select TF.ID_Frecuencia,TF.Frecuencia,TF.TipoFrecuencia
from TB_Frecuencias TF
where TF.ID_Aeropuerto = @ID_Aeropuerto
