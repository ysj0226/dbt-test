{{ config(materialized='table', unlogged=True) }}

with tongfenxuanshou as (
    select col6,
           col7,
           col8,
           fh_data.airbyte_fh_mytable_mt.col1 as mt_col1,
           fh_data.airbyte_fh_mytable_mt.col2 as mt_col2,
           fh_data.airbyte_fh_mytable_mt.col3 as mt_col3,
           fh_data.airbyte_fh_mytable_mt.col4 as mt_col4,
           fh_data.airbyte_fh_mytable_mt.col5 as mt_col5,
           fh_data.airbyte_fh_mytable_dist.col1 as dist_col1,
           fh_data.airbyte_fh_mytable_dist.col2 as dist_col2,
           fh_data.airbyte_fh_mytable_dist.col3 as dist_col3,
           fh_data.airbyte_fh_mytable_dist.col4 as dist_col4,
           fh_data.airbyte_fh_mytable_dist.col5 as dist_col5
    from fh_data.airbyte_fh_mytable_mt
             left join fh_data.airbyte_fh_mytable_dist using (col6, col7, col8)
    order by col6 desc)
select * from tongfenxuanshou