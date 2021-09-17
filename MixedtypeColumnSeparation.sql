---The below query is used to separate a column with mixed numerical and string data types into different columns, 
--can be helpful if you need to breakdown survey responses or such data points

AS with MixedtypeColumnSeparation as 
(select
        [Key Column]
      ,[Date Column]
      ,[Column1]
      ,[Column2]
      ,[Column3]
      ,[Column4]
      ,[Column5]
      ,[Column6]
      ,[Column7]
      ,[Column8]
	  ,CASE ISNUMERIC(MixedTypeColumn + 'e0') WHEN 1 then CAST(MixedTypeColumn as float) else NULL end as Numerical
      ,CASE WHEN ISNUMERIC(MixedTypeColumn) = 0 then MixedTypeColumn else NULL end as [String Response]

      From [schema].[Table]

      Group By
        [Key Column]
      ,[Date Column]
      ,[Column1]
      ,[Column2]
      ,[Column3]
      ,[Column4]
      ,[Column5]
      ,[Column6]
      ,[Column7]
      ,[Column8]
	  ,CASE ISNUMERIC(MixedTypeColumn + 'e0') WHEN 1 then CAST(MixedTypeColumn as float) else NULL end
      ,CASE WHEN ISNUMERIC(MixedTypeColumn) = 0 then MixedTypeColumn else NULL end
)

select distinct
   [Key Column]
      ,[Date Column]
      ,[Column1]
      ,[Column2]
      ,[Column3]
      ,[Column4]
      ,[Column5]
      ,[Column6]
      ,[Column7]
      ,[Column8]
	  ,Numerical
      ,[String Response]
	  FROM MixedtypeColumnSeparation
	GROUP BY
   [Key Column]
      ,[Date Column]
      ,[Column1]
      ,[Column2]
      ,[Column3]
      ,[Column4]
      ,[Column5]
      ,[Column6]
      ,[Column7]
      ,[Column8]
	  ,Numerical
      ,[String Response];

