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

const sqlManga = `
    query ($name: String) {
        Media(type: MANGA, search: $name) {
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

const sqlAnimePage = `
    query($page: Int) {
        Page(page: $page, perPage:50) {
            media(type: ANIME) {
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

const fetching = async (name="attack on titan", page = 1, sql) => {
    const response = await fetch("https://graphql.anilist.co", {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
            Accept: "application/json",
        },
        body: JSON.stringify({
            query: sql,
            variables: {
                // name: name
                page
            }
        })
    })

    const data = (await response.json()).data.Page.media
    
    for(let i = 0; i < data.length; ++i) {
        console.log(data[i].title.romaji, i + 1)
    }
    
    // relations = data.data.Media.relations.edges

    // for(let i = 0; i < relations.length; ++i) {
    //     if(relations[i].node.type.toLowerCase() === "manga") {
    //         console.log(relations[i].node.title.romaji)
    //         console.log(relations[i].node.title.english)
    //     }
    // } 
}


fetching(undefined, undefined, sqlAnimePage);


