# Description:
#   Carlton Celebration
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   dance - Display a dancing Carlton
#
# Author:
#   pingles

carltons = [
  "I don't dance"
]

module.exports = (robot) ->
  robot.respond /\b(dance|happy)\b/i, (msg) ->
    msg.send msg.random carltons
    
