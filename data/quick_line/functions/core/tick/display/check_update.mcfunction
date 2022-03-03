#> quick_line:core/tick/display/check_update
#
# 表示中の一覧を更新するべきか確認する
#
# @within function quick_line:core/tick/_

# スクロールしているか確認
    function quick_line:core/tick/display/check_scroll

# スクロールしていれば、表示中の一覧を更新
    execute if data storage quick_line:temp out{Success:true} run function quick_line:core/display/update

# リセット
    data remove storage quick_line:temp out
