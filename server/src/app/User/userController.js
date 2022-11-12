const userService = require("./userSerivce");

export const getUser =(req, res)=>{
    
}

export const getBadge=(req,res)=>{

}

export const postBadge = async (req,res)=>{
    const userId = req.params.id;
    const {badge} = req.body;

    const result = await userService.createBadge(userId, badge)
    return res.send(result)   
}

export const getScore = (req,res)=>{
    
}