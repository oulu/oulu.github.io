---
title: border
last_update: 2014-10-06
category: functions
---

## border_color( )

`border` に関する css プロパティ（ `border-color` `border-style` `border-width` のいずれか）のうちのどれに対して与えられた値かを判別するための function の一つです。

`border_color( )` は渡された引数が `border-color` に対する値だった場合に `true` を返します。引数が `type_of == color` だった場合に `true` を返す function `color( )` と同じ機能を果たしますが、`background` に関する css プロパティに対して使う際に明示的に `border` に関する css プロパティの中の `border-color` か否かと書くことができます。

```
border_color(white)
border_color(#ffffff)
border_color(#fff)
border_color(rgb(255, 255, 255))
```

それぞれの渡された引数が `border`  に関する css プロパティの値の判別に使われた場合、上記は `border-color` に対しての値なので `true` を返します。

## border_width( )

`border` に関する css プロパティ（ `border-color` `border-style` `border-width` のいずれか）のうちのどれに対して与えられた値かを判別するための function の一つです。

`border_width( )` は渡された引数が `border-width` に対する値だった場合に `true` を返します。

一部、引数が `type_of == number` だった場合に `true` を返す function `number( )` と同じ機能を果たしますが、`background` に関する css プロパティに対して使う際に明示的に `border` に関する css プロパティの中の `border-width` か否かと書くことができます。それに加えて、`border-width` に対する値として使えるキーワード、`thin` `medium` `thick` の場合も `true` を返します。

```
border_width(1px)
border_width(1%)
border_width(1em)
border_width(thin)
border_width(medium)
border_width(thick)
```
それぞれの渡された引数が `border`  に関する css プロパティの値の判別に使われた場合、上記は `border-width` に対しての値なので `true` を返します。

## border_style( )

`border` に関する css プロパティ（ `border-color` `border-style` `border-width` のいずれか）のうちのどれに対して与えられた値かを判別するための function の一つです。

`border_style( )` は渡された引数が `border-style` に対する値だった場合に `true` を返します。

### border-style に使える値

- none
- hidden
- solid
- double
- groove
- ridge
- inset
- outset
- dashed
- dotted

```
border_style(none)
border_style(dotted)
border_style(hidden solid)
border_style(solid double hidden)
border_style(inset solid double hidden)
```

それぞれの渡された引数が `border`  に関する css プロパティの値の判別に使われた場合、上記は `border-style` に対しての値なので `true` を返します。

## border_position( )

`border` に関する css プロパティ（ `border-color` `border-style` `border-width` のいずれか）のうちのどれに対して与えられた値かを判別するための function の一つです。

`border_position( )` は渡された引数が `border-position` に対する値だった場合に `true` を返します。それに加え、`border-position` に使える値に加え、Oulu 独自の値、`horizontal`（左右） `vertical`（上下）を渡した際も  `true` を返します。

```
border_position(left)
border_position(horizontal)
border_position(horizontal top)
border_position(vertical left)
border_position(all)
```
それぞれの渡された引数が `border`  に関する css プロパティの値の判別に使われた場合、上記は `border-position` に対しての値なので `true` を返します。
