{{
    config(
        materialized='table'
    )
}}

WITH src_host AS (
 SELECT
 *
 FROM
 {{ ref('src_host') }}
)
SELECT
 host_id,
 NVL(
 host_name,
 'Anonymous'
 ) AS host_name,
 is_superhost,
 CREATED_AT,
 updated_at
 from src_host