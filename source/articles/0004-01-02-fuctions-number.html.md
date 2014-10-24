---
title: number
last_update: 2014-10-06
category: functions
---

数字 `type_of == number` を扱う function はこちらにまとめられています。

## number( )

引数が数字 `type_of == number` かどうかを判別するための function です。`number($number)` に渡した値が数字だった場合は true を返します。それ以外は null を返します。

```
number(3)
number(3px)
number(3%)
number(3em)
```
この場合、`3` 、`3px` 、`3%` 、`3em` は数字（type_of == number）なので true が返ってきます。


## odd( )

引数が奇数か偶数かを判別するための function です。`odd($number)` の引数（$number）に渡した値が数字でかつ奇数だった場合は true を返します。それ以外は null を返します。

```
odd(3)
odd(3px)
odd(3%)
odd(3em)
```

この場合、`3` は奇数なので true が返ってきます。

## even( )

`even($number)` も `odd($number)` と同じく奇数か偶数かを判別するための function です。`even($number)` に渡した引数（$value）に数字を渡し、こちらは `odd($number)` の逆でその数字が偶数だった場合は `true` を返します。それ以外は `null` を返します。

```
even(2)
even(2px)
even(2%)
even(2em)
```

この場合、`2` は偶数なので true が返ってきます。

## strip_unit( )

引数の数字から単位を外すための function です。引数が数字の場合、引数に付いている単位（`px` 、 `%`、 `em` など）を外した、単位無しの数字が返ってきます。

```
strip_unit(2)
strip_unit(2px)
strip_unitn(2%)
strip_unit(2em)
```

この場合、全て `2` が返ってきます。

## unitless_number( )

引数が単位のない数字かどうかを判別するための function です。`unitless_number($number)` に渡した引数（$number）が数字でかつ、単位がない場合、`true` を返します。それ以外は `null` を返します。

```
unitless_number(2)
unitless_number(0.2)
```

この場合、`2` 、`0.2` は単位がない数字なので true が返ってきます。


```
unitless_number(2px)
unitless_number(2%)
unitless_number(2em)
```

この場合、`2px` 、`2%`、`2em` は単位がある数字なので null が返ってきます。


## first_order( )

複数の変数を持つ変数リストを第一引数に渡し、第二引数にその変数リストの中の任意の変数が変数リストの一番目か否かを判別するための function です。

```
$values: a, b, c, d
first_order($values, a)
```
この場合、変数 `a` は変数リスト `$values` の中の一番目にある変数なので `true` を返します。それ以外は `null` を返します。 

