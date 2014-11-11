---
title: image
last_update: 2014-10-06
category: functions
---

## image( )

渡された引数が画像ファイルかどうかを判別するための function です。`image( )` に渡した値が画像ファイルだった場合は `true` を返します。

```
image('img.jpg')
image('img.JPG')
image('img.jpeg')
image('img.png')
image('img.gif')
image('img.tif')
image('img.tiff')
```

上記の場合、それぞれの渡された引数が画像ファイルなので `true` を返します。