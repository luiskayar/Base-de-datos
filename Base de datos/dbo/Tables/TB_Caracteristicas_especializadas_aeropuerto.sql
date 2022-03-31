CREATE TABLE [dbo].[TB_Caracteristicas_especializadas_aeropuerto] (
    [ID_CarESP_Aero]        INT           IDENTITY (1, 1) NOT NULL,
    [ID_Aeropuerto]         INT           NULL,
    [Publico]               INT           NOT NULL,
    [Controlado]            INT           NOT NULL,
    [Coordenada]            VARCHAR (100) NOT NULL,
    [Info_Torre]            VARCHAR (300) NULL,
    [Info_General]          VARCHAR (MAX) NULL,
    [Espacio_Aereo]         VARCHAR (20)  NOT NULL,
    [Combustible]           VARCHAR (50)  NOT NULL,
    [Norma_General]         VARCHAR (MAX) NULL,
    [Norma_Particular]      VARCHAR (500) NULL,
    [Ultima_Actualizacion]  DATETIME      NOT NULL,
    [Usuario_Creacion]      INT           NOT NULL,
    [Usuario_Actualizacion] INT           NULL,
    PRIMARY KEY CLUSTERED ([ID_CarESP_Aero] ASC),
    FOREIGN KEY ([ID_Aeropuerto]) REFERENCES [dbo].[TB_Aeropuerto] ([ID_Aeropuerto])
);

