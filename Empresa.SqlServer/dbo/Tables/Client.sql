CREATE TABLE [dbo].[Client] (
    [IdClient]   INT           IDENTITY (1, 1) NOT NULL,
    [NameClient] VARCHAR (120) NOT NULL,
    [Suburb]     VARCHAR (60)  NOT NULL,
    [Phone]      VARCHAR (15)  NOT NULL,
    [Email]      VARCHAR (50)  NOT NULL,
    CONSTRAINT [pk_id_autor] PRIMARY KEY CLUSTERED ([IdClient] ASC)
);

