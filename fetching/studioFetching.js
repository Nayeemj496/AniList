const axios = require("axios")
const oracledb = require("oracledb")
const connect = require("../connect")

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

const sqlStudio = `
    INSERT INTO STUDIO(STUDIO_ID, STUDIO_NAME)
    VALUES (:id, :name)   
`

const sqlProducer = `
    INSERT INTO PRODUCER(PRODUCER_ID, PRODUCER_NAME)
    VALUES (:id, :name)
`

const animes = new Array()
const genres = new Set()
const studios = new Set()
const producers = new Set()

const insertToDB = async (obj) => {
    const connection = await connect()

    obj = Array.from(obj)

    for (let i = 0; i < obj.length; ++i) {
        await connection.execute(sqlProducer, {
            id: i + 1,
            name: obj[i]
        })

        await connection.commit()

        console.log("successful insertion", i)
    }

    await connection.close()
}


async function getStudio(page = 1) {
    if (page > 2) {
        for(let i = 0; i < animes.length; ++i) {
            console.log(animes[i].title.romaji, animes[i].studios.edges, i)
        }

        // console.log("size of studio:", studios.size)

        // for(let studio of studios) {
        //     console.log(studio)
        // }

        console.log("size of producers:", producers.size)

        for(let producer of producers) {
            console.log(producer)
        }

        await insertToDB(producers)
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

    for (let i = 0; i < data.media.length; ++i) {
        animes.push(data.media[i])
    }

    for (let i = 0; i < data.media.length; ++i) {
        for (let j = 0; j < data.media[i].genres.length; ++j) {
            genres.add(data.media[i].genres[j])
        }
    }

    for(let i = 0; i < data.media.length; ++i) {
        for(let j = 0; j < data.media[i].studios.edges.length; ++j) {
            const ref = data.media[i].studios.edges[j]
            if(ref.isMain) studios.add(ref.node.name)
            else producers.add(ref.node.name)
        }
    }

    console.log("hello world")
    console.log(data.media.length, data.pageInfo)

    await getStudio(page + 1)
}

getStudio()
