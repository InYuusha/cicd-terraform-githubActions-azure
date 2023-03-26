const express = require('express')
const router = express.Router()
const {getAll,getOne,postOne,removeOne,updateOne} = require('../controllers/index.js')

//routes

//get all tasks
router.get('/get-all',getAll)

//get one task
router.get('/get-one',getOne)

//post task
router.post('/add',postOne)

//delete task by tag
router.post('/delete',removeOne)

//update task
router.post('/update',updateOne)
//exports
module.exports = router


