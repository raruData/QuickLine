#> quick_line:core/tick/display/data/update
#
# 表示されるデータを更新する
#
# @within function
#   quick_line:core/tick/display/data/shift_*
#   quick_line:core/display/_

# 初期化
    data remove storage quick_line: in

# 新しいデータに更新
    data modify storage quick_line: in.subtitle append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Display[-1]
    data modify storage quick_line: in.subtitle append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Display[1]
    data modify storage quick_line: in.title set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Display[0]
