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

上記の場合、`$variables` は4つの変数を持ったリストなので、 `true` を返します。

## first_order( )