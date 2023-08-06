SELECT 
        id, 
        country_id, 
        league_id, 
        season, 
        stage, 
        cast(replace(date, ' 00:00:00','') as date) AS date, 
        match_api_id, 
        home_team_api_id, 
        away_team_api_id, 
        home_team_goal, 
        away_team_goal, 
        cast(home_player_1 as integer) AS home_player_1, 
        cast(home_player_2 as integer) AS home_player_2, 
        cast(home_player_3 as integer) AS home_player_3, 
        cast(home_player_4 as integer) AS home_player_4, 
        cast(home_player_5 as integer) AS home_player_5, 
        cast(home_player_6 as integer) AS home_player_6, 
        cast(home_player_7 as integer) AS home_player_7, 
        cast(home_player_8 as integer) AS home_player_8, 
        cast(home_player_9 as integer) AS home_player_9, 
        cast(home_player_10 as integer) AS home_player_10, 
        cast(home_player_11 as integer) AS home_player_11, 
        cast(away_player_1 as integer) AS away_player_1, 
        cast(away_player_2 as integer) AS away_player_2, 
        cast(away_player_3 as integer) AS away_player_3, 
        cast(away_player_4 as integer) AS away_player_4, 
        cast(away_player_5 as integer) AS away_player_5, 
        cast(away_player_6 as integer) AS away_player_6, 
        cast(away_player_7 as integer) AS away_player_7, 
        cast(away_player_8 as integer) AS away_player_8, 
        cast(away_player_9 as integer) AS away_player_9, 
        cast(away_player_10 as integer) AS away_player_10, 
        cast(away_player_11 as integer) AS away_player_11,
        goal, 
        shoton, 
        shotoff    AS shot_off,
        foulcommit AS foul_commit, 
        card, 
        cross, 
        corner, 
        possession, 
        B365H      AS b365H, 
        B365D      AS b365d, 
        B365A      AS b365A, 
        BWH        AS bwh, 
        BWD        AS bwd, 
        BWA        AS bwa,
        IWH        AS iwh, 
        IWD        AS iwd, 
        IWA        AS iwa, 
        LBH        AS lbh, 
        LBD        AS lbd, 
        LBA        AS lba, 
        PSH        AS psh, 
        PSD        AS psd, 
        PSA        AS psa, 
        WHH        AS whh, 
        WHD        AS whd, 
        WHA        AS wha, 
        SJH        AS sjh, 
        SJD        AS sjd, 
        SJA        AS sja, 
        VCH        AS vch, 
        VCD        AS vcd, 
        VCA        AS vca, 
        GBH        AS gbh, 
        GBD        AS gbd, 
        GBA        AS gba, 
        BSH        AS bsh, 
        BSD        AS bsd, 
        BSA        AS bsa 
    FROM {{ref('Match')}}
    WHERE TRUE
        AND (country_id IS NOT NULL OR league_id IS NOT NULL)
        AND home_team_api_id IS NOT NULL
        AND away_team_api_id IS NOT NULL
        AND home_player_1 IS NOT NULL
        AND home_player_2 IS NOT NULL 
        AND home_player_3 IS NOT NULL 
        AND home_player_4 IS NOT NULL 
        AND home_player_5 IS NOT NULL 
        AND home_player_6 IS NOT NULL 
        AND home_player_7 IS NOT NULL 
        AND home_player_8 IS NOT NULL 
        AND home_player_9 IS NOT NULL 
        AND home_player_10 IS NOT NULL 
        AND home_player_11 IS NOT NULL 
        AND away_player_1 IS NOT NULL
        AND away_player_2 IS NOT NULL 
        AND away_player_3 IS NOT NULL 
        AND away_player_4 IS NOT NULL 
        AND away_player_5 IS NOT NULL 
        AND away_player_6 IS NOT NULL 
        AND away_player_7 IS NOT NULL 
        AND away_player_8 IS NOT NULL 
        AND away_player_9 IS NOT NULL 
        AND away_player_10 IS NOT NULL 
        AND away_player_11 IS NOT NULL
