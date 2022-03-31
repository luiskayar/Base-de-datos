create FUNCTION [dbo].[DEsEncripta64](
@ruta varchar(max)
)
RETURNS VARCHAR(MAX)
as begin
--declare 
--@base664 varchar(max)
--set @base664 =  select CAST(@ruta as varbinary(max)) FOR XML PATH(''), BINARY BASE64
--return @base664
--return CAST(@ruta as varbinary(max)) FOR XML PATH(''), BINARY BASE64
return  CAST( CAST( @ruta as XML ).value('.','varbinary(max)') AS varchar(max) )
end