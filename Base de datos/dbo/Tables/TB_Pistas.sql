CREATE TABLE [dbo].[TB_Pistas] (
    [ID_Pista]              INT           IDENTITY (1, 1) NOT NULL,
    [ID_Aeropuerto]         INT           NOT NULL,
    [Pista]                 VARCHAR (50)  NOT NULL,
    [Elevacion]             VARCHAR (100) NULL,
    [Superficie_Pista]      VARCHAR (50)  NULL,
    [ASDA_Rwy_1]            INT           NULL,
    [ASDA_Rwy_2]            INT           NULL,
    [TODA_Rwy_1]            INT           NULL,
    [TODA_Rwy_2]            INT           NULL,
    [TORA_Rwy_1]            INT           NULL,
    [TORA_Rwy_2]            INT           NULL,
    [LDA_Rwy_1]             INT           NULL,
    [LDA_Rwy_2]             INT           NULL,
    [Ultima_Actualizacion]  DATETIME      NOT NULL,
    [Usuario_Creacion]      INT           NOT NULL,
    [Usuario_Actualizacion] INT           NULL,
    PRIMARY KEY CLUSTERED ([ID_Pista] ASC),
    FOREIGN KEY ([ID_Aeropuerto]) REFERENCES [dbo].[TB_Aeropuerto] ([ID_Aeropuerto])
);

