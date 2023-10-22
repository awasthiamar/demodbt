{{
    config(
        materialized='table'
    )
}}

with src_listing as(
    SELECT * from {{ref("src_listing")}}
)
select 
LISTING_ID,
LISTING_NAME,
LISTING_URL,
ROOM_TYPE,
case 
when MINIMUM_NIGHTS=0 then 1
else MINIMUM_NIGHTS
end as MINIMUM_NIGHTS,
host_id,
replace(
    price_str,
    '$'
):: NUMBER(
    10,2
) as price,
CREATED_AT,
updated_at
from src_listing