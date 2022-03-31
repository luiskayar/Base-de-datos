  Create procedure SP_Aeropuerto_Mostrar_Cantidad
  as
  select COUNT(*) as 'Numero_aeropuertos'from TB_Aeropuerto
