---
title: background
last_update: 2014-10-06
category: functions
---

## background_color( )

`background` に関する css プロパティ（ `background-color` `background-position` `background-size` `background-size` `background-repeat` `background-attachment` のいずれか）のうちのどれに対して与えられた値かを判別するための function の一つです。

`background_color( )` は渡された引数が `background-color` に対する値だった場合に `true` を返します。引数が `type_of == color` だった場合に `true` を返す function `color( )` と同じ機能を果たしますが、`background` に関する css プロパティに対して使う際に明示的に `background` に関する css プロパティの中の `background-color` か否かと書くことができます。

```
background_color(white)
background_color(#ffffff)
background_color(#fff)
background_color(rgb(255, 255, 255))
```

それぞれの渡された引数が `background`  に関する css プロパティの値の判別に使われた場合、上記は `background-color` に対しての値なので `true` を返します。


## background_position( )

`background` に関する css プロパティ（ `background-color` `background-position` `background-size` `background-size` `background-repeat` `background-attachment` のいずれか）のうちのどれに対して与えられた値かを判別するための function の一つです。

`background_position( )` は渡された引数が `background-position` に対する値だった場合に `true` を返します。

```
background_position(center top)
background_position(10px 20px)
background_position(10% 20%)
background_position(10em 20em)
```

それぞれの渡された引数が `background` に関する css プロパティの値の判別に使われた場合、上記は `background-position` に対しての値なので `true` を返します。


### background-position と background-size に対する値の書き方のルール

`background` に関する css プロパティの中で、`background-position` と `background-size` のどちｒに対しての値なのかを判別するために、明示的に値を書き分けるルールがあります。

`background-position` には `left right top bottom center` の位置を値として使うことが出来ますが、`background-size` の値は位置は使えません。

`background-size` には `auto` `contain` `cover` の背景画像のサイズをどのように表示するかを設定する値がありますが、`background-size` に対してそれらの値は使えません。

しかし、`background-position` 、`background-size` どちらとも数値も値に使うことができます。そのため、数値を判別する場合に、それが `background-size` 、`background-position` どちらにに対しての値なのかを判別することができず、明示的に数値にその数値はどちらに対しての値かを書く必要があります。

Oulu では、`background` に関する値を判別する際に判別対象の値が数値の場合で、それが `background-size` に対しての値である場合は最初に `/`（スラッシュ）を付けるルールを設けました。スラッシュの後はスペースを入れても入れなくても `background-size` に対する値と判断します。また、 `background-size` だけが使える値（`auto` `contain` `cover`）は、 `/`（スラッシュ）を付けても付けなくても `background-size` に対しての値であると判別します。

```
(center top) → background-position
(10px 20px) → background-position
(10% 20%) → background-position
(10em 20em) → background-position

(auto) → background-size
(contain) → background-size
(cover) → background-size
(/10px 20px) → background-size
(/ 10px 20px) → background-size
(/10% 20%) → background-position
(/ 10em 20em) → background-position
(/ auto) → background-size
(/ contain) → background-size
(/cover) → background-size
```

## background_size( )

`background` に関する css プロパティ（ `background-color` `background-position` `background-size` `background-size` `background-repeat` `background-attachment` のいずれか）のうちのどれに対して与えられた値かを判別するための function の一つです。

`background_size( )` は渡された引数が `background-size` に対する値だった場合に `true` を返します。

```
background_size(auto)
background-size(contain)
background-size(cover)
background-size(/10px 20px)
background-size(/ 10px 20px)
background-size(/10% 20%)
background-position(/ 10em 20em)
background-position(/ auto)
background-size(/ contain)
background-size(/cover)
```

それぞれの渡された引数が `background` に関する css プロパティの値の判別に使われた場合、上記は `background-size` に対しての値なので `true` を返します。基本的に `background-size` に対しての値を書く場合、Oulu には先頭に `/`（スラッシュ）を付けるというルールがあります。このルールについての詳細は女医気、background_position( ) の中にある background-position と background-size に対する値の書き方のルール を参照ください。

## background_repeat( )
## background_attachment( )