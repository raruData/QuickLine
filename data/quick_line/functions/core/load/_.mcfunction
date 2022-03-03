#> quick_line:core/load/_
#
# load時に実行される
#
# @within tag/function minecraft:load

# 初期化済みでなければデータパックを初期化
    execute unless data storage quick_line: Initialized run function quick_line:core/load/init
