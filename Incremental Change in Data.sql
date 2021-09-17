--The below query can be adapted to get the incremental change in records based on date for any combination of columns

cte as (
    select distinct
        KeyColumn
        , DateColumn
        , Column1
        , Column2
        , Column3
        , Column4
        , Column5
        , rnk = rank() over (partition by KeyColumn, Column1 order by DateColumn asc)
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
where rnk = 1