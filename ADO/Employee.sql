﻿CREATE TABLE [dbo].[Employee]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[FirstName] NVARCHAR(50) NOT NULL,
	[LastName] NVARCHAR(50) NOT NULL, 
	[BirthDate] DATETIME NOT NULL,
	[Email] NVARCHAR(100) NOT NULL,
	ResponsableID int NULL,
	CONSTRAINT [PK_Employee] PRIMARY KEY ([Id]),
	CONSTRAINT [UK_Employee_Email] UNIQUE ([Email]),
	CONSTRAINT [CK_Employee_BirthDate] CHECK (YEAR(BirthDate) < 2010),
	Constraint [CK_Employee_Responsable] CHECK (ResponsableID <> Id), 
    CONSTRAINT [FK_Employee_ToEmployee] FOREIGN KEY ([ResponsableID]) REFERENCES [Employee]([Id])

)

GO

CREATE INDEX [IX_Employee_LastName] ON [dbo].[Employee] ([LastName])

GO


CREATE TRIGGER [dbo].[Trigger_OnInsertUpdateEmployee]
    ON [dbo].[Employee]
    FOR DELETE, INSERT, UPDATE
    AS
    BEGIN
        SET NoCount ON
    END