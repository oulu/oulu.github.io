---
title: overlay
last_update: 2015-04-16
category: mixins
---

## +overlay( )

画面全体に被せるレイヤー（modal windo が開いたときの背景など）を一行で書くための mixin です。

### 引数

- 第一引数に overlay の色の値を渡します。この場合、アルファ値が 1 以下の色（不透明度が 0 ではない色）を渡した場合は、アルファ値が 1 以下の色が表示できないレガシーなブラウザのために png ファイルも書き出されます。
- 第二引数に overlay の `z-index` の値を渡します。デフォルトの値は2です。

### 例

#### sass

```sass
.div-1
  +overlay(rgba(black, .4), 10)
```

#### css

```css
.div-1 {
  position: fixed;
  z-index: 10;
  left: 0;
  top: 0;
  background-color: rgba(0, 0, 0, 0.4);
  background: ;
  }
```
