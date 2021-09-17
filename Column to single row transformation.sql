--The below query can be adapated to move data stored in a column all onto the same row based on a single common data point (join column) in the table
--this can be done to help normalize data or help vizualize it in a specific way like a matrix.

with Condition1 as 
(SELECT Distinct
	   [Key Column]
      ,[Date Column]
      ,[Join Column]
      ,[Column2]
      ,[Column3]
      ,[Column4]
      ,[Column5]
      ,[Column6]
      ,[Column7]
      ,[Condition Column]
      ,[Condition1 Data]
  FROM [schema].[table] AS s
  where [Condition Column] like '%Conditon1%'
  Group by
	   [Key Column]
      ,[Date Column]
      ,[Join Column]
      ,[Column2]
      ,[Column3]
      ,[Column4]
      ,[Column5]
      ,[Column6]
      ,[Column7]
      ,[Condition Column]
      ,[Condition1 Data]
),

Condition2 as 
(SELECT Distinct
	   [Key Column]
      ,[Date Column]
      ,[Join Column]
      ,[Column2]
      ,[Column3]
      ,[Column4]
      ,[Column5]
      ,[Column6]
      ,[Column7]
      ,[Condition Column]
      ,[Condition2 Data]
  FROM [schema].[table] AS s
  where [Condition Column] like '%Conditon2%'
  Group by
	   [Key Column]
      ,[Date Column]
      ,[Join Column]
      ,[Column2]
      ,[Column3]
      ,[Column4]
      ,[Column5]
      ,[Column6]
      ,[Column7]
      ,[Condition Column]
      ,[Condition2 Data]
),

Condition3 as 
(SELECT Distinct
	   [Key Column]
      ,[Date Column]
      ,[Join Column]
      ,[Column2]
      ,[Column3]
      ,[Column4]
      ,[Column5]
      ,[Column6]
      ,[Column7]
      ,[Condition Column]
      ,[Condition3 Data]
  FROM [schema].[table] AS s
  where [Condition Column] like '%Conditon3%'
  Group by
	   [Key Column]
      ,[Date Column]
      ,[Join Column]
      ,[Column2]
      ,[Column3]
      ,[Column4]
      ,[Column5]
      ,[Column6]
      ,[Column7]
      ,[Condition Column]
      ,[Condition3 Data]
)
SELECT Distinct
	   [Key Column]
      ,[Date Column]
      ,[Join Column]
      ,[Column2]
      ,[Column3]
      ,[Column4]
      ,[Column5]
      ,[Column6]
      ,[Column7]
      ,[Condition Column]
      ,[Condition1 Data]
      ,[Condition2 Data]
      ,[Condition3 Data]
	  from Condition1 c
	  left outer join Condition1 a on c.[Condition Column] = a.[Condition Column]
      left outer join Condition1 b on c.[Condition Column] = b.[Condition Column]
