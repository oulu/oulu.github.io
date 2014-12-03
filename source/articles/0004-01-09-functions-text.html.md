---
title: text
last_update: 2014-10-06
category: functions
---

## text_align( )

渡された引数が css プロパティ `text-align` で使用できる値か否かを判別するための function です。`left` `right` `center` のいずれかの場合、`true` を返します。それ以外は `null` を返します。

```
text_align(left)
text_align(right)

$value: center
text_align($value)
```

上記の場合、`text_align( )` に渡された引数は css プロパティ `text-align` で使用できる値なので、 `true` を返します。


## vertical_align( )

渡された引数が css プロパティ `vertical-align` で使用できる値か否かを判別するための function です。

- `baseline`
- `top`
- `middle` 
- `bottom`
- `text-top`
- `text-bottom`
- `super`
- `sub`
- 単位ありの `number`

のいずれかの場合、`true` を返します。それ以外は `null` を返します。

```
vertical_align(baseline)
vertical_align(text-top)

$value: 20%
vertical_align($value)
```

上記の場合、`vertical_align( )` に渡された引数は css プロパティ `vertical-align` で使用できる値なので、 `true` を返します。

## vertical_align_omitted_numbers( )

渡された引数が css プロパティ `vertical-align` で使用できる値でかつ、数字ではないものか、否かを判別するための function です。

- `baseline`
- `top`
- `middle` 
- `bottom`
- `text-top`
- `text-bottom`
- `super`
- `sub`

のいずれかの場合、`true` を返します。それ以外は `null` を返します。

```
vertical_align(baseline)
vertical_align(text-top)

$value: bottom
vertical_align($value)
```

上記の場合、`vertical_align( )` に渡された引数は css プロパティ `vertical-align` で使用できる値でかつ、数字ではないものなので、 `true` を返します。


## font_weight( )

渡された引数が css プロパティ `font-weight` で使用できる値か否かを判別するための function です。`bold` `normal` `100以上の単位のない数字` のいずれかの場合、`true` を返します。それ以外は `null` を返します。

```
font_weight(bold)
font_weight(normal)
font_weight(400)

$value: 100
text_align($value)
```

上記の場合、`text_weight( )` に渡された引数は css プロパティ `font_weight` で使用できる値なので、 `true` を返します。


## font_style( )

渡された引数が css プロパティ `font-style` で使用できる値か否かを判別するための function です。`normal` `italic` `oblique` のいずれかの場合、`true` を返します。それ以外は `null` を返します。

```
font_style(normal)
font_style(italic)

$value: oblique
text_align($value)
```

上記の場合、`text_weight()` に渡された引数は css プロパティ `font_weight` で使用できる値なので、 `true` を返します。


## list\_style\_type( )

渡された引数が css プロパティ `list-style-type` で使用できる値か否かを判別するための function です。


- `disc`
- `circle`
- `square`
- `lower-roman`
- `upper-roman`
- `lower-greek`
- `decimal`
- `decimal-leading-zero`
- `lower-latin`
- `lower-alpha`
- `upper-latin`
- `upper-alpha`
- `cjk-ideographic`
- `hiragana`
- `katakana`
- `hiragana-iroha`
- `katakana-iroha`
- `hebrew`
- `armenian`
- `georgian`


上記のいずれかの場合、`true` を返します。それ以外は `null` を返します。

```
list_style_type(disc)
list_style_type(circle)

$value: decimal
list_style_type($value)
```

上記の場合、`list_style_type( )` に渡された引数は css プロパティ `list-style-type` で使用できる値なので、 `true` を返します。

## white_space( )

渡された引数が css プロパティ `white-space` で使用できる値か否かを判別するための function です。


- `normal`
- `pre`
- `nowrap`

上記のいずれかの場合、`true` を返します。それ以外は `null` を返します。

```
white_space(norma)
white_space(pre)

$value: nowrap
white_space($value)
```

上記の場合、`white_space( )` に渡された引数は css プロパティ `white-space` で使用できる値なので、 `true` を返します。
