

module.exports = (robot) ->
  robot.hear /hello/i, (msg) ->
    msg.send "よろしく！,@#{msg.message.user.name}"
