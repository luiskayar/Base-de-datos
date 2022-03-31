CREATE TABLE [dbo].[TB_Documentos] (
    [ID_Documento]          INT              IDENTITY (1, 1) NOT NULL,
    [ID2]                   UNIQUEIDENTIFIER ROWGUIDCOL NOT NULL,
    [ID_Aeropuerto]         INT              NULL,
    [Nombre]                VARCHAR (255)    NULL,
    [Contenido]             VARBINARY (MAX)  NULL,
    [Extension]             CHAR (4)         NULL,
    [Ultima_Actualizacion]  DATETIME         NOT NULL,
    [Usuario_Creacion]      INT              NOT NULL,
    [Usuario_Actualizacion] INT              NULL,
    FOREIGN KEY ([ID_Aeropuerto]) REFERENCES [dbo].[TB_Aeropuerto] ([ID_Aeropuerto]),
    UNIQUE NONCLUSTERED ([ID2] ASC)
);

