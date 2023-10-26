WITH raw_listings AS (

 --SELECT * FROM AIRBNB.RAW.RAW_LISTINGS --instead of accessing directly reference it by source
 select * from {{source('airbnb','listings')}}
)
SELECT
 id AS listing_id,
 name AS listing_name,
 listing_url,
 room_type,
 minimum_nights,
 host_id,
 price AS price_str,
 created_at,
 updated_at
FROM
 raw_listings