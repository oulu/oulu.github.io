---
title: positions
last_update: 2014-10-06
category: mixins
---

## +absolute( )

`position: absolute` の場合の位置（`top` 、`right` 、`bottom` 、`left`）、`z-index` の値を一行で書くための mixin です。

### 引数

- 第一引数に `text-rendering: optimizelegibility` を出力するか否か（デフォルトでは `true` が指定されています）。

を渡します。

`+basic-font( )` は、

- `font-family: $basic-sans-serif` 
- `*font-family: $basic-legacy-ie-sans-serif`

を主力します。

グローバルな変数 `$basic-sans-serif`、`$basic-legacy-ie-sans-serif` にそれぞれフォントファミリーが設定されています。

- `$basic-sans-serif` は基本的なフォント設定です。
- `$basic-legacy-ie-sans-serif` はレガシーな ie のための基本的なフォント設定です。

デフォルトでは、以下のフォントファミリーが設定されています。


## +fixed( )
## +relative( )
## +top( )
## +bottom( )
## +left( )
## +right( )