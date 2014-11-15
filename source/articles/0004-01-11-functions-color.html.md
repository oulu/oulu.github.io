---
title: color
last_update: 2014-10-06
category: functions
---

color `type_of == color` を扱う function はこちらにまとめられています。

## color( )

引数が color `type_of == color` かどうかを判別するための function です。`color( )` に渡した値が color だった場合は `true` を返します。それ以外は `null` を返します。

```
color(white)
color(#ffffff)
color(#fff)
color(rgb(255, 255, 255))
```

上記の場合、それぞれの渡された引数（`white` `#ffffff` `#fff` `rgb(255, 255, 255)` `rgba(255, 255, 255, .4)`） は `color（type_of == color）` なので `true` を返します。

## color_list( )

引数が変数リストでかつ、そのリストの中の変数の一つ一つが全て color `type_of == color` かどうかを判別するための function です。`color_list( )` に渡した値の一つ一つ全てが color だった場合は `true` を返します。それ以外は `null` を返します。

```
color(white red)
color(#ffffff #000000)
color(#fff red)
color(rgb(255, 255, 255) #fff red)
```

上記の場合、それぞれの渡された引数の変数リストの一つ一つの変数は全て `color（type_of == color）` なので `true` を返します。


## optional_color_list( )

引数が color `type_of == color` 、もしくは、引数が変数リストでかつ、そのリストの中の変数の一つ一つが全て color `type_of == color` かどうかを判別するための function です。

上記した、`color( )`　もしくは、`color_list( )` で、`true` を返す値を渡した場合、`optional_color_list( )` でも `true` を返します。


```
color(white)
color(white red)
color(#fff)
color(#ffffff #000000)
color(#fff red)
color(rgb(255, 255, 255) #fff red)
```

上記の場合、それぞれの渡された引数が、`color( )` で `true` を返す値、もしくは、`color_list( )` で `true` を返す値なので、 `true` を返します。


## luma( )

色の luma（知覚明度）を調査するための function です。引数に渡された色の luma（知覚明度）を 0 〜 100 の値で返します。

```
luma(white) → 100
luma(#000) → 0
luma(gray) → 21.58605
luma(#920000) → 6.11099
```

上記のように、引数に渡された色の luma（知覚明度）を 0 〜 100 の値で返します。


## luma_contrast( )

2つの色の luma（知覚明度）の差がしきい値以上あるか否かを判別するための function です。

差が十分であるか不十分かのしきい値のデフォルトの値は `31.83099` に設定されてます。このしきい値を変更するには、グローバルな変数 `$ruma-threshold` の値を上書きしてください。

しきい値以上の luma（知覚明度）の差がある場合は `true` 、それ以外は `null` を返します。

```
luma_contrast(#ffffff, #000000) → true
luma_contrast(gray, #920000) → null
luma_contrast(black, yellow) → true
luma_contrast(red, blue) → null
```

### 初期値を上書きした場合

```
$ruma-threshold: 10

luma_contrast(#ffffff, #000000) → true
luma_contrast(gray, #920000) → true
luma_contrast(black, yellow) → true
luma_contrast(red, blue) → true
```

## luma_value( )

2つの色の luma（知覚明度）の差を調査するための function です。第一引数に渡された色と第二引数に渡された色の luma（知覚明度）の差を 0 〜 100 の値で返します。

```
luma_value(#ffffff, #000000) → 100
luma_value(gray, #920000) → 15.47506
luma_value(black, yellow) → 92.78
luma_value(red, blue) → 14.04
```

上記のように、引数に渡された色の luma（知覚明度）の差を 0 〜 100 の値で返します。


## luma_which( )

色の luma（知覚明度）が中間より暗いか明るいかを判別するための function です。 luma（知覚明度）が50以下なら `dark` 、51以上なら `bright` の値を返します。

```
luma_which(#ffffff) → bright
luma_which(gray) → dark
luma_which(black) → dark
luma_which(pink) → bright
```

上記のように、引数に渡された色の luma（知覚明度）が50以下なら `dark` 、51以上なら `bright` の値を返します。


## luma_bright( )

色の luma（知覚明度）が中間より明るいか否かを判別するための function です。 luma（知覚明度）が51以上なら `true` 、それ以外は `null` を返します。

```
luma_which(#ffffff) → true
luma_which(gray) → null
luma_which(black) → null
luma_which(pink) → true
```

上記のように、引数に渡された色の luma（知覚明度）が51以上なら true` 、それ以外は `null` を返します。


## luma_dark( )

色の luma（知覚明度）が中間より暗いか否かを判別するための function です。 luma（知覚明度）が50以下なら `true` 、それ以外は `null` を返します。

```
luma_which(#ffffff) → null
luma_which(gray) → true
luma_which(black) → ture
luma_which(pink) → null
```

上記のように、引数に渡された色の luma（知覚明度）が50以下なら `true` 、それ以外は `null` を返します。


## luma\_contrast\_color( )

色の luma（知覚明度）の中間より暗いか否かを判別し、その結果によって特定の色を返す function です。
上記した function `luma_which( )` の結果が `bright` の場合、 `$luma-contrast-bright-color` を返し、結果が `dark` の場合、 `$luma-contrast-dark-color` を返します。

- `$luma-contrast-bright-color` の初期値は `#000000`
- `$luma-contrast-dark-color` の初期値は `#ffffff`

に設定されています。

`$luma-contrast-bright-color`、`$luma-contrast-dark-color` はそれぞれグローバルな変数です。別の値を設定する場合は、この変数を上書きしてください。


```
luma_contrast_color(#ffffff) → #000000
luma_contrast_color(gray) → #ffffff
luma_contrast_color(black) → #ffffff
luma_contrast_color(pink) → #000000
```
### 初期値を上書きした場合

```
$luma-contrast-bright-color: maroon
$luma-contrast-dark-color: pink

luma_contrast_color(#ffffff) → maroon
luma_contrast_color(gray) → pink
luma_contrast_color(black) → pink
luma_contrast_color(pink) → maroon
```


## luma\_add\_contrast( )

2つ色の luma（知覚明度）の差が、上記した function `luma_contrast( )` で判別した結果、しきい値以上でなかった場合に、白もしくは黒を混ぜてコントラストを補正した色を返す function です。

第一引数に比較対象の色、第二引数にコントラストを補正したい色を渡します。第一引数の色と第二引数の色が`luma_contrast( )` で判別した結果、しきい値以上であった場合は第二引数で渡した色をそのまま返します。

そうでなかった場合、

第一引数で渡した比較対象の色が luma（知覚明度）が50以下の場合は、第二引数に渡された色に白を足した色を返します。

第一引数で渡した比較対象の色が luma（知覚明度）が51以上の場合は、第二引数に渡された色に黒を足した色を返します。

```
luma_add_contrast(#ffffff, #000000) → #000000
luma_add_contrast(gray, #920000) → #ca8585
luma_add_contrast(black, yellow) → yellow
luma_add_contrast(red, blue) → #8787ff
```
