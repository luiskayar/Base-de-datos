
CREATE procedure SP_Aeropuerto_Buscador
@Nombre varchar(200)
as

If EXISTS(select * from TB_Aeropuerto TA where TA.Nombre LIKE '%'+@Nombre+'%' )
select TA.ID_Aeropuerto,TA.Nombre,TA.Nombre_OACI,TA.NombreICAO,
TCO.Direccion_Exacta,TP.Pista, TC.Coordenada,TP.Elevacion,TC.Espacio_Aereo,TCO.Numero_Telefono1,TCO.Horario
from TB_Aeropuerto TA, 
TB_Contacto TCO,
TB_Pistas TP,
TB_Caracteristicas_especializadas_aeropuerto TC
Where 
TA.Nombre LIKE '%'+@Nombre+'%' 
and TA.ID_Aeropuerto = TCO.ID_Aeropuerto 
and TA.ID_Aeropuerto = TC.ID_Aeropuerto 
and TA.ID_Aeropuerto = TP.ID_Aeropuerto

ELSE IF EXISTS (select * from TB_Aeropuerto TA where TA.Nombre_OACI LIKE ''+@Nombre+'%' )
select TA.ID_Aeropuerto,TA.Nombre,TA.Nombre_OACI,TA.NombreICAO,
TCO.Direccion_Exacta,TP.Pista, TC.Coordenada,TP.Elevacion,TC.Espacio_Aereo,TCO.Numero_Telefono1,TCO.Horario
from TB_Aeropuerto TA, 
TB_Contacto TCO,
TB_Pistas TP,
TB_Caracteristicas_especializadas_aeropuerto TC
Where 
TA.Nombre_OACI LIKE ''+@Nombre+'%' 
and TA.ID_Aeropuerto = TCO.ID_Aeropuerto 
and TA.ID_Aeropuerto = TC.ID_Aeropuerto 
and TA.ID_Aeropuerto = TP.ID_Aeropuerto


ELSE IF EXISTS (select * from TB_Aeropuerto TA where TA.NombreICAO LIKE ''+@Nombre+'%' )
select TA.ID_Aeropuerto,TA.Nombre,TA.Nombre_OACI,TA.NombreICAO,
TCO.Direccion_Exacta,TP.Pista, TC.Coordenada,TP.Elevacion,TC.Espacio_Aereo,TCO.Numero_Telefono1,TCO.Horario
from TB_Aeropuerto TA, 
TB_Contacto TCO,
TB_Pistas TP,
TB_Caracteristicas_especializadas_aeropuerto TC
Where 
TA.NombreICAO LIKE ''+@Nombre+'%' 
and TA.ID_Aeropuerto = TCO.ID_Aeropuerto 
and TA.ID_Aeropuerto = TC.ID_Aeropuerto 
and TA.ID_Aeropuerto = TP.ID_Aeropuerto 
