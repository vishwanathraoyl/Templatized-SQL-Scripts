--The below query can be adapted to get latest records for a given set of data by date

cte as (
    select distinct
        KeyColumn
        , DateColumn
        , Column1
        , Column2
        , Column3
        , Column4
        , Column5
        , ranking = rank() over (partition by KeyColumn, Column1 order by DateColumn desc)
    from
        schema.table
)

select
        KeyColumn
        , DateColumn
        , Column1
        , Column2
        , Column3
        , Column4
        , Column5
        from cte
where ranking = 1