const eventProvider = require("../../app/Event/eventProvider");
const eventService = require("../../app/Event/eventService");
const baseResponse = require("../../../config/baseResponseStatus");
const {response, errResponse} = require("../../../config/response");
/**
 * API No. 0
 * API Name : 테스트 API
 * [GET] /app/test
 */
 const getTest = async  (req, res) => {
    return res.send({msg:"test"})
}



/**
 * API No.1 
 * API Name : 퀴즈가져오기 API
 * [GET] /app/event/quiz/:id
 */
const getQuiz= async (req,res)=>{
    const quizId = req.params.id;
    const quizResult = await eventProvider.retrivewQuiz(quizId);
    return res.send( quizResult);
}

/**
 * API No.2 
 * API Name : 퀴즈정답맞추기 API
 * [POST] /app/event/quiz/:id
 */
const postQuiz = async function (req,res) {
    console.log(JSON.stringify(req.body));
    
    const {id, quizAnswer} = req.body;
    
    const isCorrect = await eventProvider.isCorrectQuiz(id, quizAnswer)

    if(isCorrect){
        return res.send("정답");
    }
    else{
        
        return res.send("땡");
    
    }
    
}

// export const updateQuiz=(req,res)=>{

// }

// export const deleteQuiz=(req,res)=>{
    
// }

module.exports ={
    postQuiz,
    getTest,
    getQuiz
}