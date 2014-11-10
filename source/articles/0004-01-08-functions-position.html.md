---
title: position
last_update: 2014-10-06
category: functions
---

## position( )

渡された引数が `top` `right` `bottom` `left` `center` のいずれかであるか否かを判別するための function です。`top` `right` `bottom` `left` `center` の場合、 `true` を返します。それ以外は `null` を返します。

```
position(top)
position(right)
position(bottom)

$value: left
position($value)

$value: center
position($value)
```

上記の場合、`position( )` に渡された引数は `top` `right` `bottom` `left` `center` のいずれかなので `true` を返します。

## top( )

渡された引数が `top` かであるか否かを判別するための function です。`top` の場合、 `true` を返します。それ以外は `null` を返します。

```
top(top)
```

上記の場合、`position( )` に渡された引数は `top` なので `true` を返します。


## bottom( )

渡された引数が `bottom` かであるか否かを判別するための function です。`bottom` の場合、 `true` を返します。それ以外は `null` を返します。

```
bottom(bottom)
```

上記の場合、`bottom()` に渡された引数は `bottom` なので `true` を返します。

## left()

渡された引数が `left` かであるか否かを判別するための function です。`left` の場合、 `true` を返します。それ以外は `null` を返します。

```
left(left)
```

上記の場合、`left()` に渡された引数は `left` なので `true` を返します。

## right()

渡された引数が `right` かであるか否かを判別するための function です。`right` の場合、 `true` を返します。それ以外は `null` を返します。

```
right(right)
```

上記の場合、`right()` に渡された引数は `right` なので `true` を返します。


## center()

渡された引数が `center` かであるか否かを判別するための function です。`center` の場合、 `true` を返します。それ以外は `null` を返します。

```
center(center)
```

上記の場合、`center()` に渡された引数は `center` なので `true` を返します。

## position_vertical()

渡された引数が `top` もしくは `bottom` であるか否かを判別するための function です。`top` もしくは `bottom` の場合、 `true` を返します。それ以外は `null` を返します。

```
position_vertical(top)

$value: bottom
position_vertical($value)
```

上記の場合、`position_vertical()` に渡された引数は `top` もしくは `bottom` なので、それぞれ `true` を返します。

## position_horizontal()

渡された引数が `left` もしくは `right` であるか否かを判別するための function です。`left` もしくは `right` の場合、 `true` を返します。それ以外は `null` を返します。

```
position_horizontal(left)

$value: right
position_horizontal($value)
```

上記の場合、`osition_horizontall()` に渡された引数は `left` もしくは `right` なので、それぞれ `true` を返します。
