---
title: block
last_update: 2015-04-16
category: mixins
---

## +block-size( )

`height` と `width` の値を一行で書くための mixin です。

### 引数

- 第一引数の一番目に `height` の値、 二番目に `width` の値

を渡します。値が一つしかない場合には `height` と `width` 両方に同じ値を渡します。値の単位が `px` だった場合は、同時に単位 `rem` の値も書き出されます。

### 例

#### sass

```sass
.div-1
  +size(20px 40px)

.div-2
  +size(20px)
```

#### css

```css
.div-1 {
  height: 20px;
  height: 2rem;
  width: 40px;
  width: 4rem;
}

.div-2 {
  height: 20px;
  height: 2rem;
  width: 20px;
  width: 2rem;
}
```

## +center-block( )

`position: fixed` で画面中央に任意のサイズのブロックを配置する設定を一行で書くための mixin です。

### 引数

- 第一引数
  - 一番目の値にブロックの `height` の値
  - 二番目の値にブロックの `width` の値
  - 二番目の値にブロックの `z-index` の値

を渡します。`height` 、`width` の値の単位が `px` だった場合は、 単位 `rem` の値も同時に書き出されます。

### 例

#### sass

```sass
.div
  +center-block(100px 200px 100)
```

#### css

```css
.div {
  position: fixed;
  height: 100px;
  height: 10rem;
  width: 200px;
  width: 20rem;
  left: 50%;
  top: 50%;
  mergin-top: -100px;
  mergin-top: -10rem;
  mergin-left: -50px;
  mergin-left: -5rem;
}
```
