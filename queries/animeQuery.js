const sqlAnime = `
    SELECT *
    FROM ANIME
    WHERE UPPER(ROMAJI) LIKE '%' || UPPER(:name) || 
    '%' OR UPPER(ENGLISH) LIKE '%' || UPPER(:name) || 
    '%' OR NATIVE = :name
    ORDER BY ENGLISH
`;

const sqlGenre = `
    SELECT *
    FROM ANIME A JOIN ANIME_GENRE AG ON A.ANIME_ID = AG.ANIME_ID JOIN GENRE G ON AG.GENRE_ID = G.GENRE_ID 
	WHERE UPPER(GENRE_NAME) LIKE '%' || UPPER(:genre) || '%'
	ORDER BY ENGLISH
`

const sqlYear = `
    SELECT *
    FROM ANIME
    WHERE SEASON_YEAR = :year
    ORDER BY ENGLISH
`
const sqlSeason = `
    SELECT *
    FROM ANIME
    WHERE UPPER(SEASON) LIKE '%' || UPPER(:season) || '%'
	ORDER BY ENGLISH
`

const sqlFormat = `
    SELECT *
    FROM ANIME
    WHERE UPPER(FORMAT) LIKE '%' || UPPER(:format) || '%'
    ORDER BY ENGLISH
`

const sqlAnimeGenre = `
    SELECT * FROM (
    SELECT A.*, G.*
    FROM ANIME A
    JOIN ANIME_GENRE AG ON A.ANIME_ID = AG.ANIME_ID
    JOIN GENRE G ON AG.GENRE_ID = G.GENRE_ID
    WHERE UPPER(ENGLISH) LIKE '%' || UPPER(:name) || '%'

    INTERSECT

    SELECT A.*, G.*
    FROM ANIME A
    JOIN ANIME_GENRE AG ON A.ANIME_ID = AG.ANIME_ID
    JOIN GENRE G ON AG.GENRE_ID = G.GENRE_ID
    WHERE UPPER(GENRE_NAME) LIKE '%' || UPPER(:genre) || '%'
    ) ANIMES
    ORDER BY ANIMES.ENGLISH
`

const sqlAnimeYear = `
    SELECT * FROM (
        SELECT A.*
        FROM ANIME A
        WHERE UPPER(ENGLISH) LIKE '%' || UPPER(:name) || '%' OR
        UPPER(ROMAJI) LIKE '%' || UPPER(:name) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE SEASON_YEAR = :year
    ) Animes
    ORDER BY Animes.ENGLISH
`

const sqlAnimeSeason = `
    SELECT * FROM (
        SELECT A.*
        FROM ANIME A
        WHERE UPPER(ENGLISH) LIKE '%' || UPPER(:name) || '%' OR
        UPPER(ROMAJI) LIKE '%' || UPPER(:name) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE UPPER(SEASON) LIKE '%' || UPPER(:season) || '%'
    ) Animes
    ORDER BY Animes.ENGLISH
`

const sqlAnimeFormat = `
    SELECT * FROM (
        SELECT A.*
        FROM ANIME A
        WHERE UPPER(ENGLISH) LIKE '%' || UPPER(:name) || '%' OR
        UPPER(ROMAJI) LIKE '%' || UPPER(:name) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE UPPER(FORMAT) LIKE '%' || UPPER(:format) || '%'
    ) Animes
    ORDER BY Animes.ENGLISH
`

const sqlGenreYear = `
    SELECT * FROM (
        SELECT A.*, G.*
        FROM ANIME A
        JOIN ANIME_GENRE AG ON A.ANIME_ID = AG.ANIME_ID
        JOIN GENRE G ON AG.GENRE_ID = G.GENRE_ID
        WHERE UPPER(GENRE_NAME) LIKE '%' || UPPER(:genre) || '%'

        INTERSECT

        SELECT A.*, G.*
        FROM ANIME A
        JOIN ANIME_GENRE AG ON A.ANIME_ID = AG.ANIME_ID
        JOIN GENRE G ON AG.GENRE_ID = G.GENRE_ID
        WHERE SEASON_YEAR = :year
    ) Animes
    ORDER BY Animes.ENGLISH
`

const sqlGenreSeason = `
    SELECT * FROM (
        SELECT A.*
        FROM ANIME A
        JOIN ANIME_GENRE AG ON A.ANIME_ID = AG.ANIME_ID
        JOIN GENRE G ON AG.GENRE_ID = G.GENRE_ID
        WHERE UPPER(GENRE_NAME) LIKE '%' || UPPER(:genre) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE UPPER(SEASON) LIKE '%' || UPPER(:season) || '%'
    ) Animes
    ORDER BY Animes.ENGLISH
`

const sqlGenreFormat = `
    SELECT * FROM (
        SELECT A.*
        FROM ANIME A
        JOIN ANIME_GENRE AG ON A.ANIME_ID = AG.ANIME_ID
        JOIN GENRE G ON AG.GENRE_ID = G.GENRE_ID
        WHERE UPPER(GENRE_NAME) LIKE '%' || UPPER(:genre) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE UPPER(FORMAT) LIKE '%' || UPPER(:format) || '%'
    ) Animes
    ORDER BY Animes.ENGLISH
`

const sqlYearSeason = `
    SELECT * FROM (
        SELECT A.*
        FROM ANIME A
        WHERE SEASON_YEAR = :year
        
        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE UPPER(SEASON) LIKE '%' || UPPER(:season) || '%'
    ) Animes
    ORDER BY Animes.ENGLISH    
`

const sqlYearFormat = `
    SELECT * FROM (
        SELECT A.*
        FROM ANIME A
        WHERE SEASON_YEAR = :year

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE UPPER(FORMAT) LIKE '%' || UPPER(:format) || '%'
    ) Animes
    ORDER BY Animes.ENGLISH     
`

const sqlSeasonFormat = `
    SELECT * FROM (
        SELECT A.*
        FROM ANIME A
        WHERE UPPER(SEASON) LIKE '%' || UPPER(:season) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE UPPER(FORMAT) LIKE '%' || UPPER(:format) || '%'
    ) Animes
    ORDER BY Animes.ENGLISH    
`

// all combinations of three search elements

const sqlAnimeGenreYear = `
    SELECT * FROM (
        SELECT A.*
        FROM ANIME A
        WHERE UPPER(ENGLISH) LIKE '%' || UPPER(:name) || '%' OR
        UPPER(ROMAJI) LIKE '%' || UPPER(:name) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        JOIN ANIME_GENRE AG ON A.ANIME_ID = AG.ANIME_ID
        JOIN GENRE G ON AG.GENRE_ID = G.GENRE_ID
        WHERE UPPER(GENRE_NAME) LIKE '%' || UPPER(:genre) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE SEASON_YEAR = :year

    ) Animes
    ORDER BY Animes.ENGLISH  
`

const sqlAnimeGenreSeason = `
    SELECT * FROM (
        SELECT A.*
        FROM ANIME A
        WHERE UPPER(ENGLISH) LIKE '%' || UPPER(:name) || '%' OR
        UPPER(ROMAJI) LIKE '%' || UPPER(:name) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        JOIN ANIME_GENRE AG ON A.ANIME_ID = AG.ANIME_ID
        JOIN GENRE G ON AG.GENRE_ID = G.GENRE_ID
        WHERE UPPER(GENRE_NAME) LIKE '%' || UPPER(:genre) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE UPPER(SEASON) LIKE '%' || UPPER(:season) || '%'

    ) Animes
    ORDER BY Animes.ENGLISH   
`

const sqlAnimeGenreFormat = `
    SELECT * FROM (
        SELECT A.*
        FROM ANIME A
        WHERE UPPER(ENGLISH) LIKE '%' || UPPER(:name) || '%' OR
        UPPER(ROMAJI) LIKE '%' || UPPER(:name) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        JOIN ANIME_GENRE AG ON A.ANIME_ID = AG.ANIME_ID
        JOIN GENRE G ON AG.GENRE_ID = G.GENRE_ID
        WHERE UPPER(GENRE_NAME) LIKE '%' || UPPER(:genre) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE UPPER(FORMAT) LIKE '%' || UPPER(:format) || '%'

    ) Animes
    ORDER BY Animes.ENGLISH   
`

const sqlAnimeYearSeason = `
    SELECT * FROM (
        SELECT A.*
        FROM ANIME A
        WHERE UPPER(ENGLISH) LIKE '%' || UPPER(:name) || '%' OR
        UPPER(ROMAJI) LIKE '%' || UPPER(:name) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE SEASON_YEAR = :year

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE UPPER(SEASON) LIKE '%' || UPPER(:season) || '%'

    ) Animes
    ORDER BY Animes.ENGLISH  
`

const sqlAnimeYearFormat = `
    SELECT * FROM (
        SELECT A.*
        FROM ANIME A
        WHERE UPPER(ENGLISH) LIKE '%' || UPPER(:name) || '%' OR
        UPPER(ROMAJI) LIKE '%' || UPPER(:name) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE SEASON_YEAR = :year

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE UPPER(FORMAT) LIKE '%' || UPPER(:format) || '%'

    ) Animes
    ORDER BY Animes.ENGLISH 
`

const sqlAnimeSeasonFormat = `
    SELECT * FROM (
        SELECT A.*
        FROM ANIME A
        WHERE UPPER(ENGLISH) LIKE '%' || UPPER(:name) || '%' OR
        UPPER(ROMAJI) LIKE '%' || UPPER(:name) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE UPPER(SEASON) LIKE '%' || UPPER(:season) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE UPPER(FORMAT) LIKE '%' || UPPER(:format) || '%'

    ) Animes
    ORDER BY Animes.ENGLISH
`

const sqlGenreYearSeason = `
    SELECT * FROM (
        SELECT A.*
        FROM ANIME A
        JOIN ANIME_GENRE AG ON A.ANIME_ID = AG.ANIME_ID
        JOIN GENRE G ON AG.GENRE_ID = G.GENRE_ID
        WHERE UPPER(GENRE_NAME) LIKE '%' || UPPER(:genre) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE SEASON_YEAR = :year

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE UPPER(SEASON) LIKE '%' || UPPER(:season) || '%'

    ) Animes
    ORDER BY Animes.ENGLISH  
`

const sqlGenreYearFormat = `
    SELECT * FROM (
        SELECT A.*
        FROM ANIME A
        JOIN ANIME_GENRE AG ON A.ANIME_ID = AG.ANIME_ID
        JOIN GENRE G ON AG.GENRE_ID = G.GENRE_ID
        WHERE UPPER(GENRE_NAME) LIKE '%' || UPPER(:genre) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE SEASON_YEAR = :year

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE UPPER(FORMAT) LIKE '%' || UPPER(:format) || '%'

    ) Animes
    ORDER BY Animes.ENGLISH 
`

const sqlGenreSeasonFormat = `
    SELECT * FROM (
        SELECT A.*
        FROM ANIME A
        JOIN ANIME_GENRE AG ON A.ANIME_ID = AG.ANIME_ID
        JOIN GENRE G ON AG.GENRE_ID = G.GENRE_ID
        WHERE UPPER(GENRE_NAME) LIKE '%' || UPPER(:genre) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE UPPER(SEASON) LIKE '%' || UPPER(:season) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE UPPER(FORMAT) LIKE '%' || UPPER(:format) || '%'

    ) Animes
    ORDER BY Animes.ENGLISH    
`

const sqlYearSeasonFormat = `
    SELECT * FROM (
        SELECT A.*
        FROM ANIME A
        WHERE SEASON_YEAR = :year

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE UPPER(SEASON) LIKE '%' || UPPER(:season) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE UPPER(FORMAT) LIKE '%' || UPPER(:format) || '%'

    ) Animes
    ORDER BY Animes.ENGLISH  
`

// all combinations of four search elements

const sqlAnimeGenreYearSeason = `
    SELECT * FROM (
        SELECT A.*
        FROM ANIME A
        WHERE UPPER(ENGLISH) LIKE '%' || UPPER(:name) || '%' OR
        UPPER(ROMAJI) LIKE '%' || UPPER(:name) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        JOIN ANIME_GENRE AG ON A.ANIME_ID = AG.ANIME_ID
        JOIN GENRE G ON AG.GENRE_ID = G.GENRE_ID
        WHERE UPPER(GENRE_NAME) LIKE '%' || UPPER(:genre) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE SEASON_YEAR = :year

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE UPPER(SEASON) LIKE '%' || UPPER(:season) || '%'

    ) Animes
    ORDER BY Animes.ENGLISH
`  

const sqlAnimeGenreYearFormat = `
    SELECT * FROM (
        SELECT A.*
        FROM ANIME A
        WHERE UPPER(ENGLISH) LIKE '%' || UPPER(:name) || '%' OR
        UPPER(ROMAJI) LIKE '%' || UPPER(:name) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        JOIN ANIME_GENRE AG ON A.ANIME_ID = AG.ANIME_ID
        JOIN GENRE G ON AG.GENRE_ID = G.GENRE_ID
        WHERE UPPER(GENRE_NAME) LIKE '%' || UPPER(:genre) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE SEASON_YEAR = :year

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE UPPER(FORMAT) LIKE '%' || UPPER(:format) || '%'

    ) Animes
    ORDER BY Animes.ENGLISH    
`  

const sqlAnimeGenreSeasonFormat = `
    SELECT * FROM (
        SELECT A.*
        FROM ANIME A
        WHERE UPPER(ENGLISH) LIKE '%' || UPPER(:name) || '%' OR
        UPPER(ROMAJI) LIKE '%' || UPPER(:name) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        JOIN ANIME_GENRE AG ON A.ANIME_ID = AG.ANIME_ID
        JOIN GENRE G ON AG.GENRE_ID = G.GENRE_ID
        WHERE UPPER(GENRE_NAME) LIKE '%' || UPPER(:genre) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE UPPER(SEASON) LIKE '%' || UPPER(:season) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE UPPER(FORMAT) LIKE '%' || UPPER(:format) || '%'

    ) Animes
    ORDER BY Animes.ENGLISH
`  

const sqlAnimeYearSeasonFormat = `
    SELECT * FROM (
        SELECT A.*
        FROM ANIME A
        WHERE UPPER(ENGLISH) LIKE '%' || UPPER(:name) || '%' OR
        UPPER(ROMAJI) LIKE '%' || UPPER(:name) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE SEASON_YEAR = :year

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE UPPER(SEASON) LIKE '%' || UPPER(:season) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE UPPER(FORMAT) LIKE '%' || UPPER(:format) || '%'

    ) Animes
    ORDER BY Animes.ENGLISH   
`  

const sqlGenreYearSeasonFormat = `
    SELECT * FROM (
        SELECT A.*
        FROM ANIME A
        JOIN ANIME_GENRE AG ON A.ANIME_ID = AG.ANIME_ID
        JOIN GENRE G ON AG.GENRE_ID = G.GENRE_ID
        WHERE UPPER(GENRE_NAME) LIKE '%' || UPPER(:genre) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE SEASON_YEAR = :year

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE UPPER(SEASON) LIKE '%' || UPPER(:season) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE UPPER(FORMAT) LIKE '%' || UPPER(:format) || '%'

    ) Animes
    ORDER BY Animes.ENGLISH    
`  

// all combinations of five seach element

const sqlAnimeGenreYearSeasonFormat = `
    SELECT * FROM (
        SELECT A.*
        FROM ANIME A
        WHERE UPPER(ENGLISH) LIKE '%' || UPPER(:name) || '%' OR
        UPPER(ROMAJI) LIKE '%' || UPPER(:name) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        JOIN ANIME_GENRE AG ON A.ANIME_ID = AG.ANIME_ID
        JOIN GENRE G ON AG.GENRE_ID = G.GENRE_ID
        WHERE UPPER(GENRE_NAME) LIKE '%' || UPPER(:genre) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE SEASON_YEAR = :year

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE UPPER(SEASON) LIKE '%' || UPPER(:season) || '%'

        INTERSECT

        SELECT A.*
        FROM ANIME A
        WHERE UPPER(FORMAT) LIKE '%' || UPPER(:format) || '%'

    ) Animes
    ORDER BY Animes.ENGLISH     
`  

module.exports = {sqlAnime, sqlGenre, sqlYear, sqlSeason, sqlFormat, sqlAnimeGenre, sqlAnimeYear, sqlAnimeSeason, sqlAnimeFormat, sqlGenreYear, sqlGenreSeason, sqlGenreFormat, sqlYearSeason, sqlYearFormat, sqlSeasonFormat, sqlAnimeGenreYear, sqlAnimeGenreSeason, sqlAnimeGenreFormat,sqlAnimeYearSeason, sqlAnimeYearFormat, sqlAnimeSeasonFormat, sqlGenreYearSeason, sqlGenreYearFormat, sqlGenreSeasonFormat, sqlYearSeasonFormat, sqlAnimeGenreYearSeason, sqlAnimeGenreYearFormat, sqlAnimeGenreSeasonFormat, sqlAnimeYearSeasonFormat, sqlGenreYearSeasonFormat, sqlAnimeGenreYearSeasonFormat,}