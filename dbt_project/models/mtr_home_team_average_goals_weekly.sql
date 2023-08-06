 WITH
	base_metric AS (
	    SELECT 
		-- Semana começando na segunda
		date_trunc('week', date) as week,
		home_team_goal
	    FROM {{ref('trs_data_analytics_engineer_test_team')}} AS team
		INNER JOIN {{ref('trs_data_analytics_engineer_test_match')}} AS match
		    ON team.team_api_id = match.home_team_api_id
	)

	    
	SELECT 
	    week,
	    AVG(home_team_goal) OVER (PARTITION BY week) as average_home_team_goals
	FROM base_metric
	GROUP BY week
	ORDER BY week DESC
