
const express = require('express')
const task = require('./routes/task')

const app = express()


//config
app.use(express.urlencoded({extended:true}))

//routes
app.use('/task' ,task)


//listen
const port = 3000||process.env.PORT;
app.listen(port,()=>console.log(`Server is running on port ${port}`))