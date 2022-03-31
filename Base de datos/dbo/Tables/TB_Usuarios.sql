CREATE TABLE [dbo].[TB_Usuarios] (
    [ID_USR]        INT             IDENTITY (1, 1) NOT NULL,
    [Nombre_USR]    VARCHAR (255)   NOT NULL,
    [Contraseña]    VARBINARY (255) NOT NULL,
    [Cedula]        VARCHAR (50)    NOT NULL,
    [ID_Rol]        INT             NOT NULL,
    [ID_Aeropuerto] INT             NULL,
    PRIMARY KEY CLUSTERED ([ID_USR] ASC),
    FOREIGN KEY ([ID_Aeropuerto]) REFERENCES [dbo].[TB_Aeropuerto] ([ID_Aeropuerto]),
    FOREIGN KEY ([ID_Rol]) REFERENCES [dbo].[TB_Roles] ([ID_Rol])
);

