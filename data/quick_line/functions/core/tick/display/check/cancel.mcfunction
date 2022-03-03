#> quick_line:core/tick/display/check/cancel
#
# 選択をキャンセルしているか確認する
#
# @output
#   storage quick_line:temp
#       out : boolean
#           キャンセルしているか否か
#
# @within function quick_line:core/tick/display/check_cancel

# オフハンドに特定のアイテムを持っていないならキャンセル
    data modify storage quick_line:temp Inventory set from entity @s Inventory[{Slot:-106b}]
    execute unless data storage quick_line:temp Inventory.tag.QuickLine run function quick_line:api/cancel

# 返り値を設定
    execute unless data storage quick_line:temp Inventory.tag.QuickLine run data modify storage quick_line:temp out set value true
    execute if data storage quick_line:temp Inventory.tag.QuickLine run data modify storage quick_line:temp out set value false

# リセット
    data remove storage quick_line:temp Inventory
