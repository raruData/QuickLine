#> quick_line:core/display/data/update
#
# 表示されるデータを更新する
#
# @within function
#   quick_line:core/display/data/shift_*
#   quick_line:core/display/_

# 新しいデータに更新
    data modify storage quick_line: in.subtitle append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Display[-1]
    data modify storage quick_line: in.subtitle append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Display[1]
    data modify storage quick_line: in.title set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Display[0]
    data modify storage quick_line: in.id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Id[0]
