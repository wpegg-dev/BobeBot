# Description:
#   What is Bobeeeee Doing?
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   what's bo doing - Tell you what Moe is up to
#
# Author:
#   wpegg-dev

mimiActions = [
  "Sleeping",
  "Licking",
  "Playing with Sis",
  "Playing with Mimi",
  "Doing the bad things"
]

module.exports = (robot) ->
  robot.hear /(what's|what)( bo)( doing)? (.+)/i, (msg) ->
    msg.send msg.random mimiActions
