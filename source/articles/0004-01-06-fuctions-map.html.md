---
title: map
last_update: 2014-10-06
category: functions
---

## map( )

渡された変数が map か否かを判別するための function です。`type-of($value) == map` の場合は `true` を返し、それ以外は `null` を返します。 

```
$variables: Reich, Glass, Riley, Young
map($variables)
```

上記の場合、`$variables` は4つの変数を持ったリストなので、 `true` を返します。それ以外は `null` を返します。
