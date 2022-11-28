select 
tconst,
titleType,			
primaryTitle,			
originalTitle,			
CAST(isAdult AS INT64) AS isAdult,			
CAST(startYear AS INT64) AS startYear,
CAST(endYear AS INT64) AS endYear,			
CAST(runtimeMinutes AS INT64) AS runtimeMinutes,			
genres_unnest	
from {{ source('movie', 'title_basic') }}
WHERE CAST(startYear AS INT64) BETWEEN 1991 AND 2022