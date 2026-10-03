import express from 'express'
import dotenv from 'dotenv'

dotenv.config()

const app=express();

const port=process.env.port||5000

app.get('/',(req,res)=>{
    return res.status(200).json({
        message:"hello from souvik"
    })
})
app.listen(port,()=>{
    console.log("server is started on port no",port);
})
