CREATE TABLE [dbo].[TB_Aero_Favoritos] (
    [ID_Favorito]           INT           IDENTITY (1, 1) NOT NULL,
    [ID_Aeropuerto]         INT           NOT NULL,
    [Identificador]         VARCHAR (450) NOT NULL,
    [Nombre]                VARCHAR (200) NOT NULL,
    [Nombre_OACI]           VARCHAR (5)   NOT NULL,
    [NombreICAO]            VARCHAR (25)  NOT NULL,
    [Ultima_Actualizacion]  DATETIME      NOT NULL,
    [Usuario_Creacion]      INT           NOT NULL,
    [Usuario_Actualizacion] INT           NULL,
    PRIMARY KEY CLUSTERED ([ID_Favorito] ASC)
);

