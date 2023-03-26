
const tasks = [];

exports.getAll = function(req,res){
    return response.status(200).json({
        success:true,
        message:'Successfully fetched tasks',
        data:tasks
    })
   
    
}

exports.getOne = function(req,res){
    const {id} = req;
    const task = tasks.find(task => {
        return task.id == id;
    })
    return res.status(200).json({
        success:true,
        message:'Fetched task successfully',
        data:task
    })

}

exports.postOne=function(req,res){
   
    const {task} = req;
    const id = tasks.length + 1;
    const t = {
        id:id,
        task:task
    }
    tasks.push(t);
    return res.status(200).json({
        success:true,
        message:'Task created successfully',
        data:t
    })
}

exports.removeOne = function(req,res){
    const {id} = req;

    const targetIndex = tasks.findIndex(task => task.id == id)
    const removed = tasks.splice(targetIndex,1);

    return res.status(200).json({
        success:true,
        message:'Task removed successfully',
        data: removed
    })

}

exports.updateOne=function(req,res){
    
    const {id,task} = req;

    const targetIndex = tasks.findIndex(task => task.id == id)
    const targetTask = tasks[targetIndex]
    tasks[targetIndex] = {
        id:id,
        task:task || targetTask.task
    }

    return res.status(200).json({
        success:true,
        message:'Task upadated successfully',
        data: tasks[targetIndex]
    })
}


