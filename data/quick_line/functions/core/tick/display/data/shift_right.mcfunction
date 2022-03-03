#> quick_line:core/tick/display/data/shift_right
#
# 表示されるデータを右方向にシフトする
#
# @within function quick_line:core/tick/display/player

# 先頭の要素を末尾へ移動
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Display append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Display[0]
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Display[0]

    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Id append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Id[0]
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Id[0]

# 表示されるデータを更新する
    function quick_line:core/tick/display/data/update
