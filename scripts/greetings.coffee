module.exports = (robot) ->
  robot.respond /(thanks|thank)( | you)? (.+)/i, (msg) ->
    msg.send "You're welcome! Bark! Bark!"
  robot.hear /(hi|hello|sup|hey)( bo)? (.+)/i, (msg) ->
    msg.reply "You're welcome! Bark! Bark!"
