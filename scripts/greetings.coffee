module.exports = (robot) ->
  robot.respond /(thanks|thank)( | you)? (.+)/i, (msg) ->
    msg.send "You're welcome! Bark! Bark!"
  robot.hear /(hi|hello|sup|hey)( bo|bobe|bobee)? (.+)/i, (msg) ->
    today = new Date
    hour = today.getHours()
    if hour >= 0 and hour < 12
      msg.reply "Good Morning!"
    else if hour >= 12 and hour < 16
      msg.reply "Good Afternoon!"
    else
      msg.reply "Good Evening!"
