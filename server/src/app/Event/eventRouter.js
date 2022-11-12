module.exports = function(app){
    const eventController = require("./eventController");
    app.get('/events/quiz/:id',eventController.getQuiz);
    app.post('/events/quiz',eventController.postQuiz);
    // app.patch('/events/quiz/:id/delete',eventController.deleteQuiz);
}