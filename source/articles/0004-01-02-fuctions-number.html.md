---
title: number
last_update: 2014-10-06
category: functions
---

数字 `type_of == number` を扱う function はこちらにまとめられています。

## odd()

奇数か偶数かを判別するための function です。`odd($value)` の引数（$value）に数字を渡し、その数字が奇数だった場合は true を返します。それ以外は null を返します。

```
odd(3)
odd(3px)
odd(3%)
odd(3em)
```

この場合、`3` は奇数なので true が返ってきます。

## even()

`even($value)` も `odd($value)` と同じく奇数か偶数かを判別するための function です。`even($value)` の引数（$value）に数字を渡し、こちらは `odd($value)` の逆でその数字が偶数だった場合は `true` を返します。それ以外は `null` を返します。

```
even(2)
even(2px)
even(2%)
even(2em)
```

この場合、`2` は偶数なので true が返ってきます。

## first_order()

複数の変数を持つ変数リストを第一引数に渡し、第二引数にその変数リストの中の任意の変数が変数リストの一番目か否かを判別するための function です。

```
$values: a, b, c, d
first_order($values, a)
```
この場合、変数 `a` は変数リスト `$values` の中の一番目にある変数なので `true` を返します。それ以外は `null` を返します。 
