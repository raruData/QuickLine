#> quick_line:core/tick/display/data/shift_left
#
# 表示されるデータを左方向にシフトする
#
# @within function quick_line:core/tick/display/player

# 末尾の要素を先頭へ移動
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Display prepend from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Display[-1]
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Display[-1]

    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Id prepend from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Id[-1]
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Id[-1]

# 表示されるデータを更新する
    function quick_line:core/tick/display/data/update
