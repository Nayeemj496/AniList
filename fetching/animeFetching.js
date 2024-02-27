const express = require("express")
const axios = require("axios")
const cors = require("cors")
const path = require("path")
const oracledb = require("oracledb")
const connect = require("../controllers/connect")

const query = `
    query($page: Int) {
        Page(page: $page, perPage: 50) {
            media(type: ANIME) {
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
                season
                seasonYear
                episodes
                duration
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
                relations {
                    edges {
                        node {
                            title {
                                romaji
                                english
                                native
                            }
                            type
                            format
                        }
                    }
                }
                studios {
                    edges {
                        node {
                            name
                            isAnimationStudio
                        }
                        isMain
                    }
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

const sqlAnime = `
    query ($name: String) {
        Media(type:ANIME, search: $name) {
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
            season
            seasonYear
            episodes
            duration
            countryOfOrigin
            source
            coverImage {
                large
                color
            }
            bannerImage
            externalLinks {
                url
            }
            relations {
                edges {
                    node {
                        title {
                            romaji
                            english
                            native
                        }
                        type
                        format
                    }
                }
            }
        }
    }
`;

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
// SEASON VARCHAR2(20) NOT NULL, 
//     SEASON_YEAR INT NOT NULL, 
//     EPISODES INT NOT NULL,
//     DURATION INT NOT NULL,


const sqlANIME = `
    INSERT INTO ANIME(ANIME_ID, ROMAJI, ENGLISH, NATIVE, FORMAT, STATUS, DESCRIPTION, START_YEAR, START_MONTH, START_DAY, END_YEAR, END_MONTH, END_DAY, SEASON, SEASON_YEAR, EPISODES, DURATION, COUNTRY_OF_ORIGIN, SOURCE, COVER_IMAGE, COVER_IMAGE_COLOR, BANNER_IMAGE, ANIME_URL, MANGA_ID)
        VALUES (:id, :romaji, :english, :native, :format, :status, :description, :startYear, :startMonth, :startDay, :endYear, :endMonth, :endDay, :season, :seasonYear, :episodes, :duration, :origin, :source, :coverImage, :coverImageColor, :bannerImage, :animeUrl, :mangaID)
`

const animes = new Array()
const genres = new Set()
const studios = new Set()
const producers = new Set()

const insertToDB = async (animes) => {
    const connection = await connect()

    for (let i = 0; i < animes.length; ++i) {
        await connection.execute(sqlAnime, {
            id: i + 1,
            romaji: animes[i].title.romaji,
            english: animes[i].title.english,
            native: animes[i].title.native,
            format: animes[i].format,
            status: animes[i].status,
            description: animes[i].description,
            startYear: animes[i].startDate.year,
            startMonth: animes[i].startDate.month,
            startDay: animes[i].startDate.day,
            endYear: animes[i].endDate.year,
            endMonth: animes[i].endDate.month,
            endDay: animes[i].endDate.day,
            season: animes[i].season, 
            seasonYear: animes[i].seasonYear, 
            episodes: animes[i].episodes, 
            duration: animes[i].duration,
            origin: animes[i].countryOfOrigin,
            source: animes[i].source,
            coverImage: animes[i].coverImage.large || null,
            coverImageColor: animes[i].coverImage.color || null,
            bannerImage: animes[i].bannerImage || null,
            animeUrl: animes[i].externalLinks && animes[i].externalLinks[0] && animes[i].externalLinks[0].url,
            mangaID: null
        })

        await connection.commit()

        console.log("successful insertion", i)
    }

    await connection.close()
}


// async function getAnime(page = 1) {
//     if (page > 2) {
//         for(let i = 0; i < animes.length; ++i) {
//             console.log(animes[i].title.romaji, animes[i].studios.edges, i + 1) 
//         }
//         // await insertToDB(animes)
//         return
//     }

//     let obj = {
//         method: "POST",
//         url: "https://graphql.anilist.co",
//         data: {
//             query,
//             variables: { page }
//         },
//         headers: {
//             "Content-Type": "application/json",
//             Accept: "application/json"
//         }
//     }

//     const response = await axios(obj)

//     const data = response.data.data.Page

//     for (let i = 0; i < data.media.length; ++i) {
//         animes.push(data.media[i])
//     }

//     for (let i = 0; i < data.media.length; ++i) {
//         for (let j = 0; j < data.media[i].genres.length; ++j) {
//             genres.add(data.media[i].genres[j])
//         }
//     }

//     console.log("hello world")
//     console.log(data.media.length, data.pageInfo)

//     await getAnime(page + 1)
// }

// getAnime()


const fetching = async (name, sql) => {
    const response = await fetch("https://graphql.anilist.co", {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
            Accept: "application/json",
        },
        body: JSON.stringify({
            query: sql,
            variables: {
                name
            }
        })
    })

    const data = (await response.json())
    console.log(data)
    
    // for(let i = 0; i < data.length; ++i) {
    //     console.log(data[i].title.romaji, i + 1)
    // }
    
    // relations = data.data.Media.relations.edges

    // for(let i = 0; i < relations.length; ++i) {
    //     if(relations[i].node.type.toLowerCase() === "manga") {
    //         console.log(relations[i].node.title.romaji)
    //         console.log(relations[i].node.title.english)
    //     }
    // } 
}


fetching("attack on titan", undefined, sqlANIME);

