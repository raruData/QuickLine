#> quick_line:core/hide/_
# @within function quick_line:api/hide

# タイトルを削除
    title @s clear

# タグを削除
    tag @s remove QuickLine.Player

# QuickLineのデータを全て削除する (OhMyDat)
    function #oh_my_dat:please
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine
