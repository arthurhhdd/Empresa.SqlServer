CREATE TABLE [dbo].[Leads] (
    [Id]           INT             IDENTITY (100, 1) NOT NULL,
    [Category]     VARCHAR (50)    NOT NULL,
    [Description]  VARCHAR (100)   NOT NULL,
    [Price]        DECIMAL (10, 2) NOT NULL,
    [StatusId]     INT             NULL,
    [IdClient]     INT             NULL,
    [CreationDate] DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [verifica_preco] CHECK ([Price]>=(0)),
    CONSTRAINT [fk_ClientId] FOREIGN KEY ([IdClient]) REFERENCES [dbo].[Client] ([IdClient]),
    CONSTRAINT [fk_StatusId] FOREIGN KEY ([StatusId]) REFERENCES [dbo].[Status] ([Id])
);

