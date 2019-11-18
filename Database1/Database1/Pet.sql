CREATE TABLE [dbo].[Pet]
(
	[ownerID] INT NOT NULL , 
    [petName] VARCHAR(100) NOT NULL, 
    [type] VARCHAR(30) NOT NULL, 
    PRIMARY KEY ([ownerID], [petName]),
	FOREIGN KEY ([ownerID]) REFERENCES [dbo].[Owner]
)
