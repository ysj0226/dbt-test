{{ config(
    materialized = "table",
    engine = "MergeTree()",
    order_by = "avg_math"
) }}


with stu as(

    select
        col6 as avg_math,
        col7 as avg_writing,
        col8 as avg_reading

    from fh_mytable_mt
)

select * from stu