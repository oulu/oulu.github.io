---
title: color
last_update: 2014-10-06
category: functions
---

color `type_of == color` を扱う function はこちらにまとめられています。

## color( )

引数が color `type_of == number` かどうかを判別するための function です。`color($value)` に渡した値が color だった場合は `true` を返します。それ以外は `null` を返します。

```
color(white)
color(#ffffff)
color(#fff)
color(rgb(255, 255, 255))
```

この場合、それぞれの渡された引数（`white` `#ffffff` `#fff` `rgb(255, 255, 255)` `rgba(255, 255, 255, .4)`） は `color（type_of == color）` なので `true` を返します。

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
差が十分であるか不十分かのしきい値は `31.83099` をデフォルトで設定されいます。このしきい値を変更するには、`$ruma-threshold: 100 / pi() !default` の値を上書きしてください。
しきい値以上の luma（知覚明度）の差がある場合は `true` 、それ以外は `null` を返します。

```
luma_contrast(#ffffff, #000000) → true
luma_contrast(gray, #920000) → null
luma_contrast(black, yellow) → true
luma_contrast(red, blue) → null
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

## luma_dark( )

## luma_contrast_color( )

## luma_add_contrast( )
