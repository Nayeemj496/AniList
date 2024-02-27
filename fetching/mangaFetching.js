const axios = require("axios")
const oracledb = require("oracledb")
const connect = require("../connect")

const query = `
    query($page: Int) {
        Page(page: $page, perPage: 50) {
            media(type: MANGA) {
                id
                title {
                    romaji
                    english
                    native
                }
                format
                status
                description
                startDate {
                    year
                    month
                    day
                }
                endDate {
                    year
                    month
                    day
                }
                chapters
                volumes
                countryOfOrigin
                source
                hashtag
                trailer {
                    site
                    thumbnail
                }
                coverImage {
                    large
                    color
                }
                bannerImage
                genres
                externalLinks {
                    url
                }
            }

            pageInfo {
                total
                perPage
                currentPage
                lastPage
                hasNextPage
            }
        }
    }
`

// MANGA_ID INT PRIMARY KEY,
// ROMAJI VARCHAR2(200), 
// ENGLISH VARCHAR2(200),
// NATIVE VARCHAR2(200),
// FORMAT VARCHAR2(20) NOT NULL,
// STATUS VARCHAR2(20) NOT NULL,
// DESCRIPTION VARCHAR2(1000) NOT NULL,
// START_YEAR INT NOT NULL,
// START_MONTH INT NOT NULL,
// START_DAY INT NOT NULL,
// END_YEAR INT,
// END_MONTH INT, 
// END_DAY INT,
// CHAPTERS INT,
// VOLUMES INT,
// COUNTRY_OF_ORIGIN VARCHAR2(20) NOT NULL,
// SOURCE VARCHAR2(20) NOT NULL,
// HASHTAG VARCHAR2(500),
// TRAILER_SITE VARCHAR2(500),
// TRAILER_THUMBNAIL VARCHAR2(500),
// COVER_IMAGE VARCHAR2(500), 
// COVER_IMAGE_COLOR VARCHAR2(10),
// BANNER_IMAGE VARCHAR2(500),
// MANGA_URL VARCHAR2(500)

const sqlManga = `
    INSERT INTO MANGA(MANGA_ID, ROMAJI, ENGLISH, NATIVE, FORMAT, STATUS, DESCRIPTION, START_YEAR, START_MONTH, START_DAY, END_YEAR, END_MONTH, END_DAY, CHAPTERS, VOLUMES, COUNTRY_OF_ORIGIN, SOURCE, COVER_IMAGE, COVER_IMAGE_COLOR, BANNER_IMAGE, MANGA_URL)
        VALUES (:id, :romaji, :english, :native, :format, :status, :description, :startYear, :startMonth, :startDay, :endYear, :endMonth, :endDay, :chapters, :volumes, :origin, :source, :coverImage, :coverImageColor, :bannerImage, :mangaUrl)
`

const mangas = new Array()
const genres = new Set()

const insertToDB = async (mangas) => {
    const connection = await connect()

    for(let i = 0; i < mangas.length; ++i) {
        await connection.execute(sqlManga, {
            id: i + 1,
            romaji: mangas[i].title.romaji,
            english: mangas[i].title.english,
            native: mangas[i].title.native,
            format: mangas[i].format,
            status: mangas[i].status,
            description: mangas[i].description,
            startYear: mangas[i].startDate.year,
            startMonth: mangas[i].startDate.month,
            startDay: mangas[i].startDate.day,
            endYear: mangas[i].endDate.year,
            endMonth: mangas[i].endDate.month,
            endDay: mangas[i].endDate.day,
            chapters: mangas[i].chapters,
            volumes: mangas[i].volumes, 
            origin: mangas[i].countryOfOrigin,
            source: mangas[i].source,
            coverImage: mangas[i].coverImage.large || null, 
            coverImageColor: mangas[i].coverImage.color || null, 
            bannerImage: mangas[i].bannerImage || null, 
            mangaUrl: mangas[i].externalLinks && mangas[i].externalLinks[0] && mangas[i].externalLinks[0].url
        })

        await connection.commit()

        console.log("successful insertion", i)
    }
    
    await connection.close()
}


async function getManga(page=1) {
    if(page > 2) {
        console.log(mangas[58])
        await insertToDB(mangas)
        
        return
    }

    let obj = {
        method: "POST",
        url: "https://graphql.anilist.co",
        data: {
            query,
            variables: { page }
        },
        headers: {
            "Content-Type": "application/json",
            Accept: "application/json"
        }
    }

    const response = await axios(obj)

    const data = response.data.data.Page

    for(let i = 0; i < data.media.length; ++i) {
        mangas.push(data.media[i])
    }

    for(let i = 0; i < data.media.length; ++i) {
        for(let j = 0; j < data.media[i].genres.length; ++j) {
            genres.add(data.media[i].genres[j])
        }
    }

    console.log(data.media.length, data.pageInfo)

    await getManga(page + 1)
}

getManga()

