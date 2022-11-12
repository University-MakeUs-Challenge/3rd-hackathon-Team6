import express from "express";
import { getUser, getBadge, postBadge, getScore } from "./userController";

const userRouter = express.Router();

userRouter.get("/:id([0-9a-f]{24})", getUser);
userRouter.route("/:id([0-9a-f]{24})/badge")
.get(getBadge).post(postBadge);
userRouter.get("/:id([0-9a-f]{24})/score", getScore);

export default userRouter;