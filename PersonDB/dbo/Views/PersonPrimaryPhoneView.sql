CREATE VIEW [dbo].[PersonPrimaryPhoneView]
AS 
SELECT [p].[FirstName], [p].[LastName], 
p.FirstName + ' ' + p.LastName as FullName, 
[p].[DateOfBirth], [p].[EmailAddress], ph.PhoneNumber
FROM dbo.[People] p
left join dbo.[PhoneNumbers]  ph on p.Id = ph.PersonId and ph.PrimaryNumber = 1

