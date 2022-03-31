CREATE procedure SP_Aeropuerto_MostrarRelevantes
as
select TA.ID_Aeropuerto,TA.Nombre,TA.Nombre_OACI,TA.NombreICAO,TA.Estado_Aeropuerto,TA.Usuario_Creacion,TA.Usuario_Actualizacion,TCO.Direccion_Exacta,TP.Pista, TC.Coordenada,TP.Elevacion,TC.Espacio_Aereo,TCO.Numero_Telefono1,TCO.Horario
from TB_Aeropuerto TA, 
TB_Contacto TCO,
TB_Pistas TP,
TB_Caracteristicas_especializadas_aeropuerto TC
Where TA.ID_Aeropuerto = TCO.ID_Aeropuerto 
and TA.ID_Aeropuerto = TC.ID_Aeropuerto 
and TA.ID_Aeropuerto = TP.ID_Aeropuerto