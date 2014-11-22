---
title: text
last_update: 2014-10-06
category: mixins
---

## +basic-font( )

サイトで指定する基本的なフォント設定を呼び出すための mixin です。

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

#### $basic-sans-serif

```sass
$basic-sans-serif: "Lucida Grande", "Lucida Sans Unicode", Roboto, "Droid Sans", "ヒラギノ角ゴ ProN", "Hiragino Kaku Gothic ProN", "游ゴシック", YuGothic, "メイリオ", Meiryo, "ＭＳ Ｐゴシック", Helvetica, Arial, Verdana, sans-serif !default
```

#### $basic-legacy-ie-sans-serif

```sass
$basic-legacy-ie-sans-serif: "ＭＳ Ｐゴシック", "Lucida Sans Unicode", sans-serif !default
```

デフォルトのフォントファミリーを上書きする場合は、`$basic-sans-serif`、`$basic-legacy-ie-sans-serif` それぞれを上書きします。

### 基本的な使い方

#### sass

```sass
body
  +basic-font
```

#### css

```sass
body {
  font-family: "Helvetica Neue", "Helvetica", Roboto, "Droid Sans", "ヒラギノ角ゴ ProN", "Hiragino Kaku Gothic ProN", "游ゴシック", YuGothic, "メイリオ", Meiryo, "ＭＳ Ｐゴシック", Helvetica, Arial, Verdana, sans-serif;
  *font-family: "ＭＳ Ｐゴシック", "Lucida Sans Unicode", sans-serif;
  text-rendering: optimizelegibility;
  }
```

### text-rendering: optimizelegibility を出力しない場合

`text-rendering: optimizelegibility` を出力しない場合は、`+basic-font( )` の第一引数に `false` を渡します。

#### sass

```sass
body
  +basic-font(false)
```

#### css

```sass
body {
  font-family: "Helvetica Neue", "Helvetica", Roboto, "Droid Sans", "ヒラギノ角ゴ ProN", "Hiragino Kaku Gothic ProN", "游ゴシック", YuGothic, "メイリオ", Meiryo, "ＭＳ Ｐゴシック", Helvetica, Arial, Verdana, sans-serif;
  *font-family: "ＭＳ Ｐゴシック", "Lucida Sans Unicode", sans-serif;
  }
```

## +sans-serif( )



## +bold-ja( )

## +serif( )

## +is-ja

## +is-bold-ja

## +webfont-ja-sans-selif
