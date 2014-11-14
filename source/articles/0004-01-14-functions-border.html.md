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
