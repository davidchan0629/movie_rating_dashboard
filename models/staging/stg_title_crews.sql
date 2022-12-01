select 
tconst,		
director_unnested,			
writers_unnested
from {{ source('movie', 'title_crews') }}