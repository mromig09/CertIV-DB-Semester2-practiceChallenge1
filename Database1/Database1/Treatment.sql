CREATE TABLE [dbo].[Treatment]
(
	[procedureID] INT NOT NULL , 
    [petName] VARCHAR(100) NOT NULL, 
    [price] MONEY NOT NULL, 
    [ownerID] INT NOT NULL, 
    [date] DATE NOT NULL,
	[notes] VARCHAR(100) NOT NULL,
    PRIMARY KEY ([procedureID], [ownerID], [petName], [price]),
	FOREIGN KEY ([procedureID]) REFERENCES [dbo].[Procedure],
	FOREIGN KEY ([ownerID], [petName]) REFERENCES [dbo].[Pet]
)
