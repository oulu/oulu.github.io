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
  - `white-space`
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
p
  +text-block(14px 1.8 1.4em, black)

h1
  +text-block(22px 24px 24px, blue bold center)

h2
  +text-block(18px 1.6 16px, red bold center 4px)
```

#### css

```css
p {
    font-size: 14px;
    font-size: 1.4rem;
    line-height: 1.8;
    margin-bottom: 1.4em;
    color: black;
    }

h1 {
    font-size: 22px;
    font-size: 2.2rem;
    line-height: 24px;
    line-height: 2.4rem;
    margin-bottom: 24px;
    margin-bottom: 2.4rem;
    color: blue;
    font-weight: bold;
    text-align: center;
    }

h2 {
    font-size: 18px;
    font-size: 1.8rem;
    line-height: 1.6;
    margin-bottom: 16px;
    margin-bottom: 1.6rem;
    color: red;
    font-weight: bold;
    text-align: center;
    position: relative;
    top: 4px;
    top: 0.4rem;
   }
```

## +letter-spacing-center( )

`text-arign: center` のときに `letter-spacing` を設定した場合、スペースが右側にしか出来ないため、文字が中央から `letter-spacing` の分だけ左にずれてしまうのを `text-indent` で修正するための mixin です。

単位 `px` で指定した値は `rem` と `px` が同時に出力されます（`px` でも出力されるのは `rem` が使えないブラウザでも対応させるため）。


### 引数

- 第一引数に文字と文字のスペースの値を渡します

### 使い方

#### sass

```sass
h1
  text-align: center
  +letter-spacing-center(4px)

```

#### css

```css
h1 {
  text-align: center;
  letter-spacing: 4px;
  letter-spacing: 0.4rem;
  text-indent: 4px;
  text-indent: 0.4rem;
  }
```
