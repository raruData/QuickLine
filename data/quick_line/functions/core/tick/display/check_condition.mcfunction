#> quick_line:core/tick/display/check_condition
#
# アクションが選択可能か確認する
#
# @within function quick_line:core/tick/_

# スロットをスクロールしているか確認
    function quick_line:core/tick/display/check/scroll

# スクロールしていれば、表示中のプレイヤーに対する処理へ
    execute unless data storage quick_line:temp {out:false} run function quick_line:core/tick/display/player

# リセット
    data remove storage quick_line:temp out
