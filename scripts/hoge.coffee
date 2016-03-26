module.exports = (robot) ->

# Description:
#   自己紹介の反応
#
# Commands:
#   I am name - Hi,name

  # 正規表現でマッチングした部分の取得もできる
    robot.hear /I am (.*)/i, (msg) ->
        msg.send "Hi, #{msg.match[1]}"


# Description:
#   おみくじ
#
# Commands:
#   おみくじ - 7段階おみくじ

    robot.hear /おみくじ/i, (msg) ->
        msg.send msg.random ["大吉", "中吉", "小吉", "吉", "末吉", "凶", "大凶"]

# Description:
#   test
#
# Commands:
#   test - test!?

    robot.hear /test/i, (msg) ->
        msg.send "test!?"

# Description:
#   反応系
#
# Commands:
#   プログラミング - キミもエンジニアだね
#   つー - かー

    robot.hear /つー/i, (msg) ->
        msg.send "かー"

    robot.hear /プログラミング/i, (msg) ->
        msg.send "キミもエンジニアだね"