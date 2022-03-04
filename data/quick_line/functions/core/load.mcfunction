#> quick_line:core/load
#
# load時に実行される
#
# @within tag/function minecraft:load

#>
# @within quick_line:**
    #declare storage quick_line:temp

#>
# @public
    #declare storage quick_line:
    #declare tag QuickLine.Player

#> スコアボードを作成
# @within quick_line:**
    scoreboard objectives add QuickLine dummy
