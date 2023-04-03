CREATE TABLE [dbo].[PhoneNumbers]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [PhoneNumber] NVARCHAR(20) NOT NULL, 
    [PersonId] INT NOT NULL, 
    [PrimaryNumber] BIT NOT NULL, 
    CONSTRAINT [FK_PhoneNumber_Person] FOREIGN KEY (PersonId) REFERENCES [People](Id)
)
