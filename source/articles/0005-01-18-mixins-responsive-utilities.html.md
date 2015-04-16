---
title: responsive-utilities
last_update: 2014-10-06
category: mixins
---

## responsive-utilities

デバイスのサイズ（ `media=print` も含む）ごとに `media-query` を使って、表示、非表示を class で指定するための設定です。

### class の書き方

```slim
.visible-{デバイスサイズ}-{block or inline or inline-block}
```

### class の例

- `.visible-xs-block` デバイスサイズが `xs` のときだけ `display= "block"` になる。それ以外は `display= "none"`。
- `.visible-sm-inline` デバイスサイズが `sm` のときだけ `display= "inline"` になる。それ以外は `display= "none"`。
- `.visible-md-inline` デバイスサイズが `md` のときだけ `display= "inline-block"` になる。それ以外は `display= "none"`。
- `.visible-print` print の場合表示される。
- `.hidden-print` print の場合非表示。

