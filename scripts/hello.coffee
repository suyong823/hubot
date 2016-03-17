module.exports = (robot) ->
  robot.hear /(初めまして|はじめまして)/i, (msg) ->
    msg.send "よろしく！,@#{msg.message.user.name}"
