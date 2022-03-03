#> quick_line:core/tick/display/check_scroll
#
# アクションが選択可能か確認する
#
# @within function quick_line:core/tick/display/check_cancel

# スロットをスクロールしているか確認
    function quick_line:core/tick/display/check/scroll

# スクロールしていれば、表示中のプレイヤーに対する処理へ
    execute unless data storage quick_line:temp {out:false} run function quick_line:core/tick/display/player
