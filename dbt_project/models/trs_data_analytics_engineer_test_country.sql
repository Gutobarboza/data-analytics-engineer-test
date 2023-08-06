
WITH 
    -- Retirando dados nulos. Esta tabela é normalizada não faz sentido ter dados nulos para id ou name.
    excludes_nulls as (
        SELECT 
            * 
        FROM {{ref('Country')}}
            WHERE name is not null),
            
    -- Há ids duplicados para dados com o mesmo significados em línguas diferentes.
    -- Eliminando os ids duplicado em português.
    excludes_portuguese_name as (
        SELECT 
            *
        FROM excludes_nulls
        WHERE name not in ('Bélgica','Inglaterra','França','Alemanha','Itália'))
    
    -- Transformando o id em inteiro e colocando o nome em uppercase.
    SELECT 
        cast(id as integer) as id,
        upper(name) as name
    FROM excludes_portuguese_name
