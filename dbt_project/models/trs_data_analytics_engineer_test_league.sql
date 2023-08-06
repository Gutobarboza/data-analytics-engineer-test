    -- Colocando a lista em ordem de id e colocando o nome da liga em uppercase
        SELECT 
            id,
            country_id,
            upper(name) as name
        FROM {{ref('League')}}
        ORDER BY id
