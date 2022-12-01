select 
nconst,			
primaryName,			
birthYear,			
deathYear,		
primaryProfession,			
knownForTitles	
from {{ source('movie', 'name_basic') }}


