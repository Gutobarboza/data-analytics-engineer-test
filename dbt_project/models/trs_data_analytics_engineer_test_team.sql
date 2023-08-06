SELECT 
	id::int4, 
	team_api_id::int4, 
	team_fifa_api_id::int4, 
	upper(team_long_name) as team_long_name, 
	team_short_name 
FROM {{ref('Team')}}""")
