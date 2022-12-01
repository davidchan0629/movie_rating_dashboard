SELECT
DISTINCT(a.tconst),
b.primaryTitle,
b.isAdult,
b.startYear,
b.runtimeMinutes,
a.averageRating,
a.numVotes 
FROM {{ref('stg_title_ratings')}} a
LEFT JOIN {{ref('stg_title_basic')}} b
ON a.tconst = b.tconst
WHERE b.primaryTitle IS NOT NULL
ORDER BY 1


