//const {logger} = require("../../../config/winston");
const {pool} = require("../../../config/database");
//const secret_config = require("../../../config/secret");

const rootProvider = require("./rootProvider");
const rootDao = require("./rootDao");
const baseResponse = require("../../../config/baseResponseStatus");
const {response} = require("../../../config/response");
const {errResponse} = require("../../../config/response");

// const jwt = require("jsonwebtoken");
// const crypto = require("crypto");
// const {connect} = require("http2");

export async function competitionResponse (inCompetition, _id) {
    
    const insertCompetitionStatusParams = [inCompetition, _id];

        const connection = await pool.getConnection(async (conn) => conn);   //....?

        const competitionResult = await rootDao.competitionStatus(connection, insertCompetitionStatusParams);

        //console.log(`경쟁 참여 여부 : ${competitionResult[0].insertId}`)   //..? insertId가 뭔지 모르겠음.,,. 근데 어차피 console 이니깐 지워도 되겠지,,.
        connection.release();

        return competitionResult;

        
    // try {
    //     // 이메일 중복 확인
    //     // const emailRows = await userProvider.emailCheck(email);
    //     // if (emailRows.length > 0)
    //     //     return errResponse(baseResponse.SIGNUP_REDUNDANT_EMAIL);

    //     // 비밀번호 암호화
    //     // const hashedPassword = await crypto
    //     //     .createHash("sha512")
    //     //     .update(password)
    //     //     .digest("hex");

    // } catch (err) {
    //     logger.error(`App - createUser Service error\n: ${err.message}`);
    //     return errResponse(baseResponse.DB_ERROR);
    // }
}