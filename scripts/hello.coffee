# Description:
# 	自己紹介に反応
#
#
# Commands:
# はじめまして - よろしく@userさん
# 初めまして - よろしく@userさん

module.exports = (robot) ->
  robot.hear /(初めまして|はじめまして)/i, (msg) ->
    msg.send "よろしく！ @#{msg.message.user.name}さん！一緒に頑張りましょう☆"
