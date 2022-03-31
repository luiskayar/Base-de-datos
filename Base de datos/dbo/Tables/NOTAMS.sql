CREATE TABLE [dbo].[NOTAMS] (
    [ID_NOTAMS]             INT           IDENTITY (1, 1) NOT NULL,
    [ID_Aeropuerto]         INT           NOT NULL,
    [Notam]                 VARCHAR (MAX) NULL,
    [Fecha_Creacion]        DATETIME      NOT NULL,
    [FechaVencimiento]      DATETIME      NULL,
    [Ultima_Actualizacion]  DATETIME      NOT NULL,
    [Usuario_Creacion]      INT           NOT NULL,
    [Usuario_Actualizacion] INT           NULL,
    PRIMARY KEY CLUSTERED ([ID_NOTAMS] ASC),
    FOREIGN KEY ([ID_Aeropuerto]) REFERENCES [dbo].[TB_Aeropuerto] ([ID_Aeropuerto])
);

