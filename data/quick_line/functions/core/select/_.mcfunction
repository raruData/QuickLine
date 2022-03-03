#> quick_line:core/select/_
# @within function quick_line:api/select

# 選択する項目を取得する (OhMyDat)
    function #oh_my_dat:please
    data modify storage quick_line: in set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Id[0]

# コールバック
    function #quick_line:select

# リセット
    data remove storage quick_line: in
