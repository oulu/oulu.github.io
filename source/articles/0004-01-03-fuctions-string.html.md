---
title: string
last_update: 2014-10-06
category: functions
---

string( )
---------

引数が string `type_of == string` かどうかを判別するための function です。`string($string)` に渡した値が string だった場合は true を返します。それ以外は null を返します。

```
string(Oulu)
string('Oulu')
string("Oulu")
string('Oulu Sass')
string("Oulu Sass")
string('1')
string('1em')
string("1em")
string('left: 1px')
string("left: 1px")
```

上記はいずれも string（type_of == string）なので true が返ってきます。

```
string(1)
string(1px)
string(1em)
string(Oulu Sass)
string((left: 1px))
```

上記はいずれも string（type_of == string）ではないので null が返ってきます。