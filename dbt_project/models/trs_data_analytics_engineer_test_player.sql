SELECT 
	id::int4, 
	player_api_id::int4, 
	upper(player_name) as player_name, 
	player_fifa_api_id::int4, 
	cast(replace(birthday, ' 00:00:00', '') as date)  as birthday, 
	height::float, 
	weight::float 
FROM {{ref('Player')}}
