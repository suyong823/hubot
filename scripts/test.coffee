###

module.exports = (robot) ->

  robot.hear /@channel/i, (msg) ->

    if @channel?
      comment = "dame"
    else
      comment = "ok"

    msg.send "@#{msg.message.user.name}さん" + comment


    robot.hear /@channel:/i, (msg) ->
        comment = if @channel:? then "ok" else "dame"
        msg.send "@#{msg.message.user.name}さん" + comment

    robot.hear /(.*)(.*)/i, (msg) ->
        mention = msg.match[1]
        if mention != "@channel:"
            msg.send "channelつかって！"
        else
            msg.send "ちょりーっす"

    robot.hear /はじめまして (.*)/i, (msg) ->
        name = msg.match[1]
        if name == "takashige"
            msg.send "べ、別にあんたに挨拶なんかしたくないんだからねっ！"
        else
            msg.send "ちょりーっす、 #{name}"
###