--The Below can be used to separate multiple data stored in a column with delimiters into different rows

SELECT [Key Column]
      ,[Date Column]
      ,[Column1]
      ,[Column2]
      ,[Column3]
      ,[Column4]
      ,[Column5]
      ,[Column6]
      ,[Column with Data in delimited strings]
      ,Value as [Split Column by Delimiters]
  FROM [Schema].[Table] s
    CROSS APPLY STRING_SPLIT(s.[Column with Data in delimited strings], ';') as f;