require("dotenv").config();
import express from "express"
import compression from "compression"
import methodOverride from "method-override"
import cors from "cors"
import ejs from "ejs";
import rootRouter from "../src/app/User/userRouter";
import userRouter from "../src/app/User/userRouter";
import eventRouter from "../src/app/Event/eventRouter";
import schoolRouter from "../src/app/School/schoolRouter";

const app = express();

app.use("/", rootRouter);
app.use("/users", userRouter);
app.use("/events", eventRouter);
app.use("school", schoolRouter);

app.engine('html', ejs.renderFile);
app.set('view engine', 'html');
app.set('views', process.cwd()+ '/src/views');

app.use(compression());
app.use(express.json());
app.use(express.urlencoded({extended:true}));
app.use(methodOverride());
app.use(cors());

export default app;