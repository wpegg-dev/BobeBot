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
  bot_user_id
]

module.exports = (robot) ->
  robot.hear /\b(@bobebot:)( dance|happy)\b/i, (msg) ->
    msg.send msg.random carltons
