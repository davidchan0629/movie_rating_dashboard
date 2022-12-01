select 
tconst,	
averageRating,
numVotes
from {{ source('movie', 'title_ratings') }}