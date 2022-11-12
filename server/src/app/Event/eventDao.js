const selectQuiz = async (connection, quizId) =>{
    const selectQuizQuery = `
        SELECT question 
        FROM quiz 
        WHERE id = ${quizId};
    `;
    const [quizRow] = await connection.query(selectQuizQuery);
    return quizRow;
}

const correctQuiz = async (connection, quizId, quizAnswer) =>{
    const selectQuizQuery = `
    SELECT answer
    FROM quiz 
    WHERE id = ${quizId};
`;
const [quizRow] = await connection.query(selectQuizQuery);
console.log(quizRow);
if (parseInt(quizRow[0].answer) === quizAnswer){
    return true
}
else {
    return false
}

}



module.exports = {
    selectQuiz,
    correctQuiz

}