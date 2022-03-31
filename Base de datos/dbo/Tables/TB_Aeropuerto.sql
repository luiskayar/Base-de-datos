CREATE TABLE [dbo].[TB_Aeropuerto] (
    [ID_Aeropuerto]         INT           IDENTITY (1, 1) NOT NULL,
    [Nombre]                VARCHAR (200) NOT NULL,
    [Nombre_OACI]           VARCHAR (5)   NOT NULL,
    [NombreICAO]            VARCHAR (25)  NOT NULL,
    [Estado_Aeropuerto]     VARCHAR (30)  NOT NULL,
    [Fecha_Creacion]        DATETIME      NOT NULL,
    [Ultima_Actualizacion]  DATETIME      NOT NULL,
    [Usuario_Creacion]      INT           NOT NULL,
    [Usuario_Actualizacion] INT           NOT NULL,
    CONSTRAINT [PK__TB_Aerop__FC71A31D08E3F5D8] PRIMARY KEY CLUSTERED ([ID_Aeropuerto] ASC)
);

