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
  "http://media.tumblr.com/tumblr_lrzrlymUZA1qbliwr.gif",
  "http://web.archive.org/web/20121119111926/http://3deadmonkeys.com/gallery3/var/albums/random_stuff/Carlton-Dance-GIF.gif",
  "http://gifsoup.com/webroot/animatedgifs/987761_o.gif",
  "https://media.giphy.com/media/7k0aZNv7cw43m/giphy.gif",
  "https://media.giphy.com/media/lF1XZv45kIwMw/giphy.gif",
  "https://media.giphy.com/media/IGpqj6DMmbeNy/giphy.gif",
  "https://media.giphy.com/media/xTiTny8h4UVDZdNxPW/giphy.gif",
  "https://media.giphy.com/media/p2X7LdKIofg52/giphy.gif",
  "https://media.giphy.com/media/qCXHn1PU7PIly/giphy.gif",
  "https://media.giphy.com/media/MazO89pt5NljG/giphy.gif",
  "https://media.giphy.com/media/eS8KpVTznwBpe/giphy.gif",
  "https://media.giphy.com/media/2Vz4JOJMUdaXS/giphy.gif"
]

module.exports = (robot) ->
  robot.hear /\b(dance|happy)\b/i, (msg) ->
    msg.send msg.random carltons
