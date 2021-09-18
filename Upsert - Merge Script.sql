--This is a merge script used to upsert data from a staging table to the final fact
CREATE PROCEDURE [schema].[Upsert]
AS
MERGE [Schema].[Table] AS T  
USING [Schema].[Table_Staging] AS S 
ON T.KeyColumn = S.KeyColumn
WHEN MATCHED THEN 

  UPDATE SET

    T.[Column1] =  S.[Column1],
    T.[Column1] = S.[Column1],
    T.[Column1] = S.[Column1,
    T.[Column1] = S.[Column1],
    T.[Column1] = S.[Column1],
    T.[KeyColumn] = S.[KeyColumn]

WHEN NOT MATCHED THEN
  INSERT 
  (  [Column1]
    ,[Column2]
    ,[Column3]
    ,[Column4] 
    ,[Column5] 
    ,[KeyColumn]
  )
VALUES 
(
     S.[Column1]
    ,S.[Column2]
    ,S.[Column3]
    ,S.[Column4] 
    ,S.[Column5] 
    ,S.[KeyColumn]

);

GO