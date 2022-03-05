#> quick_line:core/display/update
#
# 表示中の一覧を更新する
#
# @within function
#   quick_line:core/tick/display/check_update
#   quick_line:core/display/_

#>
# @within function quick_line:core/display/**
#declare score_holder $ScrollCount

# 再帰回数を取得
    execute store result score $ScrollCount QuickLine run data get storage quick_line:temp out.ScrollCount

# 項目をスクロール方向にシフト
    execute if data storage quick_line:temp out{Scroll:"left"} run function quick_line:core/display/data/shift_left
    execute if data storage quick_line:temp out{Scroll:"right"} run function quick_line:core/display/data/shift_right
    scoreboard players reset $ScrollCount QuickLine

# 一覧のデータを更新
    function quick_line:core/display/data/update

# コールバック
    execute at @s run function #quick_line:display

# 一覧を更新
    title @s times 0 2147483647 0
    title @s subtitle [{"storage":"quick_line:", "nbt":"out.subtitle[0]", "interpret":true}, {"storage":"quick_line:", "nbt":"out.subtitle[1]", "interpret":true}, {"storage":"quick_line:", "nbt":"out.subtitle[2]", "interpret":true}]
    title @s title [{"storage":"quick_line:", "nbt":"out.title", "interpret":true}]

# リセット
    data remove storage quick_line: out
