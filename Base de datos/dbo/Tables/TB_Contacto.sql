CREATE TABLE [dbo].[TB_Contacto] (
    [ID_Contacto]           INT           IDENTITY (1, 1) NOT NULL,
    [ID_Aeropuerto]         INT           NOT NULL,
    [Direccion_Exacta]      VARCHAR (200) NOT NULL,
    [Numero_Telefono1]      VARCHAR (50)  NULL,
    [Numero_Telefono2]      VARCHAR (50)  NULL,
    [Horario]               VARCHAR (100) NOT NULL,
    [Ultima_Actualizacion]  DATETIME      NOT NULL,
    [Usuario_Creacion]      INT           NOT NULL,
    [Usuario_Actualizacion] INT           NULL,
    PRIMARY KEY CLUSTERED ([ID_Contacto] ASC),
    FOREIGN KEY ([ID_Aeropuerto]) REFERENCES [dbo].[TB_Aeropuerto] ([ID_Aeropuerto])
);

