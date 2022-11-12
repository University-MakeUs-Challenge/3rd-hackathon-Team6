const rootProvider = require("../../app/Root/rootProvider");
const rootService = require("../../app/Root/rootService");
const baseResponse = require("../../../config/baseResponseStatus");
const {response, errResponse} = require("../../../config/response");

const regexEmail = require("regex-email");
const {emit} = require("nodemon");

export const home = (req,res)=>{
    //1. 데이터 베이스 연결
    // const connection = mysql.createConnection({
    //     host: 'merry.cgymg7va97v3.ap-northeast-2.rds.amazonaws.com',
    //     port: 4000,
    //     user: 'root',
    //     password: 'password',
    //     database: 'merry'
    // }
    // )
    // connection.connect();

   //home.html
   console.log('Hello 홈 화면');
   res.render('home.html');
}

export const getEnroll = (req, res)=>{
    //competition.html
    res.render('competition.html');
}

export const postEnroll = async(req, res)=>{

    // body: inCompetition
    //const inCompetetion = req.body.inCompetetion;
    const {body:{inCompetition}, session:{user:{_id}}} = req; //1, 0 
    

    const competitionResponse = await rootService.competitionResponse(
        inCompetition,
        _id
    );

    return res.send(competitionResponse);
}


