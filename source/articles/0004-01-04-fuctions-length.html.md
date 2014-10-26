---
title: length
last_update: 2014-10-06
category: functions
---

## equal_nth( )

変数リストが持つ変数の総数が、特定の数とイコールか否かを判別するための function です。第一引数で指定した変数リストが持つ変数の総数と、第二引数で指定した数がイコールの場合は `true` を返し、それ以外は `null` を返します。 

```
$variables: Reich, Glass, Riley, Young
$n: 4
equal_nth($variables, $n)
```

上記の場合、`equal_nth($variables, 4)` は第二引数に `4` の数字が入っているので、この function は 変数リスト `$variables` は `4` つの変数を持っているか否かを判別します。変数リスト `$variables` は変数を4つ持っているので、この場合は `true` を返します。

```
equal_nth((Lentz Holt Cardew), 3))
```

```
$variables: Lentz Holt Cardew
equal_nth($variables, 3)
```

```
$variables: Lentz, Holt, Cardew
equal_nth($variables, 3)
```

```
$variables: Lentz, Holt, Cardew
$n: 3
equal_nth($variables, $n)
```

上記はすべて `true` を返します。

## or\_more\_nth( )

変数リストが持つ変数の総数が、特定の数以上か否かを判別するための function です。第一引数で指定した変数リストが持つ変数の総数が、第二引数で指定した数以上の場合は `true` を返し、それ以外は `null` を返します。 

```
$variables: Reich, Glass, Riley, Young
$n: 3
or_more_nth($variables, $n)
```

上記の場合、`or_more_nth($variables, 3)` は第二引数に `3` の数字が入っているので、この function は 変数リスト `$variables` は `3` つ以上の変数を持っているか否かを判別します。変数リスト `$variables` は変数を4つ持っているので、この場合は `true` を返します。

```
or_more_nth((Lentz Holt Cardew), 3))
```

```
$variables: Lentz Holt Cardew
or_more_nth($variables, 2)
```

```
$variables: Lentz, Holt, Cardew
or_more_nth($variables, 3)
```

```
$variables: Lentz, Holt, Cardew
$n: 2
or_more_nth($variables, $n)
```

上記はすべて `true` を返します。

## optional_nth( )


変数リストが持つ変数の総数が、特定の数以上か否かを判別し、特定の数以上だった場合に変数リストの特定の数番目の変数を返す function です。

また、それ以外の場合、基本的には `null` を返しますが、特定の値を返すこともできます。

### or\_more\_nth( ) の追加機能としての optional_nth( )

`optional_nth( )` は内部に function `or_more_nth( )` を使っています。

`or_more_nth( )` は第一引数で指定した変数リストが持つ変数の総数が、第二引数で指定した数以上の場合は `true` を返し、それ以外は `null` を返す function ですが、`optional_nth( )` は `or_more_nth( )` で `true` を返した場合に、第一引数で指定した変数リストの中の、第二引数で指定した数番目の変数を返します。

また、`or_more_nth( )` で `null` を返した場合、`or_more_nth( )` の第三引数を返します。`or_more_nth( )` の第三引数の defoult 値は `null` です。

```
$variables: Reich, Glass, Riley, Young
$n: 3
optional_nth($variables, $n)
```

この場合、変数リスト `$variables` の変数の総数は `3` 以上なので、`$variables` の  `3` 番目の変数、 `Riley` を返します。

上記の場合、`or_more_nth($variables, 3)` は第二引数に `3` の数字が入っているので、この function は 変数リスト `$variables` は `3` つ以上の変数を持っているか否かを判別します。変数リスト `$variables` は変数を4つ持っているので、この場合は `true` を返します。

```
or_more_nth((Lentz Holt Cardew), 3))
```

この場合、変数リスト `$variables` の変数の総数は `3` 以上なので、`$variables` の  `3` 番目の変数、 `Cardew` を返します。

```
$variables: Lentz Holt Cardew
or_more_nth($variables, 4)
```

この場合、変数リスト `$variables` の変数の総数は `4` 以上ではなく、`or_more_nth( )` の第三引数が指定されていないため、`or_more_nth( )` の第三引数の defoult 値である `null` を返します。

```
$variables: Lentz Holt Cardew
or_more_nth($variables, 4, 'Nyman')
```

この場合、変数リスト `$variables` の変数の総数は `4` 以上ではなく、`or_more_nth( )` の第三引数が `Nyman` と指定されているため、`Nyman` を返します。
