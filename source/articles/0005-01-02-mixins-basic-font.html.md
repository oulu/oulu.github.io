---
title: basic-font
last_update: 2014-10-06
category: mixins
---

## +sans-serif( )

サンセリフ体のフォントファミリーの設定を呼び出すための mixin です。

### 引数

- 第一引数に `text-rendering: optimizelegibility` を出力するか否か（デフォルトでは `true` が指定されています）。

を渡します。


### フォントファミリー

- `font-family: $basic-sans-serif`
- `*font-family: $basic-legacy-ie-sans-serif`

変数 `$basic-sans-serif`、`$basic-legacy-ie-sans-serif` はそれぞれフォントファミリーが設定されています。

- `$basic-sans-serif` はサンセリフの設定です。
- `$basic-legacy-ie-sans-serif` はレガシーな ie のためのサンセリフの設定です。

`$basic-sans-serif` `$basic-legacy-ie-sans-serif` はそれぞれグローバルな変数なので、別のフォントを指定する際は、`$basic-sans-serif` `$basic-legacy-ie-sans-serif` の値を上書きします。

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

## +bold-ja( )

太字でかつ、日本語のためのフォントファミリーの設定を呼び出すための mixin です。予め `font-weight: bold` も指定されています。

### 引数

- 第一引数に `text-rendering: optimizelegibility` を出力するか否か（デフォルトでは `true` が指定されています）。

を渡します。

### フォントファミリー

- `font-family: $basic-bold-sans-serif`
- `*font-family: $basic-legacy-ie-sans-serif`

変数 `$basic-legacy-ie-sans-serif` は `+sans-serif( )` で使われているレガシーな ie のためのサンセリフのフォントファミリーの値を持った変数です。

`$basic-bold-sans-serif` はデフォルトでは以下のフォントファミリーが設定されています。

#### $basic-bold-sans-serif

```sass
$basic-bold-sans-serif: "ヒラギノ角ゴ StdN", "Hiragino Kaku Gothic StdN", "メイリオ", Meiryo, Roboto, "Droid Sans", "游ゴシック", YuGothic, "ヒラギノ角ゴ ProN", "Hiragino Kaku Gothic ProN", "メイリオ", Meiryo, "ＭＳ Ｐゴシック", Helvetica, Arial, Verdana, sans-serif, "ＭＳ Ｐゴシック", Helvetica, Arial, Verdana, sans-serif !default
```

デフォルトのフォントファミリーを上書きする場合は、`$basic-bold-sans-serif` を上書きします。

### 基本的な使い方

#### sass

```sass
body
  +bold-ja
```

#### css

```sass
body {
  font-family: "ヒラギノ角ゴ StdN", "Hiragino Kaku Gothic StdN", "メイリオ", Meiryo, Roboto, "Droid Sans", "游ゴシック", YuGothic, "ヒラギノ角ゴ ProN", "Hiragino Kaku Gothic ProN", "メイリオ", Meiryo, "ＭＳ Ｐゴシック", Helvetica, Arial, Verdana, sans-serif, "ＭＳ Ｐゴシック", Helvetica, Arial, Verdana, sans-serif;
  text-rendering: optimizelegibility;
  }
```

### text-rendering: optimizelegibility を出力しない場合

`text-rendering: optimizelegibility` を出力しない場合は、`+bold-ja( )` の第一引数に `false` を渡します。

## +serif( )

セリフ体のためのフォントファミリーの設定を呼び出すための mixin です。

### 引数

- 第一引数に `text-rendering: optimizelegibility` を出力するか否か（デフォルトでは `true` が指定されています）。

を渡します。

### フォントファミリー

`+serif( )` には、2つのフォントファミリーが設定された変数を使っています。

- `font-family: $basic-serif` はセリフの設定です。
- `*font-family: $basic-legacy-ie-sans-serif` はレガシーな ie のためのサンセリフの設定です（レガシーな ie の場合はセリフのフォントファミリーが設定されます）。

`$basic-serif` はデフォルトでは以下のフォントファミリーが設定されています。

#### $basic-serif

```sass
$basic-serif: "Times New Roman", "ヒラギノ明朝 ProN", "Hiragino Mincho ProN", "HGS明朝E", "游明朝", YuMincho, Meiryo, serif !default
```

デフォルトのフォントファミリーを上書きする場合は、`$basic-serif` を上書きします。

### 基本的な使い方

#### sass

```sass
body
  +serif
```

#### css

```sass
body {
  font-family: "Times New Roman", "ヒラギノ明朝 ProN", "Hiragino Mincho ProN", "HGS明朝E", "游明朝", YuMincho, Meiryo, serif;
  text-rendering: optimizelegibility;
  }
```

### text-rendering: optimizelegibility を出力しない場合

`text-rendering: optimizelegibility` を出力しない場合は、`+serif( )` の第一引数に `false` を渡します。

## +basic-font( )

基本的なフォントファミリーの設定を呼び出すための mixin です。

### 引数

- 第一引数に `text-rendering: optimizelegibility` を出力するか否か（デフォルトでは `true` が指定されています）。

を渡します。

### フォントファミリー

- `font-family: $basic-fonts`
- `*font-family: $basic-legacy-ie-fonts`

が設定され、変数 `$basic-fonts` `$basic-legacy-ie-fonts` は以下の値が代入されています。

```sass
$basic-fonts: $basic-sans-serif !default
$basic-legacy-ie-fonts: $basic-legacy-ie-sans-serif !default
```

デフォルトで指定されている変数 `$basic-sans-serif`、`$basic-legacy-ie-sans-serif` はそれぞれフォントファミリーが設定されています。

- `$basic-sans-serif` はサンセリフの設定です。
- `$basic-legacy-ie-sans-serif` はレガシーな ie のためのサンセリフの設定です。

デフォルトでは、以下のフォントファミリーが設定されています。
`$basic-sans-serif` `$basic-legacy-ie-sans-serif` はそれぞれグローバルな変数なので、別のフォントを指定する際は、`$basic-sans-serif` `$basic-legacy-ie-sans-serif` の値を上書きします。

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
