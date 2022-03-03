# QuickLine
ゲームプレイ中に素早くアクションを実行するためのデータパック

## 対応バージョン
- 1.18.1

## 依存ライブラリ / リソースパック
- 赤石愛氏 : [Oh! My Dat! 1.18](https://github.com/Ai-Akaishi/OhMyDat) (MIT License)
- AmberWat氏 : [NegativeSpaceFont 4.1](https://github.com/AmberWat/NegativeSpaceFont/releases/tag/v4.1) (CC-BY-4.0 License)

## 使い方
### 項目を設定
> **1.** ストレージ `quick_line:` に、追加したい項目のidを設定します
> ```mcfunction
> data modify storage quick_line: in.id set value ["Survival", "Creative", "Adventure"]
> ```

> **2.** 項目の表示名を変更したい場合は、TextComponentを設定します
> ```mcfunction
> data modify storage quick_line: in.display set value ['{"text":"サバイバルモード"}', '{"text":"クリエイティブモード"}', '{"text":"アドベンチャーモード"}']
> ```

> **3.** `function quick_line:api/display` を実行し、実行者に一覧を表示します
> ```mcfunction
> data modify storage quick_line: in.id set value ["Survival", "Creative", "Adventure"]
> data modify storage quick_line: in.display set value ['{"text":"サバイバルモード"}', '{"text":"クリエイティブモード"}', '{"text":"アドベンチャーモード"}']
> function quick_line:api/display
> ```

### 項目を選択する
> 任意のタイミングで `function quick_line:api/select` を実行し、実行者の指定中である項目を選択します
> ```mcfunction
> function quick_line:api/select
> ```

### 項目選択時の動作を設定
> **1.** `#quick_line:select` に、項目選択時に呼び出されるファイルを追加します
> ```json
> {
>     "values": [
>         "example:change_gamemode/select"
>     ]
> }
> ```

> **2.** 選択時に呼び出されるファイル内でidを確認し、それぞれの動作を設定します  
> （ストレージ `quick_line: in` には選択された項目のidが入っています）
> ```mcfunction
> #> example:change_gamemode/select
>
> execute if data storage quick_line: {in:"Survival"} run ...
> ```
