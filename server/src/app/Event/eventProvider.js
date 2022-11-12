const { pool } = require("../../../config/database");
// const { logger } = require("../../../config/winston");

const eventDao = require("./eventDao");

exports.retrivewQuiz = async (quizId) => {
    const connection = await pool.getConnection(async (conn) => conn);
    const quizResult = await eventDao.selectQuiz(connection, quizId);

    connection.release();
    
    return quizResult;
}

exports.isCorrectQuiz = async (quizId, quizAnswer) =>{
    const connection = await pool.getConnection(async (conn) => conn);
    const isCorrect = await eventDao.correctQuiz(connection, quizId, quizAnswer);

    connection.release();
    
    return isCorrect;
}