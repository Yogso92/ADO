CREATE VIEW [dbo].[V_Employee]
	AS SELECT E.Id, E.LastName, E.FirstName, E.Email, E.BirthDate, R.LastName AS RespFirstName, R.FirstName AS RespLastName, R.Email AS RespEmail
		FROM [Employee] E
		JOIN [Employee] R
		ON E.ResponsableID = R.Id
