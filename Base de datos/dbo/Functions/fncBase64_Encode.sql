CREATE FUNCTION [dbo].[fncBase64_Encode] (
    @string VARCHAR(MAX)
) 
RETURNS VARCHAR(MAX)
AS BEGIN
 
    DECLARE 
        @source VARBINARY(MAX), 
        @encoded VARCHAR(MAX)
        
    SET @source = CONVERT(VARBINARY(MAX), @string)
    SET @encoded = CAST('' AS XML).value('xs:base64Binary(sql:variable("@source"))', 'varchar(max)')
 
    RETURN @encoded
 
END