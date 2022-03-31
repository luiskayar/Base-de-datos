Create procedure SP_Notams_Mostrar_por_ID
@ID_Aeropuerto int
as
select *
from NOTAMS TN
where TN.ID_Aeropuerto = @ID_Aeropuerto
