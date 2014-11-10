---
title: reverse
last_update: 2014-10-06
category: functions
---

## reverse( )

渡された引数と逆の値を返すための function です。

### direction

- `top` ← → `bottom`
- `left` ← → `right`

方向の場合、逆方向を返します。

### percentage

- `10%` ← → `90%`

単位がパーセントの数字の場合、引数から 100% を引いた数字を返します。

### other number


- `10` ← → `-10`
- `10px` ← → `-10px`
- `-10em` ← → `10em`

単位がパーセント以外の数字の場合、引数の `+` `-` を逆にした数字を返します。

### bool


- `true` ← → `false`

`ture` の場合は `false` を、`false` の場合は `ture` を返します。


### color


- `#000000` ← → `#fffffff`
- `#ff0000` ← → `#00ffff`

色の場合は、反転色を返します。
