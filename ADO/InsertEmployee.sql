CREATE PROCEDURE [dbo].[InsertEmployee]
	@FirstName NVARCHAR(50), 
	@LastName NVARCHAR(50),
	@Email NVARCHAR(100), 
	@BirthDate DATETIME,
	@ResponsableID INT
AS
	INSERT INTO [Employee] (FirstName, LastName, Email, BirthDate, ResponsableID) VALUES (@FirstName, @LastName, @Email, @BirthDate, @ResponsableID)

