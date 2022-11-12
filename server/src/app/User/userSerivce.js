const { pool } = require("../../../config/database")
const userDao = require("./userDao")

exports.createBadge = async (userId, badge) =>{
    const connection = await pool.getConnection(async (conn) => conn);
    const createBadgeResult = await userDao.createBadge(connection, userId, badge);

    connection.release();

    return createBadgeResult;
}