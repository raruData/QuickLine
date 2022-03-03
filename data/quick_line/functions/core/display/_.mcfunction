#> quick_line:core/display/_
#
# @input
#   storage quick_line:
#       in.display : TextComponent[]
#           表示されるデータ
#       in.id : string[]
#           識別子
#
# @within function quick_line:api/display

# タグを設定
    tag @s add QuickLine.Player

# それぞれのデータを設定 (OhMyDat)
    function #oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Display set from storage quick_line: in.display
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Id set from storage quick_line: in.id

# データを初期化
    function quick_line:core/tick/display/data/update

# 表示中のプレイヤーに対する処理へ
    function quick_line:core/tick/display/player
