---
title: link
last_update: 2015-04-16
category: mixins
---

## +block-link

`display: block` と `text-decoration: none` を一行で書くための mixin です。ボタンの見た目のリンクなどに使うことを想定しています。


### 例

#### sass

```sass
a
  +block-link
  width: 100px
  font-size: 12px
  text-align: center
  line-height: 30px
  color: white;
  background-color: red
```

#### css

```css
a {
  display: block;
  text-decoration: none;
  width: 100px;
  font-size: 12px;
  text-align: center;
  line-height: 30px;
  color: white;
  background-color: red;
  }
```

## +inline-block-link

`display: inline-block` と `text-decoration: none` を一行で書くための mixin です。ボタンの見た目のリンクなどに使うことを想定しています。


### 例

#### sass

```sass
a
  +block-link
  width: 100px
  font-size: 12px
  text-align: center
  line-height: 30px
  color: white;
  background-color: red
```

#### css

```css
a {
  display: inline-block;
  text-decoration: none;
  width: 100px;
  font-size: 12px;
  text-align: center;
  line-height: 30px;
  color: white;
  background-color: red;
  }
```

## +hover-link( )

リンクタグなどで、 `link` の状態では `text-decoration: none`  、 `hover` と `active` の状態では `text-decoration: underline` となるスタイルを適用するための mixin です。

### 引数

- 第一引数には、特定の class 名を渡します。すると、その class が付いた場合は `hover-link( )` の `hover` 、 `active` の状態と同じスタイルが適用されます。

### 例

#### sass

```sass
a
  +hover-link

span
  +hover-link('.is-hover')
```

#### css

```css
a {
  text-decoration: none;
}
a:hover,
a:active {
  text-decoration: underline;
}

span {
  text-decoration: none;
}
span:hover,
span:active,
span.is-hover {
  text-decoration: underline;
}
```


## +hover-link-reverse( )

リンクタグなどで、 `link` の状態では `text-decoration: underline`  、 `hover` と `active` の状態では `text-decoration: none` にとなる、上記 `+hover-link( )` と逆の設定を適用するための mixin です。

### 引数

- 第一引数には、特定の class 名を渡します。すると、その class が付いた場合は `hover-link-reverse` の `hover` 、 `active` の状態と同じスタイルが適用されます。


### 例

#### sass

```sass
a
  +hover-link-reverse

span
  +hover-link-reverse('.is-hover')
```

#### css

```css
a {
  text-decoration: underline;
}
a:hover,
a:active {
  text-decoration: none;
}

span {
  text-decoration: underline;
}
span:hover,
span:active,
span.is-hover {
  text-decoration: none;
}
```
