require("dotenv").config();
const express = require('./config/express');

const PORT = process.env.PORT || 4000;


const handleListening =
()=> console.log(`✅Server listening on port http://localhost:${PORT}`);

express().listen(PORT, handleListening);