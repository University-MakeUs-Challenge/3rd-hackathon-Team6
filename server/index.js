require("dotenv").config();
import app from './config/express'

const PORT = process.env.PORT || 4000;


const handleListening =
()=> console.log(`✅Server listening on port http://localhost:${PORT}`);

app.listen(PORT, handleListening);