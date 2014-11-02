---
title: list
last_update: 2014-10-06
category: functions
---

## list( )

変数がリストか否かを判別するための function です。`type-of($value) == list` の場合は `true` を返し、それ以外は `null` を返します。 

```
$variables: Reich, Glass, Riley, Young
list($variables)
```

上記の場合、`$variables` は4つの変数を持ったリストなので、 `true` を返します。それ以外は `null` を返します。

## first_order( )

特定の変数が、その変数を含む変数リストの中の一番目か否かを判別するための function です。第一引数に変数リストを渡し、第二引数に第一引数で渡された変数リストの中にある変数のうち、一番目か否かを判別したい変数を渡します。

```
$variables: Reich, Glass, Riley, Young
first_order($variables, Reich)
```

上記の場合、`Reich` は変数リスト `$variables` の中の一番目の変数なので、`true` を返します。それ以外は `null` を返します。
