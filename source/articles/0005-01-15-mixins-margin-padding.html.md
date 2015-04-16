---
title: margin-padding
last_update: 2014-10-06
category: mixins
---

## +margin( )

同じサイズの `margin` の値を一行で複数の位置に適用させるための mixin です。

### 引数

- 第一引数に `margin` の位置のワード（`top` 、 `right` 、 `bottom` 、 `left` に加え、oulu 独自の位置を指定するワードである、 `all` （上下左右）、  `horizontal` （左右）、 `vertical` （上下）も使えます）を渡します。位置のワードは複数渡すことができます。
- 第二引数に `margin` のサイズの値を渡します。 `margin` のサイズの値の単位が `px` の場合、同時に単位 `rem` の値も書き出されます。第一引数が `horizontal` （左右）、もしくは `vertical` （上下）の場合に、第二引数に2つの値を渡すこともできます。
  - 第一引数が `horizontal` の場合、第二引数の1番目の値は、`margin-left` の値になります。第一引数が `vertical` の場合、第二引数の1番目の値は、`margin-top` の値になります。
  - 第一引数が `horizontal` の場合、第二引数の2番目の値は、`margin-right` の値になります。第一引数が `vertical` の場合、第二引数の2番目の値は、`margin-bottom` の値になります。

### 例

#### sass

```sass
.div-1
  +margin(horizontal, 8px)
  
.div-2
  +margin(top right, 8px)

.div-3
  +margin(top horizontal, 8px)
  
.div-4
  +margin(vertical, 8px 16px)
```

#### css

```css
.div-1 {
  margin-left: 8px;
  margin-left: 0.8rem;
  margin-right: 8px;
  margin-right: 0.8rem;
}

.div-2 {
  margin-top: 8px;
  margin-top: 0.8rem;
  margin-right: 8px;
  margin-right: 0.8rem;
}

.div-3 {
  margin-top: 8px;
  margin-top: 0.8rem;
  margin-left: 8px;
  margin-left: 0.8rem;
  margin-right: 8px;
  margin-right: 0.8rem;
}

.div-4 {
  margin-top: 8px;
  margin-top: 0.8rem;
  margin-bottom: 16px;
  margin-bottom: 1.6rem;
}
```

## +padding( )

同じサイズの `padding` の値を一行で複数の位置に適用させるための mixin です。

### 引数

- 第一引数に `padding` の位置のワード（`top` 、 `right` 、 `bottom` 、 `left` に加え、oulu 独自の位置を指定するワードである、 `all` （上下左右）、  `horizontal` （左右）、 `vertical` （上下）も使えます）を渡します。位置のワードは複数渡すことができます。
- 第二引数に `padding` のサイズの値を渡します。 `margin` のサイズの値の単位が `px` の場合、同時に単位 `rem` の値も書き出されます。第一引数が `horizontal` （左右）、もしくは `vertical` （上下）の場合に、第二引数に2つの値を渡すこともできます。
  - 第一引数が `horizontal` の場合、第二引数の1番目の値は、`padding-left` の値になります。第一引数が `vertical` の場合、第二引数の1番目の値は、`padding-top` の値になります。
  - 第一引数が `horizontal` の場合、第二引数の2番目の値は、`padding-right` の値になります。第一引数が `vertical` の場合、第二引数の2番目の値は、`padding-bottom` の値になります。

### 例

#### sass

```sass
.div-1
  +padding(horizontal, 8px)
  
.div-2
  +padding(top right, 8px)

.div-3
  +padding(top horizontal, 8px)
  
.div-4
  +padding(vertical, 8px 16px)
```

#### css

```css
.div-1 {
  padding-left: 8px;
  padding-left: 0.8rem;
  padding-right: 8px;
  padding-right: 0.8rem;
}

.div-2 {
  padding-top: 8px;
  padding-top: 0.8rem;
  padding-right: 8px;
  padding-right: 0.8rem;
}

.div-3 {
  padding-top: 8px;
  padding-top: 0.8rem;
  padding-left: 8px;
  padding-left: 0.8rem;
  padding-right: 8px;
  padding-right: 0.8rem;
}

.div-4 {
  padding-top: 8px;
  padding-top: 0.8rem;
  padding-bottom: 16px;
  padding-bottom: 1.6rem;
}
```