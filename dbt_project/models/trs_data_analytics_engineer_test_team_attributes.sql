 SELECT  
        cast(id as integer)                AS id, 
        cast(team_fifa_api_id 
            as integer)                    AS team_fifa_api_id, 
        cast(team_api_id as integer)       AS team_api_id, 
        cast(replace(date, ' 00:00:00', ''))   AS date, 
        cast(buildUpPlaySpeed 
            as integer)                    AS build_up_play_speed, 
        upper(buildUpPlaySpeedClass)       AS build_up_play_speed_class, 
        cast(buildUpPlayDribbling 
            as integer)                    AS build_up_play_dribbling,
        upper(buildUpPlayDribblingClass)   AS build_up_play_dribbling_class, 
        cast(buildUpPlayPassing 
            as integer)                    AS build_up_play_passing, 
        upper(buildUpPlayPassingClass)     AS build_up_play_passing_class, 
        upper(buildUpPlayPositioningClass) AS build_up_play_positioning_class,
        cast(chanceCreationPassing 
            as integer)                    AS chance_creation_passing, 
        upper(chanceCreationPassingClass)  AS chance_creation_passing_class, 
        cast(chanceCreationCrossing 
            as integer)                    AS chance_creation_crossing, 
        upper(chanceCreationCrossingClass) AS chance_creation_crossing_class,
        cast(chanceCreationShooting 
            as integer)                    AS chance_creation_shooting, 
        upper(chanceCreationShootingClass) AS chance_creation_shooting_class, 
        upper(chanceCreationPositioningClass) AS chance_creation_positioning_class, 
        cast(defencePressure as integer)   AS defence_pressure,
        upper(defencePressureClass)        AS defence_pressure_class, 
        cast(defenceAggression as integer) AS defence_aggression, 
        upper(defenceAggressionClass)      AS defence_aggression_class, 
        cast(defenceTeamWidth as integer)  AS defence_team_width, 
        upper(defenceTeamWidthClass)       AS defence_team_width_class,
        upper(defenceDefenderLineClass)    AS defence_defender_line_class
    FROM {{ref('Team_Attributes_dbt')}}
