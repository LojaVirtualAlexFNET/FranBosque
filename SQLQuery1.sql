CREATE TABLE [dbo].[Categoria] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [IdCategoria] INT           NULL,
    [Nome]        VARCHAR (250) NULL,
    [IdSecoes]    INT           NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([IdSecoes]) REFERENCES [dbo].[Secoes] ([idSecoes])
);
