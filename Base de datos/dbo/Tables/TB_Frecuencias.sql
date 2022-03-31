CREATE TABLE [dbo].[TB_Frecuencias] (
    [ID_Frecuencia]         INT           IDENTITY (1, 1) NOT NULL,
    [ID_Aeropuerto]         INT           NOT NULL,
    [Frecuencia]            VARCHAR (20)  NOT NULL,
    [TipoFrecuencia]        VARCHAR (100) NULL,
    [Ultima_Actualizacion]  DATETIME      NOT NULL,
    [Usuario_Creacion]      INT           NOT NULL,
    [Usuario_Actualizacion] INT           NULL,
    PRIMARY KEY CLUSTERED ([ID_Frecuencia] ASC),
    FOREIGN KEY ([ID_Aeropuerto]) REFERENCES [dbo].[TB_Aeropuerto] ([ID_Aeropuerto])
);

