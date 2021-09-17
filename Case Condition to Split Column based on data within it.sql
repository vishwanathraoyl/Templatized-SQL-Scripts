--- The below can be used to separate or mark a specific type of or data point within a column as binary and split into different columns

SELECT
	   [Key Column]
      ,[Date Column]
      ,[Column1]
      ,[Column2]
      ,[Column3]
      ,[Column4]
      ,[Column5]
      ,[Column6]
      ,[Column7]
	  ,Case when s.Column8 like '%Condition1%' then 1 else 0 end as Condtion1
	  ,Case when s.Column8 like '%Condition2%' then 1 else 0 end as Condition2
	  ,Case when s.Column8 like '%Condition3%' then 1 else 0 end as Condition3
  FROM [schema].[table] AS s
  Group by
	   [Key Column]
      ,[Date Column]
      ,[Column1]
      ,[Column2]
      ,[Column3]
      ,[Column4]
      ,[Column5]
      ,[Column6]
      ,[Column7]
	  ,Case when s.Column8 like '%Condition1%' then 1 else 0 end 
	  ,Case when s.Column8 like '%Condition2%' then 1 else 0 end
	  ,Case when s.Column8 like '%Condition3%' then 1 else 0 end;