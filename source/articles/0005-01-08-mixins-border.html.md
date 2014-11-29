---
title: border
last_update: 2014-10-06
category: mixins
---

## +border( )

同じ `border-style` 、`border-width` 、 `border-color` の `border` を複数の位置（ `top` 、 `right` 、 `bottom` 、 `left` に加え、oulu 独自の位置を指定するワードである、 `all` （上下左右）、  `horizontal` （左右）、 `vertical` （上下）も使えます）に指定するための mixin です。`border-width` の値が単位 `px` の数字だった場合、同時に単位 `rem` の値も書き出されます。

### 引数

- 第一引数に `border` の位置のワード（`top` 、 `right` 、 `bottom` 、 `left` に加え、oulu 独自の位置を指定するワードである、 `all` （上下左右）、  `horizontal` （左右）、 `vertical` （上下）も使えます）を渡します。位置のワードは複数渡すことができます。
- 第二引数に `border-style` 、`border-width` 、 `border-color` の値を渡します。順番は関係なく渡すことができます。

### 例

#### sass

```sass
.div-1
  +border(all, 1px solid white)
  
.div-2
  +border(horizontal, 1px solid white)
  
.div-3
  +border(top left, 1px solid white)
  
.div-4
  +border(top vertical, 1px solid white)
```

#### css

```css
.div-1 {
  border-width: 1px;
  border-width: 0.1rem;
  border-style: solid;
  border-color: white;
  }
  
.div-2 {
  border-left-width: 1px;
  border-left-width: 0.1rem;
  border-left-style: solid;
  border-left-color: white;
  border-right-width: 1px;
  border-right-width: 0.1rem;
  border-right-style: solid;
  border-right-color: white;
  }
  
.div-3 {
  border-top-width: 1px;
  border-top-width: 0.1rem;
  border-top-style: solid;
  border-top-color: white;
  border-left-width: 1px;
  border-left-width: 0.1rem;
  border-left-style: solid;
  border-left-color: white;
  }
  
.div-4 {
  border-top-width: 1px;
  border-top-width: 0.1rem;
  border-top-style: solid;
  border-top-color: white;
  border-left-width: 1px;
  border-left-width: 0.1rem;
  border-left-style: solid;
  border-left-color: white;
  border-right-width: 1px;
  border-right-width: 0.1rem;
  border-right-style: solid;
  border-right-color: white;
  }
```
