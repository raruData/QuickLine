#> quick_line:core/display/player
#
# 一覧を表示中のプレイヤーに対する処理を行う
#
# @within function
#   quick_line:core/tick/display/check_condition
#   quick_line:core/display/_

# 表示されるデータをスクロール方向にシフト
    execute if data storage quick_line:temp out{Scroll:"left"} run function quick_line:core/display/data/shift_left
    execute if data storage quick_line:temp out{Scroll:"right"} run function quick_line:core/display/data/shift_right

# コールバック
    execute at @s run function #quick_line:display

# タイトルを表示
    title @s times 0 2147483647 0
    title @s subtitle [{"storage":"quick_line:", "nbt":"in.subtitle[0]", "interpret":true}, {"translate":"space.64"}, {"storage":"quick_line:", "nbt":"in.subtitle[1]", "interpret":true}]
    title @s title [{"storage":"quick_line:", "nbt":"in.title", "interpret":true}]

# リセット
    data remove storage quick_line: in
