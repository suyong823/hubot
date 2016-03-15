module.exports = (robot) ->
  robot.respond /amagumo( zoom)? me (.+)/i, (msg) ->
      zoom = if msg.match[1] then "14" else "12"
      area = msg.match[2]

      msg.http('http://geo.search.olp.yahooapis.jp/OpenLocalPlatform/V1/geoCoder')
       .query({
         appid: process.env.HUBOT_YAHOO_AMAGUMO_APP_ID
         query: area
         results: 1
         output: 'json'
       })

     getAmagumoRaderUrl = (lat, lon, zoom, width, height) ->
      url = "http://map.olp.yahooapis.jp/OpenLocalPlatform/V1/static?appid=" +
        process.env.HUBOT_YAHOO_AMAGUMO_APP_ID +
        "&lat=" + lat +
        "&lon=" + lon +
        "&z=" + zoom +
        "&width=" + width +
        "&height=" + height +
        "&overlay=" + "type:rainfall"