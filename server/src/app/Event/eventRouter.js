import e from "express";
import express from "express";
import { getQuiz, postQuiz, updateQuiz, deleteQuiz } from "./eventController";

const eventRouter = express.Router();

eventRouter.route("/quiz/:id([0-9a-f]{24})")
.get(getQuiz).post(postQuiz).patch(updateQuiz);
eventRouter.post("/quiz/:id/delete", deleteQuiz);

export default eventRouter;