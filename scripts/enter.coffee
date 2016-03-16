module.exports = (robot) ->
  robot.enter (msg) ->
    msg.send "ようこそ @#{msg.message.user.name}-san"

  robot.leave (msg) ->
    msg.send "さよなら @#{msg.message.user.name}-san"