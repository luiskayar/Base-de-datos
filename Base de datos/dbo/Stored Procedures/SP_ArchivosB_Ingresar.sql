CREATE procedure SP_ArchivosB_Ingresar
@ID_Aeropuerto int ,
@Nombre varchar(255) null,
@Contenido varchar(max) null,
@Usuario_Creacion int null,
@Usuario_Actualizacion int null
as
DECLARE @SQL  VARCHAR(MAX), 
@id varchar(max)
set @id =NEWID()
SET @SQL = '
insert into TB_Documentos (ID2,ID_Aeropuerto,Nombre,Contenido,Extension,Ultima_Actualizacion,Usuario_Creacion,Usuario_Actualizacion)
select'+ @id+''','+@ID_Aeropuerto+''','''+@Nombre+''','''+'t1.*,pdf,getdate(),'+@Usuario_Creacion+''','''+@Usuario_Actualizacion+'
from OPENROWSET (BULK'+''''+@Contenido+''''+',SINGLE_BLOB) as t1';
Exec (@SQL)