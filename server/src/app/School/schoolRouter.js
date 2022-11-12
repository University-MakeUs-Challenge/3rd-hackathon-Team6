import express from "express";
import { getRanking, getSeasonRanking } from "./schoolController";

const schoolRouter = express.Router();

schoolRouter.get("/school/ranking", getRanking);
schoolRouter.get("/school/ranking/:season([0-9a-f]{24})", getSeasonRanking);

export default schoolRouter;