module.exports = (robot) ->
    robot.hear /(.*)/i, (msg) ->

        unless _.contains ['botlimit'], msg.envelope.room
            msg.finish()

        hoge = msg.match[1]
        room = "bottest"
        if hoge == "@channel"
          robot.send "らじゃ"
        else
          robot.send "channel使って！"