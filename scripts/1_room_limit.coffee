hello = process.env.HUBOT_HELLO

module.exports = (robot) ->
  robot.hear /hello/i, (msg) ->
    msg.send "#{hello}, #{msg.message.user.name}"
