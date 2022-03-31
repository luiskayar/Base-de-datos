Create procedure SP_Aeropuerto_Mostra_UltimaAcualizacion
@ID_Aeropuerto int 
as
select Ultima_Actualizacion from TB_Aeropuerto TA where TA.ID_Aeropuerto = @ID_Aeropuerto
