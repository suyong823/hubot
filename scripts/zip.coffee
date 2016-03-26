# Description:
#   郵便番号検索
#
#   郵便番号検索APIを使って郵便番号から住所を検索して返信します。
#
# Commands:
#   zip <zipcode>　- zipcodeで住所を検索する
#
# Author:
#   ねじこ

get_value = (str, regexp) ->
  match = str.match(regexp)
  return "" unless match
  return "" if match[1] is "none"
  return match[1]

module.exports = (robot) ->
  robot.respond /zip\s+([0-9]{7})$/i, (msg) ->
    zipcode = msg.match[1]
    robot
      .http("http://zip.cgis.biz/xml/zip.php?zn=" + zipcode)
      .get() (err, res, body) ->
        count = get_value(body, /result_values_count="([0-9]*?)"/)
        if count is "" or count is "0"
          msg.send zipcode + " : not found."
          return
        state = get_value(body, /state="(.*?)"/)
        city = get_value(body, /city="(.*?)"/)
        address = get_value(body, /address="(.*?)"/)
        company = get_value(body, /company="(.*?)"/)
        msg.send state + city + address　+ company

# Examples:
# Hubot> hubot zip 1000001
# Hubot> 東京都千代田区千代田
# Hubot> hubot zip 1318634
# Hubot> 東京都墨田区押上１−１−２東京スカイツリーイーストタワー１１Ｆ東武タワースカイツリー　株式会社
# Hubot> hubot zip 9999999
# Hubot> 9999999 : not found.