#> quick_line:core/tick/player
#
# 一覧を表示中でないプレイヤーに対する処理を行う
#
# @within function quick_line:core/tick/_

# オフハンドに特定のアイテムを持っていればコールバック
    data modify storage quick_line:temp Inventory set from entity @s Inventory[{Slot:-106b}]
    execute if data storage quick_line:temp Inventory.tag.QuickLine run data modify storage quick_line: id set from storage quick_line:temp Inventory.tag.QuickLine.id
    execute if data storage quick_line:temp Inventory.tag.QuickLine run function #quick_line:callback

# リセット
    data remove storage quick_line:temp Inventory
    data remove storage quick_line: id
