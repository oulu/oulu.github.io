---
title: text
last_update: 2014-10-06
category: mixins
---

## +text-block( )

文字に関するスタイルを一行で指定するための mixin です。スタイルをあてたい文字をブロックとして考えられるように設計されています。

単位 `px` で指定した値は `rem` と `px` が同時に出力されます（`px` でも出力されるのは `rem` が使えないブラウザでも対応させるため）。


### 引数

- 第一引数で基本的な設定を指定します。第一引数はスペース区切りの変数リストを渡します。
  - 一番目には `font-size` の値を渡します。指定しない場合は `null` を渡します。
  - 二番目には `line-height` の値を渡します。指定しない場合は `null` を渡します。
  - 三番目には `margin-bottom` の値を渡します。指定しない場合は何も値も渡しません。
- 第二引数ではオプション的な設定を指定します。第二引数もスペース区切りの変数リストを渡します。第二引数は、渡す変数リストの値の順番は関係ありません。値を判断して自動的にプロパティに紐付けられます。
  - `font-color`
  - `font-style`
  - `font-weight`
  - 文字の高さの位置調整

#### 文字の高さの位置調整

第二引数に単位 `px` の値が渡された場合は以下のスタイルが適用されます。

```sass
position: relative
top: 渡された単位 px の値
```

スタイルをあてたい文字のブロックの y 軸方向の位置調整を行います。

### 使い方

#### sass

```sass
body
  +basic-font
```

#### css

```sass
body {
  font-family: "Helvetica Neue", "Helvetica", Roboto, "Droid Sans", "ヒラギノ角ゴ ProN", "Hiragino Kaku Gothic ProN", "游ゴシック", YuGothic, "メイリオ", Meiryo, "ＭＳ Ｐゴシック", Helvetica, Arial, Verdana, sans-serif;
  *font-family: "ＭＳ Ｐゴシック", "Lucida Sans Unicode", sans-serif;
  text-rendering: optimizelegibility;
  }
```