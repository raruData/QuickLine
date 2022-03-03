#> quick_line:core/tick/display/check_condition
#
# アクションが選択可能か確認する
#
# @within function quick_line:core/tick/_

# スクロールしているか確認
    function quick_line:core/tick/display/check_scroll

# スクロールしていれば、表示中のプレイヤーに対する処理へ
    execute if data storage quick_line:temp out{Success:true} run function quick_line:core/display/player

# リセット
    data remove storage quick_line:temp out
