const connect = require("./connect")
const oracledb = require("oracledb")
const threadQuery = require("../queries/threadQuery")

class Comment {
    constructor(
        commentId,
        commentBody,
        parentId,
        userId,
        userName,
        userImage,
        threadId,
        dateOfCreation
    ) {
        this.commentId = commentId;
        this.commentBody = commentBody;
        this.parentId = parentId;
        this.userId = userId;
        this.userName = userName;
        this.userImage = userImage;
        this.threadId = threadId;
        this.dateOfCreation = dateOfCreation;
        this.children = [];
    }

    addChild(childComment) {
        this.children.push(childComment);
    }
}

function buildCommentTree(comments, parentId = null) {
    const rootComments = comments.filter(
        (comment) => comment.parentId === parentId
    )
    if (rootComments.length === 0) {
        return []
    }
    return rootComments.map((comment) => {
        const children = buildCommentTree(comments, comment.commentId);
        comment.children = children
        return comment
    })
}

// const commentTree = buildCommentTree(comments);


const forumOverviewControllerGET = async (req, res) => {
    console.log("in the forumControllerGET")
    console.log(req.url, req.method)

    const connection = await connect()

    const recentThreads = (await connection.execute(threadQuery.sqlRecentActiveThread, [], {outFormat: oracledb.OUT_FORMAT_OBJECT})).rows

    const newThreads = (await connection.execute(threadQuery.sqlNewThread, [], {
        outFormat: oracledb.OUT_FORMAT_OBJECT
    })).rows

    await connection.close()

    if (req.session.user) {
        res.render("forum_overview", {
            recentThreads,
            newThreads,
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: req.session.user.USERNAME
        })
    } else {
        res.redirect("/login")
    }
}

const forumRecentActivityControllerGET = async (req, res) => {
    console.log("in the forumRecentActivityControllerGET");
    console.log(req.url, req.method);

    const connection = await connect();

    const recentThreads = (
        await connection.execute(threadQuery.sqlRecentActiveThread, [], {
            outFormat: oracledb.OUT_FORMAT_OBJECT,
        })
    ).rows;

    await connection.close();

    if (req.session.user) {
        res.render("forum_recent", {
            recentThreads,
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: req.session.user.USERNAME,
        });
    } else {
        res.redirect("/login");
    }
}

const forumNewThreadControllerGET = async (req, res) => {
    console.log("in the forumNewThreadControllerGET");
    console.log(req.url, req.method);

    const connection = await connect();

    const newThreads = (
        await connection.execute(threadQuery.sqlNewThread, [], {
            outFormat: oracledb.OUT_FORMAT_OBJECT,
        })
    ).rows;

    await connection.close();

    if (req.session.user) {
        res.render("forum_new", {
            newThreads,
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: req.session.user.USERNAME,
        });
    } else {
        res.redirect("/login");
    }
}

const forumSubscribedThreadControllerGET = async (req, res) => {
    console.log("in the forumSubscribedThreadControllerGET")
    console.log(req.url, req.method)

    const connection = await connect()

    let userid = req.session.user ? req.session.user.USER_ID : null

    const subscribedThreads = (await connection.execute(threadQuery.sqlSubscribedThread, [userid], {
        outFormat: oracledb.OUT_FORMAT_OBJECT
    })).rows
    
    await connection.close()

    if(req.session.user) {
        res.render("forum_subscribed", {
            subscribedThreads,
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: req.session.user.USERNAME,
        })
    } else {
        res.redirect("/login")
    }
}

const createThreadControllerGET = async (req, res) => {
    console.log(req.url, req.method)
    console.log("in the createThreadControllerGET")

    if (req.session.user) {
        res.render("create_a_thread", {
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: req.session.user.USERNAME
        })
    } else {
        res.redirect("/login")
    }
}

const createThreadControllerPOST = async (req, res) => {
    console.log(req.url, req.method)
    console.log("in the createThreadControllerPOST")

    if (req.session.user) {

        if (req.body.hasOwnProperty("post")) {
            title = req.body.search === "" ? "NaN" : req.body.search;
            console.log(title);

            const connection = await connect();

            const animes = (
                await connection.execute(
                    `
            SELECT ENGLISH
            FROM ANIME A
            WHERE UPPER(A.ENGLISH) LIKE '%' || UPPER(:title) || '%' AND UPPER(:title) <> 'NaN'
        `,
                    [title, title],
                    { outFormat: oracledb.OUT_FORMAT_OBJECT }
                )
            ).rows;

            const mangas = (
                await connection.execute(
                    `
            SELECT ENGLISH
            FROM MANGA M
            WHERE UPPER(M.ENGLISH) LIKE '%' || UPPER(:title) || '%' AND UPPER(:title) <> 'NaN'
        `,
                    [title, title],
                    { outFormat: oracledb.OUT_FORMAT_OBJECT }
                )
            ).rows;

            for (let i = 0; i < animes.length; ++i) {
                animes[i].type = "anime"
            }

            for (let i = 0; i < mangas.length; ++i) {
                mangas[i].type = "manga"
            }

            const medias = animes.concat(mangas);

            res.json({ medias });

            await connection.close();
        } else {
            console.log("create section")
            const obj = req.body
            
            console.log(obj)

            let userid = req.session.user.USER_ID
            let animeid = null 
            let mangaid = null

            const connection = await connect()

            if(obj.hasOwnProperty("anime")) {
                animeid = (await connection.execute(`
                    SELECT ANIME_ID
                    FROM ANIME A
                    WHERE UPPER(ENGLISH) = UPPER(:name)
                `, [obj.anime])).rows[0][0]

            } else if(obj.hasOwnProperty("manga")) {
                mangaid = (await connection.execute(`
                    SELECT MANGA_ID
                    FROM MANGA M
                    WHERE UPPER(ENGLISH) = UPPER(:name)
                `, [obj.manga])).rows[0][0]

            }

            await connection.execute(`
                INSERT INTO THREAD(THREAD_TITLE, THREAD_BODY, USER_ID, ANIME_ID, MANGA_ID) VALUES (:title, :body, :userid, :animeid, :mangaid)
            `, [obj.title, obj.body, userid, animeid, mangaid], {autoCommit: true})

            const threadid = (await connection.execute(`
                SELECT MAX(THREAD_ID)
                FROM THREAD
            `, [])).rows[0][0]
            

            if (obj.hasOwnProperty("category")) {
                if (Array.isArray(obj.category)) {
                    for (let i = 0; i < obj.category.length; ++i) {
                        const categoryid = (
                            await connection.execute(
                            `
                                    SELECT CATEGORY_ID
                                    FROM CATEGORY C
                                    WHERE C.CATEGORY_NAME = UPPER(:category)
                                `,
                            [obj.category[i]]
                            )
                        ).rows[0][0];

                        
                        await connection.execute(`
                            INSERT INTO THREAD_CATEGORY VALUES (:threadid, :categoryid)
                        `, [threadid, categoryid], {autoCommit: true})

                    }
                } else {
                    const categoryid = (await connection.execute(`
                        SELECT CATEGORY_ID
                        FROM CATEGORY C
                        WHERE C.CATEGORY_NAME = UPPER(:category)
                    `, [obj.category])).rows[0][0]

                    await connection.execute(`
                        INSERT INTO THREAD_CATEGORY VALUES (:threadid, :categoryid)
                    `, [threadid, categoryid], {autoCommit: true})
                }
            }

            await connection.close()

            res.redirect("/forum/overview")
        }

    } else {
        res.json({ session: "log in again" })
    }
}

const forumThreadControllerGET = async (req, res) => {
    console.log("in the forumThreadControllerGET")
    console.log(req.url, req.method)
    console.log(req.params)

    let threadid = req.params.id
    let userid = req.session.user ? req.session.user.USER_ID : null

    const connection = await connect()

    const thread = (await connection.execute(threadQuery.sqlIndividualThread, {userid, threadid}, {outFormat: oracledb.OUT_FORMAT_OBJECT})).rows[0]

    let comments = (await connection.execute(`
        SELECT C.COMMENT_ID, C.COMMENT_BODY, C.PARENT_COMMENT_ID, C.USER_ID, U.USERNAME, U.USER_IMAGE, C.THREAD_ID, C.DATE_OF_CREATION 
        FROM COMMENTT C JOIN USERR U ON C.USER_ID = U.USER_ID
        WHERE THREAD_ID = :threadid
    `, [threadid], {outFormat: oracledb.OUT_FORMAT_OBJECT})).rows

    console.log(comments)


    for(let i = 0; i < comments.length; ++i) {
        comments[i] = new Comment(comments[i].COMMENT_ID, comments[i].COMMENT_BODY, 
                        comments[i].PARENT_COMMENT_ID, comments[i].USER_ID, 
                        comments[i].USERNAME, comments[i].USER_IMAGE,
                        comments[i].THREAD_ID, comments[i].DATE_OF_CREATION)
    }

    comments = buildCommentTree(comments)

    for(let i = 0; i < comments.length; ++i) {
        console.log(comments[i])
    }

    await connection.close()

    if(req.session.user) {
        res.render("thread", {
            thread,
            comments,
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: req.session.user.USERNAME
        })
    } else {
        res.redirect("/login")
    }
}

const forumThreadControllerPOST = async (req, res) => {
    console.log("in the forumThreadControllerPOST")
    console.log(req.url, req.method)
    console.log(req.params)
    
    const obj = req.body
    let threadid = req.params.id
    let userid = req.session.user ? req.session.user.USER_ID : null

    const connection = await connect()

    const thread = (await connection.execute(threadQuery.sqlIndividualThread, {userid, threadid}, {
        outFormat: oracledb.OUT_FORMAT_OBJECT
    })).rows[0]

    console.log(thread)

    if(req.session.user) {
        console.log(obj)
        if(obj.type.toUpperCase() === "LIKE") {
            if(thread.IS_LIKED) {
                await connection.execute(`
                    DELETE FROM USER_LIKES_THREAD
                    WHERE USER_ID = :userid AND THREAD_ID = :threadid
                `, [userid, threadid], {autoCommit: true})

                await connection.close()

                res.json({isLiked: false, counter: thread.LIKES - 1})
            } else {
                await connection.execute(`
                    INSERT INTO USER_LIKES_THREAD VALUES (:userid, :threadid)
                `, [userid, threadid], {autoCommit: true})

                await connection.close()

                res.json({isLiked: true, counter: thread.LIKES + 1})
            }

        } else if(obj.type.toUpperCase() === "SUBSCRIBE") {
            if(thread.IS_SUBSCRIBED) {

                await connection.execute(`
                    DELETE FROM USER_FOLLOWS_THREAD 
                    WHERE USER_ID = :userid AND THREAD_ID = :threadid
                `, [userid, threadid], {autoCommit: true})

                res.json({isSubscribed: false})
            } else {

                await connection.execute(`
                    INSERT INTO USER_FOLLOWS_THREAD VALUES (:userid, :threadid)
                `, [userid, threadid], {autoCommit: true})

                res.json({isSubscribed: true})
            }
        }

    } else {
        res.json({result: "log in again"})
    }
}


module.exports = {
    createThreadControllerGET,
    createThreadControllerPOST,
    forumOverviewControllerGET,
    forumRecentActivityControllerGET,
    forumNewThreadControllerGET,
    forumSubscribedThreadControllerGET,
    forumThreadControllerGET,
    forumThreadControllerPOST,
}