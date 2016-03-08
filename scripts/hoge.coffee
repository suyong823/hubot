module.exports = (robot) ->

  robot.hear /疲れた/i, (msg) ->
	msg.send msg.random["帰ろう！"]
