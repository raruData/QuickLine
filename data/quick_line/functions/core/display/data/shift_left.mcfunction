#> quick_line:core/display/data/shift_left
#
# 項目を左方向にシフトする
#
# @within function
#   quick_line:core/display/update
#   quick_line:core/display/data/shift_left

# 末尾の要素を先頭へ移動
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Name prepend from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Name[-1]
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Name[-1]

    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Id prepend from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Id[-1]
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Id[-1]

# 再帰
    scoreboard players add $ScrollCount QuickLine 1
    execute if score $ScrollCount QuickLine matches ..-1 run function quick_line:core/display/data/shift_left
