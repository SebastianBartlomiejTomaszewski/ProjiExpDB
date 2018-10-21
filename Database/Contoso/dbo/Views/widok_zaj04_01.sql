create view [widok_zaj04_01]
as
	SELECT	
		  DATEPART(YEAR,[Datekey]) as [Year],
		  DATEPART(MONTH,[Datekey]) as [MONTH],
		  	sum([CostAmount]) as [Koszty]

	FROM [dbo].[FactITMachine]
	where Costtype='Annual Maintenance Cost'
	group by Datekey