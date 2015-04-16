---
title: animation
last_update: 2014-10-06
category: mixins
---

## +keyframes( )

compass に含まれている mixin です。

css `@keyframes` を作成する際、ベンダープレフィックスを自動で付与させるための mixin です。

### 引数

- 第一引数に `@keyframes` の `animation-name` の値を渡します。

タイミング（%）でインデント、プロパティと値をインデントで `@keyframes` のスタイルを書きます。

### 例

#### sass

```sass
.div-1
  animation-name: anime1
  animation-duration: 5s
  animation-timing-function: ease
  animation-iteration-count: infinite

+keyframes(anime1)
  0%
 	width: 50px
 	height: 50px
 	background-color: aqua
  100%
    width: 200px
    height: 50px
    background-color: blue
```

#### css

```css
.div-1 {
  animation-name: anime1;
  animation-duration: 5s;
  animation-timing-function: ease;
  animation-iteration-count: infinite;
}

@-webkit-keyframes anime1 {
  0% {
    width: 50px;
    width: 5rem;
    height: 50px;
    height: 5rem;
    background-color: aqua;
  }
  100% {
    height: 50px;
    height: 5rem;
    width: 200px;
    width: 20rem;
    background-color: blue;
  }
}
@-moz-keyframes anime1 {
  0% {
    width: 50px;
    width: 5rem;
    height: 50px;
    height: 5rem;
    background-color: aqua;
  }
  100% {
    height: 50px;
    height: 5rem;
    width: 200px;
    width: 20rem;
    background-color: blue;
  }
}
@-ms-keyframes anime1 {
  0% {
    width: 50px;
    width: 5rem;
    height: 50px;
    height: 5rem;
    background-color: aqua;
  }
  100% {
    height: 50px;
    height: 5rem;
    width: 200px;
    width: 20rem;
    background-color: blue;
  }
}
@keyframes anime1 {
  0% {
    width: 50px;
    width: 5rem;
    height: 50px;
    height: 5rem;
    background-color: aqua;
  }
  100% {
    height: 50px;
    height: 5rem;
    width: 200px;
    width: 20rem;
    background-color: blue;
  }
}
```

## +transition( )

css `transition` に関するスタイルを一行で書くための mixin です。

### 引数

- 第一引数に `transition-name` 、 `transition-duration` 、 `transition-timing-function` 、 `transition-delay` の値をスペース区切りで渡します。順番は関係ありません。`transition-delay` の値だけ oulu 独自のルールがあり、値の前に `/` （スラッシュ）を付ける必要があります。


### 例

#### sass

```sass
div
  +transition(.5s (width, height) ease-in (/ 1s))
```

#### css

```css
div {
  -moz-transition-duration: 0.5s;
  -o-transition-duration: 0.5s;
  -webkit-transition-duration: 0.5s;
  transition-duration: 0.5s;
  -moz-transition-property: width, height;
  -o-transition-property: width, height;
  -webkit-transition-property: width, height;
  transition-property: width height;
  -moz-transition-timing-function: ease-in;
  -o-transition-timing-function: ease-in;
  -webkit-transition-timing-function: ease-in;
  transition-timing-function: ease-in;
  -moz-transition-delay: 1s;
  -o-transition-delay: 1s;
  -webkit-transition-delay: 1s;
  transition-delay: 1s;
}
```

## +animations( )

css `animation` に関するスタイルを一行で書くための mixin です。

### 引数

- 第一引数に `animation-name` 、 `animation-duration` 、 `animation-timing-function` 、 `animation-delay` 、 `animation-iteration-count` 、`animation-direction` 、 `animation_fill_mode` 、 `animation-play-states` の値をスペース区切りで渡します。順番は関係ありません。`animation-delay` の値だけ oulu 独自のルールがあり、値の前に `/` （スラッシュ）を付ける必要があります。
- 複数の animation を設定する場合、第二引数にも第一引数と同じように animation の値をスペース区切りで渡します。最大10個まで animation を設定することができます。

### 例

#### sass

```sass
div
  +animations(animation-1 5s ease (/2s) infinite alternate nonel, animation-2 3s linear (/1s) 2 normal forwards)
```

#### css

```css
div {
  -moz-animation-name: animation-1, animation-2;
  -webkit-animation-name: animation-1, animation-2;
  animation-name: animation-1, animation-2;
  -moz-animation-duration: 5s, 3s;
  -webkit-animation-duration: 5s, 3s;
  animation-duration: 5s, 3s;
  -moz-animation-timing-function: ease, linear;
  -webkit-animation-timing-function: ease, linear;
  animation-timing-function: ease, linear;
  -moz-animation-delay: 2s, 1s;
  -webkit-animation-delay: 2s, 1s;
  animation-delay: 2s, 1s;
  -moz-animation-iteration-count: infinite, 2;
  -webkit-animation-iteration-count: infinite, 2;
  animation-iteration-count: infinite, 2;
  -moz-animation-direction: alternate, normal;
  -webkit-animation-direction: alternate, normal;
  animation-direction: alternate, normal;
  -moz-animation-fill-mode: nonel, forwards;
  -webkit-animation-fill-mode: nonel, forwards;
  animation-fill-mode: nonel, forwards;
}
```
