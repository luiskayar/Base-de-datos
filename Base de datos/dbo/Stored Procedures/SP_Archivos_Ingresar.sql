CREATE procedure SP_Archivos_Ingresar
@Nombre varchar(100),
@Ruta varchar(max)
as
DECLARE @SQL  VARCHAR(MAX);
SET @SQL = 
'INSERT INTO [dbo].[TB_Propuesta2Doc](name, file_stream)
select' +''''+@Nombre+''''+',t1.* from
OPENROWSET (BULK'+''''+@Ruta+''''+',SINGLE_BLOB) as t1';
Exec (@SQL)
