module.exports = (robot) ->
  robot.respond /(thanks|thank)( | you)? (.+)/i, (msg) ->
    msg.send "You're welcome! Bark! Bark!"
  robot.hear /(hi|hello|sup|hey)( bo|bobe|bobee)? (.+)/i, (msg) ->
    hour = today.getHours()
    if hour >= 0 or hour < 12
      msg.reply "Good Morning!"
    else if hour >= 12 or hour < 4
      msg.reply "Good Afternoon!"
    else
      msg.reply "Good Evening!"
