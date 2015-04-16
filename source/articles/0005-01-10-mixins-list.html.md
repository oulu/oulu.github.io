---
title: list
last_update: 2014-10-06
category: mixins
---

## +list( )

リストタグ `ol` 、 `ul` と、その中の `li` タグのスタイルを一行で書くための `mixin` です。

### 引数

- 第一引数にリストの margin の値を渡します。
  - 1番目の値に `margin-left` の値を渡します。
  - 2番目の値に `margin-bottom`  の値を渡します。
- 第二引数に `list_style_type` と `list_style_position` の値をスペース区切りで渡します。順番は関係ありません。第二引数の1番目の値に `fa` という値を渡した場合、 `list_style_type` の記号の代わりに `font-awsome` のアイコンが使われます。
  - 1番目の値に `fa` という値を渡した場合、 `list_style_type` の記号の代わりに `font-awsome` のアイコンが使われます。
  - 1番目の値に `fa` という値を渡した場合、2番目の値に `\f192` など `font-awsome` の任意のアイコンの Unicode の値を渡します。
- 第二引数に `fa` を渡した場合の、アイコンの位置の値を渡します。
  - 1番目の値にアイコンサイズの値を渡します。
  - 2番目の値にアイコンの y 軸の位置の値を渡します。
  - 3番目の値にアイコンの x 軸の位置の値を渡します。

### 例 1

#### sass

```sass  
ol
  +list(12px 24px, decimal outside)
```

#### css

```css
ol {
  margin-left: 12px;
  margin-left: 1.2rem;
  margin-bottom: 24px;
  margin-bottom: 2.4rem;
  list-style-type: decimal;
  list-style-position: outside;
}
```
### 例 2

#### sass

```sass
ul
  +list(12px 24px, fa '\f192', 12px 3px 8px)
```

#### css

```css
ul {
  margin-left: 12px;
  margin-left: 1.2rem;
  margin-bottom: 24px;
  margin-bottom: 2.4rem;
  list-style-type: none;
}
ul > li {
  position: relative;
  display: block;
  padding-left: 20px;
  padding-left: 2rem;
}
ul > li:before {
  display: inline-block;
  font-family: FontAwesome;
  font-style: normal;
  font-weight: normal;
  line-height: 1;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  font-size: 12px;
  font-size: 1.2rem;
  line-height: 12px;
  line-height: 1.2rem;
  content: "";
  position: absolute;
  left: 0;
  top: 3px;
  top: 0.3rem;
}
```