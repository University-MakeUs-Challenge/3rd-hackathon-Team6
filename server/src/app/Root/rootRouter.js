
// import express from "express";
// import { test, home, getEnroll, postEnroll} from "./rootController";

// const rootRouter = express.Router();

// rootRouter.route("/").get(home);
// rootRouter.route("/test").get(test);
// rootRouter.route("/enroll").get(getEnroll).post(postEnroll);





module.exports = function(app){
    const rootController = require("./rootController");
    app.get('/', rootController.home)
    app.get('/test',rootController.test);
    app.post('/enroll',rootController.postEnroll);
    // app.patch('/events/quiz/:id/delete',eventController.deleteQuiz);
}