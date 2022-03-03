#> quick_line:core/display/data/update
#
# 一覧のデータを更新する
#
# @within function quick_line:core/display/update

data modify storage quick_line: in.subtitle append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Name[-1]
data modify storage quick_line: in.subtitle append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Name[1]
data modify storage quick_line: in.title set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Name[0]
data modify storage quick_line: in.id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Id[0]
