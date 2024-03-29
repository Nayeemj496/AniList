const sqlRecentActiveThread = `
    SELECT T.THREAD_ID, T.THREAD_TITLE, T.THREAD_BODY, T.DATE_OF_CREATION, U.USERNAME, U.USER_IMAGE, A.ANIME_ID, A.ENGLISH AS ANIME_NAME, M.MANGA_ID, M.ENGLISH AS MANGA_NAME,
    (
        SELECT LISTAGG(CATEGORY_NAME, ',')
        FROM CATEGORY C
        JOIN THREAD_CATEGORY TC ON C.CATEGORY_ID = TC.CATEGORY_ID
        WHERE TC.THREAD_ID = T.THREAD_ID
    ) AS CATEGORIES,
    (
        SELECT COUNT(*)
        FROM COMMENTT C
        WHERE C.THREAD_ID = T.THREAD_ID
    ) AS COMMENT_COUNT,
    (
        SELECT U.USERNAME
        FROM COMMENTT C JOIN USERR U ON C.USER_ID = U.USER_ID
        WHERE C.THREAD_ID = T.THREAD_ID
        ORDER BY DATE_OF_CREATION DESC
        FETCH FIRST 1 ROW ONLY
    ) AS USERNAME_COMMENT,
    (
        SELECT U.USER_IMAGE 
        FROM COMMENTT C JOIN USERR U ON C.USER_ID = U.USER_ID
        WHERE C.THREAD_ID = T.THREAD_ID
        ORDER BY DATE_OF_CREATION DESC
        FETCH FIRST 1 ROW ONLY
    ) AS USER_IMAGE_COMMENT,
    (
        SELECT DATE_OF_CREATION
        FROM COMMENTT C
        WHERE C.THREAD_ID = T.THREAD_ID
        ORDER BY DATE_OF_CREATION DESC
        FETCH FIRST 1 ROW ONLY
    ) AS COMMENT_CREATION

    FROM THREAD T 
    JOIN USERR U ON T.USER_ID = U.USER_ID 
    LEFT JOIN ANIME A ON T.ANIME_ID = A.ANIME_ID 
    LEFT JOIN MANGA M ON T.MANGA_ID = M.MANGA_ID
    ORDER BY 
        CASE WHEN COMMENT_CREATION IS NOT NULL THEN COMMENT_CREATION ELSE TO_DATE('19700101', 'YYYYMMDD') END DESC, 
        COMMENT_COUNT ASC
`;

const sqlNewThread = `
    SELECT T.THREAD_ID, T.THREAD_TITLE, T.THREAD_BODY, T.DATE_OF_CREATION, U.USERNAME, U.USER_IMAGE, A.ANIME_ID, A.ENGLISH AS ANIME_NAME, M.MANGA_ID, M.ENGLISH AS MANGA_NAME,
    (
        SELECT LISTAGG(CATEGORY_NAME, ',')
        FROM CATEGORY C
        JOIN THREAD_CATEGORY TC ON C.CATEGORY_ID = TC.CATEGORY_ID
        WHERE TC.THREAD_ID = T.THREAD_ID
    ) AS CATEGORIES,
    (
        SELECT COUNT(*)
        FROM COMMENTT C
        WHERE C.THREAD_ID = T.THREAD_ID
    ) AS COMMENT_COUNT,
    (
        SELECT U.USERNAME
        FROM COMMENTT C JOIN USERR U ON C.USER_ID = U.USER_ID
        WHERE C.THREAD_ID = T.THREAD_ID
        ORDER BY DATE_OF_CREATION DESC
        FETCH FIRST 1 ROW ONLY
    ) AS USERNAME_COMMENT,
    (
        SELECT U.USER_IMAGE 
        FROM COMMENTT C JOIN USERR U ON C.USER_ID = U.USER_ID
        WHERE C.THREAD_ID = T.THREAD_ID
        ORDER BY DATE_OF_CREATION DESC
        FETCH FIRST 1 ROW ONLY
    ) AS USER_IMAGE_COMMENT,
    (
        SELECT DATE_OF_CREATION
        FROM COMMENTT C
        WHERE C.THREAD_ID = T.THREAD_ID
        ORDER BY DATE_OF_CREATION DESC
        FETCH FIRST 1 ROW ONLY
    ) AS COMMENT_CREATION

    FROM THREAD T 
    JOIN USERR U ON T.USER_ID = U.USER_ID 
    LEFT JOIN ANIME A ON T.ANIME_ID = A.ANIME_ID 
    LEFT JOIN MANGA M ON T.MANGA_ID = M.MANGA_ID
    ORDER BY DATE_OF_CREATION DESC
`;

const sqlSubscribedThread = `
        
    SELECT UFT.USER_ID, T.THREAD_ID, T.THREAD_TITLE, T.THREAD_BODY, T.DATE_OF_CREATION, U.USERNAME, U.USER_IMAGE, A.ANIME_ID, A.ENGLISH AS ANIME_NAME, M.MANGA_ID, M.ENGLISH AS MANGA_NAME,
    (
        SELECT LISTAGG(CATEGORY_NAME, ',')
        FROM CATEGORY C
        JOIN THREAD_CATEGORY TC ON C.CATEGORY_ID = TC.CATEGORY_ID
        WHERE TC.THREAD_ID = T.THREAD_ID
    ) AS CATEGORIES,
    (
        SELECT COUNT(*)
        FROM COMMENTT C
        WHERE C.THREAD_ID = T.THREAD_ID
    ) AS COMMENT_COUNT,
    (
        SELECT U.USERNAME
        FROM COMMENTT C JOIN USERR U ON C.USER_ID = U.USER_ID
        WHERE C.THREAD_ID = T.THREAD_ID
        ORDER BY DATE_OF_CREATION DESC
        FETCH FIRST 1 ROW ONLY
    ) AS USERNAME_COMMENT,
    (
        SELECT U.USER_IMAGE 
        FROM COMMENTT C JOIN USERR U ON C.USER_ID = U.USER_ID
        WHERE C.THREAD_ID = T.THREAD_ID
        ORDER BY DATE_OF_CREATION DESC
        FETCH FIRST 1 ROW ONLY
    ) AS USER_IMAGE_COMMENT,
    (
        SELECT DATE_OF_CREATION
        FROM COMMENTT C
        WHERE C.THREAD_ID = T.THREAD_ID
        ORDER BY DATE_OF_CREATION DESC
        FETCH FIRST 1 ROW ONLY
    ) AS COMMENT_CREATION

    FROM USER_FOLLOWS_THREAD UFT JOIN THREAD T ON UFT.THREAD_ID = T.THREAD_ID 
    JOIN USERR U ON T.USER_ID = U.USER_ID 
    LEFT JOIN ANIME A ON T.ANIME_ID = A.ANIME_ID 
    LEFT JOIN MANGA M ON T.MANGA_ID = M.MANGA_ID
    WHERE UFT.USER_ID = :userid
    ORDER BY DATE_OF_CREATION DESC
`;

const sqlIndividualThread = `
    SELECT T.THREAD_ID, T.THREAD_TITLE, T.THREAD_BODY, T.DATE_OF_CREATION, U.USERNAME, U.USER_IMAGE, A.ANIME_ID, A.ENGLISH AS ANIME_NAME, M.MANGA_ID, M.ENGLISH AS MANGA_NAME,
    (
        SELECT LISTAGG(CATEGORY_NAME, ',')
        FROM CATEGORY C
        JOIN THREAD_CATEGORY TC ON C.CATEGORY_ID = TC.CATEGORY_ID
        WHERE TC.THREAD_ID = T.THREAD_ID
    ) AS CATEGORIES,
	(
        SELECT COUNT(*)
        FROM COMMENTT C
        WHERE C.THREAD_ID = T.THREAD_ID
	) AS COMMENT_COUNT,
	(
		SELECT COUNT(*)
		FROM USER_LIKES_THREAD
		WHERE THREAD_ID = T.THREAD_ID 
	) AS LIKES,
	(
		SELECT USER_ID 
		FROM USER_LIKES_THREAD
		WHERE USER_ID = :userid AND THREAD_ID = :threadid
	) AS IS_LIKED,
	(
		SELECT USER_ID
		FROM USER_FOLLOWS_THREAD
		WHERE USER_ID = :userid AND THREAD_ID = :threadid
	) AS IS_SUBSCRIBED
	FROM THREAD T 
	JOIN USERR U ON T.USER_ID = U.USER_ID 
	LEFT JOIN ANIME A ON T.ANIME_ID = A.ANIME_ID 
	LEFT JOIN MANGA M ON T.MANGA_ID = M.MANGA_ID
	WHERE T.THREAD_ID = :threadid
`;

module.exports = {
    sqlRecentActiveThread,
    sqlNewThread,
    sqlSubscribedThread,
    sqlIndividualThread,
}