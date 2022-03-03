#> quick_line:core/tick/_
#
# tick時に実行される
#
# @within tag/function minecraft:tick

# 一覧を表示中のプレイヤーに対する処理
    execute if entity @a[tag=QuickLine.Player, limit=1] as @a[tag=QuickLine.Player] run function quick_line:core/tick/display/check_update
