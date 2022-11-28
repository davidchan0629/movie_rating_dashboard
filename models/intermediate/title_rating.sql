SELECT 
a.tconst, 
a.primaryTitle, 
a.originalTitle, 
a.isAdult, 
a.startYear, 
a.runtimeMinutes, 
a.genres_unnest, 
b.averageRating, 
b.numVotes 
FROM {{ref('stg_title_basic')}} a 
LEFT JOIN {{ref('stg_title_ratings')}} b
ON a.tconst = b.tconst
WHERE 
titleType = 'movie'
AND
startYear BETWEEN 1991 AND 2022