async function createBadge(connection, userId,badge) {
    const insertUserBadgeQueryParams = [parseInt(badge), parseInt(userId)]
    const insertUserBadgeQuery = `
        INSERT INTO badge (badge_template_id, user_id)
        VALUES (?, ?);`


    const createBadgeRow = await connection.query(
        insertUserBadgeQuery, 
        insertUserBadgeQueryParams
    );
    console.log(userId, badge)
    return createBadgeRow;

}

    module.exports = {
        createBadge
      }