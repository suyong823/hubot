

module.exports = (robot) ->
  robot.hear /hello/i, (msg) ->
    msg.reply "hey"
