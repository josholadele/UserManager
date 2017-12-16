var mongoose = require('mongoose');
mongoose.connect(process.env.DB_URL, { useMongoClient: true });

var db = mongoose.connection;

db.on("error",(err)=>{
    console.error("database connection error",err)
})

db.on("open",()=>{
    console.log("database connection successful")
})