module.exports = (robot) ->

  robot.respond /つー/i, (msg) ->
    msg.send "かー"

  # 正規表現でマッチングした部分の取得もできる
  robot.respond /I am (.*)/i, (msg) ->
    msg.send "Hi, #{msg.match[1]}"

  # msg.randomで配列の文字列の中からランダムに選択して発言する
  robot.respond /おみくじ/i, (msg) ->
    msg.send msg.random ["大吉", "中吉", "小吉", "凶"]