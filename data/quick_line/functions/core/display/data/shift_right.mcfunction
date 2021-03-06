#> quick_line:core/display/data/shift_right
#
# 項目を右方向にシフトする
#
# @within function
#   quick_line:core/display/update
#   quick_line:core/display/data/shift_right

# 先頭の要素を末尾へ移動
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Name append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Name[0]
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Name[0]

    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Id append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Id[0]
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Id[0]

# 再帰
    scoreboard players remove $ScrollCount QuickLine 1
    execute if score $ScrollCount QuickLine matches 1.. run function quick_line:core/display/data/shift_right
