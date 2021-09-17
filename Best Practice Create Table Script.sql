CREATE TABLE [Schema].[Table]
(
    [Key Column] [int] NULL,
    [DateColumn] [date] NULL,
    [Column2] [NVARCHAR] (255) NULL, --ideally all of these are different keys, but in rare cases can be values or unavoidable dim data
    [Column3] [NVARCHAR] (255) NULL,
    [Column4] [NVARCHAR] (255) NULL,
    [Column5] [NVARCHAR] (255) NULL,
    [Column6] [NVARCHAR] (255) NULL,
    [Column7] [NVARCHAR] (255) NULL,
	[Channe8] [NVARCHAR] (255) NULL,
	[Values1] [FLOAT] NULL,
	[Values2] [FLOAT] NULL
WITH
(
	DISTRIBUTION = HASH ( [Key Column]  ),
	CLUSTERED COLUMNSTORE INDEX
)