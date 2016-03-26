# Description:
# 	チャンネルの出入りに反応
#
#
# Commands:
# 	auto - channelの出入りに反応し、あいさつ

module.exports = (robot) ->
  robot.enter (msg) ->
    msg.send "ようこそ @#{msg.message.user.name}さん"

  robot.leave (msg) ->
    msg.send "さよなら @#{msg.message.user.name}さん"