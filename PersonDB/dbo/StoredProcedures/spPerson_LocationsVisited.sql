CREATE PROCEDURE [dbo].[usp_spPerson_LocationsVisited]
	@PersonId int
AS
begin 
	set nocount on;

	select [l].[PointOfInterest], [l].[Location], v.VisitDate
	from dbo.[People] p 
	inner join dbo.[LocationVisits] v on p.Id  = v.PersonId
	inner join dbo.[Location] l on l.Id =v.LocationId
	where p.Id = @PersonId;
end