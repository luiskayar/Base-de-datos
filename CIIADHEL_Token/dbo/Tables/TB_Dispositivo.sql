CREATE TABLE [dbo].[TB_Dispositivo] (
    [ID_Dispositivo]        INT           IDENTITY (1, 1) NOT NULL,
    [Identificador]         VARCHAR (450) NOT NULL,
    [Token]                 VARCHAR (300) NOT NULL,
    [Ultima_Actualizacion]  DATETIME      NOT NULL,
    [Usuario_Creacion]      INT           NOT NULL,
    [Usuario_Actualizacion] INT           NULL,
    PRIMARY KEY CLUSTERED ([ID_Dispositivo] ASC),
    UNIQUE NONCLUSTERED ([Identificador] ASC, [Token] ASC)
);

