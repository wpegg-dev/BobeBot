# Description:
#   Bobe keep track of my todo list
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   bobebot task add [task/item] - Add an Item to the list
#   bobebot task done [task #,task #,...] - Remove item(s) from the list
#   bobebot task list - List all tasks
#
# Author:
#   wpegg-dev

class Tasks
  constructor: (@robot) ->
    @cache = []
    @robot.brain.on 'loaded', =>
      if @robot.brain.data.tasks
        @cache = @robot.brain.data.tasks
  nextTaskNum: ->
    maxTaskNum = if @cache.length then Math.max.apply(Math,@cache.map (n) -> n.num) else 0
    maxTaskNum++
    maxTaskNum
  add: (taskString) ->
    task = {num: @nextTaskNum(), task: taskString}
    @cache.push task
    @robot.brain.data.tasks = @cache
    task
  all: -> @cache
  deleteByNumber: (num) ->
    index = @cache.map((n) -> n.num).indexOf(parseInt(num))
    task = @cache.splice(index, 1)[0]
    @robot.brain.data.tasks = @cache
    task
  checkIfExists: (num) ->
    check = @cache.map((n) -> n.num).indexOf(parseInt(num))#false
    #if num of @cache
      #check = true

module.exports = (robot) ->
  tasks = new Tasks robot

  robot.respond /(task add|add task) (.+?)$/i, (msg) ->
    task = tasks.add msg.match[2]
    msg.send ":+1::skin-tone-2: Task added: ##{task.num} - #{task.task}"

  robot.respond /(task list|list tasks)/i, (msg) ->
    if tasks.all().length > 0
      response = ""
      for task, num in tasks.all()
        response += "##{task.num} - #{task.task}\n"
      msg.send response
    else
      msg.send "There are no tasks"

  robot.respond /(task done|done task) (.+?)$/i, (msg) ->
    tasksToDelete = msg.match[2].split ","
    for taskNum in tasksToDelete
      taskCheck = tasks.checkIfExists taskNum 
      if taskCheck >= 0
        task = tasks.deleteByNumber taskNum
        if tasks.all().length != 0
          msg.send ":white_check_mark: Task deleted: ##{task.num} - #{task.task}"
        else
          msg.send ":white_check_mark: Task deleted: ##{task.num} - #{task.task}"
          msg.send ":confetti_ball: No More Tasks! :confetti_ball:"
      else
        msg.send "Task not found"
