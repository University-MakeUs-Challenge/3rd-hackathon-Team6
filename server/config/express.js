// import ejs from "ejs";
// import rootRouter from "../src/app/User/userRouter";
// import userRouter from "../src/app/User/userRouter";
// import eventRouter from "../src/app/Event/eventRouter";
// import schoolRouter from "../src/app/School/schoolRouter";
require("dotenv").config();
const methodOverride = require('method-override');
const compression = require('compression');
const express = require('express')
var cors = require('cors');

module.exports = function () {
    const app = express();
    app.use(compression());
    app.use(express.json());
    app.use(express.urlencoded({extended:true}));
    app.use(methodOverride());
    app.use(cors());
    // app.use("/", rootRouter);
    // app.use("/users", userRouter);
    require("../src/app/Event/eventRouter")(app);
    require("../src/app/Root/rootRouter")(app);
    require("../src/app/User/userRouter")(app);
    // app.use("/school", schoolRouter);

    return app;
}