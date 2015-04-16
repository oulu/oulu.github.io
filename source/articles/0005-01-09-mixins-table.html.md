---
title: table
last_update: 2014-10-06
category: mixins
---

## +table-row( )

`table` タグ内の `tr` タグのための `mixin` です。 `background-color` と `border` が一行で設定できます。


### 引数

- 第一引数に `color` の値を渡すと、その色が `background-color` になります。2つの `color` をスペース区切りで渡すと、 `&:nth-child(odd)` と `&:nth-child(even)` で2つの色が交互に指定されます。
- 第二引数に `tr` に適用する `border` の値を渡します。 第二引数全体を `( )` （カッコ）で囲い、`border` の方向を渡し、そのあとに`,` （カンマ）、そのあとに `border-style` 、`border-width` 、 `border-color` の値をスペース区切りで渡します。`border-style` 、`border-width` 、 `border-color` の値の順番は関係なく渡すことができます。この書式は `+border( )` と同じです。

### 例

#### sass

```sass
tr
  +table-row(white #eeeeee, (bottom, solid 1px black))
```

#### css

```css
tr {
  border-bottom-width: 1px;
  border-bottom-width: 0.1rem;
  border-bottom-style: solid;
  border-bottom-color: black;
  }
tr:nth-child(odd) {
  background-colorl: white;
  }
tr:nth-child(even) {
  background-colorl: #eeeeee;
  }
  
```

## +table-cell( )

`table` タグ内の `td` もしくは `th` タグのための `mixin` です。 cell と `border` 、 `font` と `text` のスタイルが一行で設定できます。


### 引数

- 第一引数に cell の基本設定の値を渡します。基本設定の内容は以下になります。基本設定は順番は関係ありません。
  - padding 、書式は `+padding( )` と同じ書き方で、値を `()` （カッコ）で囲います。
  - white-space
  - background-color
  - vertical-align
- 第二引数に `font` と `text` の設定を渡します。書式は `+textblock( )` と同じ書き方で、値を `()` （カッコ）で囲います。
- 第三引数に `border` の設定を渡します。書式は `+border( )` と同じ書き方で、値を `()` （カッコ）で囲います。

### 例

#### sass

```sass
th
  +table-cell(middle (12px 16px) nowrap white, (14px 1.8, black bold center), (bottom, solid 1px black))

td
  +table-cell(top (left bottom, 12px 16px) nowrap white, (16px 24px, black bold right), (all, solid 2px black))
```

#### css

```css
th {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  vertical-align: middle;
  padding: 12px 16px;
  padding: 1.2rem 1.6rem;
  white-space: nowrap;
  background-color: white;
  font-size: 14px;
  font-size: 1.4rem;
  line-height: 1.8;
  color: black;
  font-weight: bold;
  text-align: center;
  border-bottom-style: solid;
  border-bottom-width: 1px;
  border-bottom-width: 0.1rem;
  border-bottom-color: black;
}

td {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  vertical-align: top;
  white-space: nowrap;
  background-color: white;
  font-size: 16px;
  font-size: 1.6rem;
  line-height: 24px;
  line-height: 2.4rem;
  color: black;
  font-weight: bold;
  text-align: right;
  border-style: solid;
  border-width: 2px;
  border-width: 0.2rem;
  border-color: black;
}
  
```