# QuickLine
ゲームプレイ中に素早くアクションを実行するためのデータパック

## 対応バージョン
- 1.18.1

## 依存ライブラリ / リソースパック
- 赤石愛氏 : [Oh! My Dat! 1.18](https://github.com/Ai-Akaishi/OhMyDat) (MIT License)
- AmberWat氏 : [NegativeSpaceFont 4.1](https://github.com/AmberWat/NegativeSpaceFont/releases/tag/v4.1) (CC-BY-4.0 License)

## 一覧を表示
実行者に一覧を表示します

### 引数
| 入力 | 型 | 説明 |
| :- | :- | :- |
| storage quick_line: in.id | List (any) | 項目のid |
| storage quick_line: in.name | List (TextComponent) | 項目の表示名 |

### 呼び出し
```mcfunction
function quick_line:api/display
```

### 例
```mcfunction
# 項目のidを設定
data modify storage quick_line: in.id set value ["Day", "Noon", "Night", "Midnight"]

# 項目の表示名を設定
data modify storage quick_line: in.name set value ['{"text":"朝"}', '{"text":"昼"}', '{"text":"夜"}', '{"text":"真夜中"}']

# 実行者に一覧を表示する
function quick_line:api/display
```

## 項目を選択
実行者が指定している項目を選択します

### 呼び出し
```mcfunction
function quick_line:api/select
```

### 例
```mcfunction
# 実行者が右クリックしていれば項目を選択する
execute if predicate example:on_click run function quick_line:api/select
```

## 一覧を非表示
実行者に表示中の一覧を非表示にします

### 呼び出し
```mcfunction
function quick_line:api/cancel
```

### 例
```mcfunction
# 実行者が右クリックしていれば一覧を非表示にする
execute if predicate example:on_click run function quick_line:api/cancel
```

## 項目選択時の動作を設定
1. `data/quick_line/tags/functions/select.json` に、項目が選択された時に呼び出されるファイルを追加します
```json
{
    "values": [
        "example:time/select"
    ]
}
```

2. 追加したファイル内でそれぞれの動作を設定します  
この時 `storage quick_line: id` には選択された項目のidが入っており、項目ごとに動作を設定することが可能です
```mcfunction
#> example:time/select

# "Day" であれば...な処理をする
execute if data storage quick_line: {id:"Day"} run ...
```

## 一覧更新前の動作を設定
1. `data/quick_line/tags/functions/display.json` に、一覧が更新される直前に呼び出されるファイルを追加します
```json
{
    "values": [
        "example:display"
    ]
}
```

2. 追加したファイル内でそれぞれの動作を設定します  
この時 `storage quick_line: out` には更新後に表示されるデータが入っており、直前に表示内容を編集することが可能です

```mcfunction
#> example:display

# "Day" であれば...な処理をする
execute if data storage quick_line: out{id:"Day"} run ...
```

### 戻り値
| 出力 | 型 | 説明 |
| :- | :- | :- |
| storage quick_line: out.subtitle | List (TextComponent) | 更新後にsubtitleに表示する項目 |
| storage quick_line: out.title | TextComponent | 更新後にtitleに表示する項目 |
| storage quick_line: out.id | any | 更新後に指定する項目のid |
