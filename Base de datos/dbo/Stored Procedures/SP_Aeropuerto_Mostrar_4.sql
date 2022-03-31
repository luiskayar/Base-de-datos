CREATE procedure SP_Aeropuerto_Mostrar_4 
@ID_Aeropuerto int
as
select TA.ID_Aeropuerto,TA.Nombre,TA.Nombre_OACI,TA.NombreICAO,TA.Estado_Aeropuerto,TA.Ultima_Actualizacion,
TCE.ID_CarESP_Aero,TCE.Publico,TCE.Controlado,TCE.Coordenada,TCE.Info_Torre,TCE.Info_General,TCE.Espacio_Aereo,TCE.Combustible,TCE.Norma_General,TCE.Norma_Particular,
TC.ID_Contacto,TC.Direccion_Exacta,TC.Numero_Telefono1,TC.Numero_Telefono2,TC.Horario,
TP.ID_Pista,TP.Pista,TP.Elevacion,TP.Superficie_Pista,TP.ASDA_Rwy_1,TP.ASDA_Rwy_2,TP.TODA_Rwy_1,TP.TODA_Rwy_2,TP.TORA_Rwy_1,TP.TORA_Rwy_2,TP.LDA_Rwy_1,TP.LDA_Rwy_2
from TB_Aeropuerto TA,
TB_Caracteristicas_especializadas_aeropuerto TCE,
TB_Contacto TC,
TB_Pistas TP
where 
TA.ID_Aeropuerto = TCE.ID_Aeropuerto 
and TA.ID_Aeropuerto = TC.ID_Aeropuerto 
and TA.ID_Aeropuerto = TP.ID_Aeropuerto
and TA.ID_Aeropuerto = @ID_Aeropuerto