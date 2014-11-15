---
title: number
last_update: 2014-10-06
category: functions
---

number `type_of == number` を扱う function はこちらにまとめられています。

## number( )


引数が number `type_of == number` かどうかを判別するための function です。`number( )` に渡した値が number だった場合は `true` を返します。それ以外は `null` を返します。

```
number(3)
number(3px)
number(3%)
number(3em)
```

上記の場合、`3` 、`3px` 、`3%` 、`3em` は `number(type_of == number)` なので true を返します。

## number_list( )

引数が変数リストでかつ、そのリストの中の変数の一つ一つが全て number `type_of == number` かどうかを判別するための function です。`number( )` に渡した値が number だった場合は `true` を返します。それ以外は `null` を返します。

```
number_list(3 3px)
number_list(3px 3% 3px)
```

上記の場合、それぞれの渡された引数の変数リストの一つ一つの変数は全て `number(type_of == number)` なので `true` を返します。

## optional_number_list( )


引数が color `type_of == number` 、もしくは、引数が変数リストでかつ、そのリストの中の変数の一つ一つが全て color `type_of == number` かどうかを判別するための function です。

上記した、`number( )`　もしくは、`number_list( )` で、`true` を返す値を渡した場合、`optional_number_list( )` でも `true` を返します。

```
optional_number_list(3)
optional_number_list(3px)
optional_number_list(3% 3px)
optional_number_list(3em 3% 3px)
```

上記の場合、それぞれの渡された引数が、`number( )` で `true` を返す値、もしくは、`number_list( )` で `true` を返す値なので、 `true` を返します。

## odd( )

引数が奇数か偶数かを判別するための function です。`odd($number)` の引数（$number）に渡した値がnumberでかつ奇数だった場合は `true` を返します。それ以外は `null` を返します。

```
odd(3)
odd(3px)
odd(3%)
odd(3em)
```

この場合、`3` は奇数なので true を返します。

## even( )

`even( )` も `odd( )` と同じく奇数か偶数かを判別するための function です。`even( )` に渡した引数（$value）にnumberを渡し、こちらは `odd( )` の逆でそのnumberが偶数だった場合は `true` を返します。それ以外は `null` を返します。

```
even(2)
even(2px)
even(2%)
even(2em)
```

この場合、`2` は偶数なので `true` を返します。

## strip_unit( )

引数の number から単位を外すための function です。引数がnumberの場合、引数に付いている単位（`px` 、 `%`、 `em` など）を外した、単位無しの number を返します。

```
strip_unit(2)
strip_unit(2px)
strip_unitn(2%)
strip_unit(2em)
```

この場合、全て `2` を返します。

## unitless_number( )

引数が単位のない number かどうかを判別するための function です。`unitless_number( )` に渡した引数（ ）がnumberでかつ、単位がない場合、`true` を返します。それ以外は `null` を返します。

```
unitless_number(2)
unitless_number(0.2)
```

この場合、`2` 、`0.2` は単位がない number なので `true` を返します。

```
unitless_number(2px)
unitless_number(2%)
unitless_number(2em)
```

この場合、`2px` 、`2%`、`2em` は単位がある number なので `null` を返します。

## px( )

引数が単位 px の number かどうかを判別するための function です。`px( )` に渡した引数が number でかつ、単位が px の場合、`true` を返します。それ以外は `null` を返します。

```
px(2px)
```

この場合、`2px` は単位が px の number なので `null` を返します。

## em( )

引数が単位 em の number かどうかを判別するための function です。`em( )` に渡した引数がnumberでかつ、単位が em の場合、`true` を返します。それ以外は `null` を返します。

```
em(2em)
```

この場合、`2px` は単位が em の number なので `null` を返します。

## percent( )

引数が単位 % の number かどうかを判別するための function です。`percent( )` に渡した引数がnumberでかつ、単位が % の場合、`true` を返します。それ以外は `null` を返します。

```
percent(2%)
```

この場合、`2%` は単位が % の number なので `null` を返します。

## px\_to\_em( )

単位が px の number を単位 em の number に変換するための function です。

-	第一引数 ... 単位を em に変換したい、単位が px のnumberを渡します
-	第二引数 ... 変換後の em の基準となる単位が px のnumberを渡します

```
px_to_em(32px, 16px)
```

この場合、32px を 16px を基準とした単位 em の number に変換された を返します。

## em\_to\_px( )

単位が em の number を単位 px の number に変換するための function です。

-	第一引数 ... 単位を px に変換したい、単位が em の number を渡します
-	第二引数 ... 変換前の em の基準となる単位が px の number を渡します

```
em_to_px(2m, 16px)
```

この場合、2em を 16px を基準とした単位 px の number に変換された を返します。

## first_order( )

複数の変数を持つ変数リストを第一引数に渡し、第二引数にその変数リストの中の任意の変数が変数リストの一番目か否かを判別するための function です。

```
$values: a, b, c, d
first_order($values, a)
```

この場合、変数 `a` は変数リスト `$values` の中の一番目にある変数なので `true` を返します。それ以外は `null` を返します。
