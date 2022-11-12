
import express from "express";
import { home, getEnroll, postEnroll} from "./rootController";

const rootRouter = express.Router();

rootRouter.get("/", home);
rootRouter.route("/enroll").get(getEnroll).post(postEnroll);

export default rootRouter;