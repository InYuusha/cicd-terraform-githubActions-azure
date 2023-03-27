
const express = require('express')
const task = require('./routes/task')

const app = express()


//config
app.use(express.urlencoded({extended:true}))

//routes
app.get('/',(req,res)=>{
    res.status(200).send('Yiee API Up and Running...')
})
app.use('/task' ,task)


//listen
const port = 80||process.env.PORT;
app.listen(port,()=>console.log(`Server is running on port ${port}`))