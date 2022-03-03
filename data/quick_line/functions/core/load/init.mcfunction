#> quick_line:core/load/init
#
# データパックを初期化
#
# @within function quick_line:core/load/_

# 初期化済みとして設定
    data modify storage quick_line: Initialized set value true

#> スコアボード
# @within quick_line:**
    scoreboard objectives add QuickLine dummy
