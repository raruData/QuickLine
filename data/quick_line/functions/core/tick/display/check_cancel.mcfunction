#> quick_line:core/tick/display/check_cancel
#
# アクションが選択可能か確認する
#
# @within function quick_line:core/tick/_

# アクションの選択をキャンセルしているか確認
    function quick_line:core/tick/display/check/cancel

# キャンセルしていなければ、スクロールしているか確認へ
    execute if data storage quick_line:temp {out:false} run function quick_line:core/tick/display/check_scroll

# リセット
    data remove storage quick_line:temp out
