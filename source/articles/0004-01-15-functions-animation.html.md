---
title: animation
last_update: 2014-04-16
category: functions
---

## time( )

渡された引数が `time` か否かを判別するための function です。

渡された引数が単位 `s` を持つ `number` 、もしくは単位を持たない `number` の場合 `ture` を返します。それ以外は `null` を返します。

```
time(1s)
time(.1)
```

上記は 引数の値が単位 `s` を持つ `number` 、もしくは単位を持たない `number` なので、 `true` を返します。

## timing_function( )

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
