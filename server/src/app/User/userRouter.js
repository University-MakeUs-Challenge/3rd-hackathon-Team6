import express from "express";
import { getUser, getBadge, postBadge, getScore, startGithubLogin } from "./userController";

const userRouter = express.Router();

userRouter.get("/:id([0-9a-f]{24})", getUser);
userRouter.route("/:id([0-9a-f]{24})/badge")
.get(getBadge).post(postBadge);
userRouter.get("/:id([0-9a-f]{24})/score", getScore);

//github 정보를 가져오기 위한 라우터
userRouter.get("/github/start", startGithubLogin);

export default userRouter;