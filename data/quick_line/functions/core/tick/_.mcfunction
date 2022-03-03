#> quick_line:core/tick/_
#
# tick時に実行される
#
# @within tag/function minecraft:tick

# アクション一覧を表示中でないプレイヤーに対する処理
    execute as @a[tag=!QuickLine.Player] at @s run function quick_line:core/tick/player

# アクション一覧を表示中のプレイヤーに対する処理
    execute as @a[tag=QuickLine.Player] at @s run function quick_line:core/tick/display/check_cancel
