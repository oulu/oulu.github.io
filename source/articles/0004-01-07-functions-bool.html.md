---
title: bool
last_update: 2014-10-06
category: functions
---

## bool( )

渡された引数が `type-of($value) == bool` か否かを判別するための function です。`true` もしくは `false` が渡された場合は `true` を返し、それ以外は `null` を返します。 

```
bool(true)

$value: if(type-of(oulu) == number, true, false)
bool($value)
```

上記の場合、`bool()` に渡された引数は `true` もしくは `false` なので、 `true` を返します。