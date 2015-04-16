---
title: background
last_update: 2014-10-06
category: mixins
---

## +sprite-background( )

compass の sprite を使う際に、 `background-repeat` と `background-size` を一行で指定する mixin です。

### 引数

- 第一引数に画像ファイル名を渡します。その際 `' '`（シングルクオート）でファイル名を囲います。また、ファル名に画像ファイルの拡張子は付けません。デフォルトでは sprite 用の画像ファイルを置く場所は `sprites/` 以下をなります。もし、別の場所をしているする場合は、グローバルな変数 `$sprites-images-directory` を上書きして下さい。
- 第二引数に `background-size` の値を渡します。
- 第三引数に `background-repeat` の値を渡します。

### 例

#### sass

```sass
.div-1
  +sprite-background('body', 45px 50px, repeat)
```

#### css

```css
.div-1 {
  background-image: url(/sprites-s78b72b8316.png);
  background-position: 0 0;
  -moz-background-size: 45px 50px;
  -o-background-size: 45px 50px;
  -webkit-background-size: 45px 50px;
  background-size: 45px 100px;
  background-repeat: repeat;
  }
```

## +bg( )

css の background に関するスタイルを一行で書くための mixin です。

### 引数

- 第一引数に `background-color` 、 `background-image` 、 `background-position` 、  `background-repeat` 、 `background-attachment` 、 `background-size` の値を渡します。これらの値は順番関係なく渡すことができます。`background-size` の値のみ、 oulu 独自のルールで、 `(/ 20px 30px)` のように `/` （スラッシュ）を付ける必要があります。
 
### 例

#### sass

```sasss
+bg(black 'image.png' (left center) no-repeat fixed (/ 20px 30px))
```
#### css


```css
div {
  background-color: black;
  background-image: url(/images/image.png);
  background-position: left center;
  background-repeat: no-repeat;
  background-attachment: fixed;
  -moz-background-size: 20px 30px;
  -o-background-size: 20px 30px;
  -webkit-background-size: 20px 30px;
  background-size: 20px 30px;
}
````
