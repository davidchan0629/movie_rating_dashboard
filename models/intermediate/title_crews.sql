SELECT 
a.tconst, 
a.primaryTitle, 
a.originalTitle, 
a.isAdult, 
a.startYear, 
a.runtimeMinutes, 
a.genres_unnest,
c.averageRating,
c.numVotes, 
b.primaryName,
b.primaryProfession
FROM {{ref('stg_title_basic')}} a 
LEFT JOIN {{ref('stg_name_basic')}} b
ON a.tconst = b.knownForTitles
LEFT JOIN {{ref('stg_title_ratings')}} c
ON a.tconst = c.tconst
WHERE 
b.primaryProfession IN ('actor', 'producer', 'actress', 'editor', 'director', 'writer')
AND
a.startYear BETWEEN 1991 AND 2022