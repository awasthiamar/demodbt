with raw_review as(
select * from {{source('airbnb','review')}}
)

select 
	LISTING_ID,
	DATE as review_date,
	REVIEWER_NAME ,
	COMMENTS as review_comments,
	SENTIMENT as review_sentiment
 from raw_review