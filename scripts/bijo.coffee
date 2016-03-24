module.exports = (robot) ->
  robot.hear /(bijo|美女)/i, (msg) ->
    timestamp = (new Date()).toISOString().replace(/[^0-9]/g, "")
    msg.send msg.random [
    	"http://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-342807.jpg?#{timestamp}"
    	"http://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-169803.jpg?#{timestamp}"
    	"http://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-136656.jpg?#{timestamp}"
    	"http://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-90747.jpg?#{timestamp}"
    	"http://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-118057.jpg?#{timestamp}"
    	"http://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-118236.jpg?#{timestamp}"
    	"http://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-222897.jpg?#{timestamp}"
    	"http://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-15047.jpg?#{timestamp}"
    	"http://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-115196.jpg?#{timestamp}"
        "http://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-315863.jpg?#{timestamp}"
    	"http://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-81895.jpg?#{timestamp}"
    	]
