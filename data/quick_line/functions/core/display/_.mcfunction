#> quick_line:core/display/_
#
# @input
#   storage quick_line:
#       in.id : id[]
#           項目のid
#       in.name : TextComponent[]
#           項目の表示名
#
# @within function quick_line:api/display

# タグを設定
    tag @s add QuickLine.Player

# 表示される一覧を設定 (OhMyDat)
    function #oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Name set from storage quick_line: in.name
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Id set from storage quick_line: in.id

# 最後に選択したスロットのデータを削除 (OhMyDat)
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.LastSelectedSlot

# 表示中の一覧を更新
    function quick_line:core/display/update
