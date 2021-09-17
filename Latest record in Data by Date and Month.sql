--This query can be adapted to get latest record per month in a given table

with LatestbyMonth as (
    select 
        KeyColumn
        , Column1
        , mnth = eomonth(DateColumn)
        , MaxofDate = max(DateColumn)
    from 
        schema.table
    group by 
        KeyColumn
        , Column1
        , eomonth(DateColumn)
)

select
          a.KeyColumn
        , a.DateColumn
        , a.Column1
        , a.Column2
        , a.Column3
        , a.Column4
        , a.Column5
        from schema.table a
        inner join LatestbyMonth b on
            b.KeyColumn = a.KeyColumn
            and b.DateColumn = a.DateColumn
            and b.Column1 = a.Column1
            and b.mnth = eomonth(a.DateColumn)