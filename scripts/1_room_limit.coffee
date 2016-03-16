module.exports = (robot) ->
    robot.hear /(.*)/i, (msg) ->

        unless _.contains ['botlimit'], msg.envelope.room
            msg.finish()

        hoge = msg.match[1]
        room = "botlimit"
        if hoge == "@channel"
            msg.send "らじゃ"
        else
            msg.send "channel使って！"