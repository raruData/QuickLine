#> quick_line:core/display/data/update
#
# 一覧のデータを更新する
#
# @within function quick_line:core/display/update

#>
# @private
#declare score_holder $ItemCount

# 項目数を取得
    execute store result score $ItemCount QuickLine if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Id[]

# 項目数が3以上であれば
    execute if score $ItemCount QuickLine matches 3.. run data modify storage quick_line: in.subtitle append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Name[-1]
    execute if score $ItemCount QuickLine matches 3.. run data modify storage quick_line: in.subtitle append value '{"translate":"space.32"}'

# 項目数が2以上であれば
    execute if score $ItemCount QuickLine matches 2.. run data modify storage quick_line: in.subtitle append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Name[1]

# 設定
    data modify storage quick_line: in.title set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Name[0]
    data modify storage quick_line: in.id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].QuickLine.Id[0]

# リセット
    scoreboard players reset $ItemCount QuickLine
