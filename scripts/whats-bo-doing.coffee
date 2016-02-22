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

bobeActions = [
  "Sleeping",
  "Licking",
  "Playing with Sis",
  "Playing with Mimi",
  "Doing the bad things",
  "At the practice",
  "Reading medical journals",
  "Listening to Brahms"
]

module.exports = (robot) ->
  robot.hear /(what's|what is)( bo)( doing)? (.+)/i, (msg) ->
    msg.send msg.random bobeActions
