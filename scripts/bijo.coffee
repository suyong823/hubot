module.exports = (robot) ->
  robot.hear /(bijo|美女)/i, (msg) ->
    timestamp = (new Date()).toISOString().replace(/[^0-9]/g, "")
    msg.send "http://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-342807.jpg?#{timestamp}"
    msg.send msg.random [
    	"http://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-342807.jpg?#{timestamp}"
    	"http://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-169803.jpg?#{timestamp}"
    	]
