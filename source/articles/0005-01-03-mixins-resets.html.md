---
title: resets
last_update: 2014-10-06
category: mixins
---

## +reset-margin( )

特定の位置の `margin` を `0` にする mixin です。

- 第一引数に `0` にしたい `margin` の位置を渡します。渡す引数は `top` や `left` 単体の変数だけでなく、 `top left` のように複数の変数を持つ変数リストとしても渡せます。また、`top`、 `right` 、 `bottom` 、 `left` の他に、Oulu 独自の位置を指定するキーワードである `horizontal`（左右）、`vertical`（上下）、`all`（上下左右）も引数に渡せます。

### 使い方

#### sass

```sass
p.left
  +reset-margin(left)
  
p.top-left
  +reset-margin(top left)

p.horizontal
  +reset-margin(horizontal)

p.all
  +reset-margin(all)

```

#### css

```css
p.left {
  margin-left: 0;
}
  
p.top-left {
  margin-top: 0;
  margin-left: 0;
}

p.horizontal {
  margin-left: 0;
  margin-right: 0;
}


p.all {
  margin: 0;
}

```

## +reset-padding( )

特定の位置の `padding` を `0` にする mixin です。

- 第一引数に `0` にしたい `padding` の位置を渡します。渡す引数は `top` や `left` 単体の変数だけでなく、 `top left` のように複数の変数を持つ変数リストとしても渡せます。また、`top`、 `right` 、 `bottom` 、 `left` の他に、Oulu 独自の位置を指定するキーワードである `horizontal`（左右）、`vertical`（上下）、`all`（上下左右）も引数に渡せます。

### 使い方

#### sass

```sass
p.left
  +reset-padding(left)
  
p.top-left
  +reset-padding(top left)

p.horizontal
  +reset-padding(horizontal)

p.all
  +reset-padding(all)

```

#### css

```css
p.left {
  padding-left: 0;
}
  
p.top-left {
  padding-top: 0;
  padding-left: 0;
}

p.horizontal {
  padding-left: 0;
  padding-right: 0;
}


p.all {
  padding: 0;
}

```

## +reset-all

すべての位置の `margin`、 `padding` 両方を `0` にする mixin です。


### 使い方

#### sass

```sass
p
  +reset-all

```

#### css

```css
p {
  margin: 0;
  padding: 0;
}

```