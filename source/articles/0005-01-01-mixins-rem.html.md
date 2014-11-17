---
title: rem
last_update: 2014-10-06
category: mixins
---

## +rem( )

単位 px の number の値を rem で出力する mixin です。

### 引数

- 第一引数にプロパティ
- 第二引数に値（単位 px）

を渡します。

### 基本的な使い方

下記のように、`rem` が使えないブラウザ用に、同時に単位 `px` での値も出力されます。第二引数に渡した値が複数の変数からなる変数リストだった場合も同時に単位 `px` での値が出力されます。

#### sass

```sass
div
  +rem('font-size', 14px)
  +rem('width', 260px)
  +rem('line-height', 18px)
  +rem('margin', 12px 16px)
```

#### css


```css
div {
  font-size: 1.4rem;
  font-size: 14px;

  width: 26rem;
  width: 260px;

  line-height: 1.8rem;
  line-height: 18px;

  margin: 1.2rem 1.6rem;
  margin: 12px 16px;
  }
```

### px 以外の単位の number の値を渡した場合

下記のように、単位が `px` でない `number` の値を渡した場合、単位 `px` での値は出力されません。また、`0px` の場合は値 `0` だけが出力されます。

#### sass

```sass
div
  +rem('font-size', 6em)
  +rem('width', 20%)
  +rem('line-height', 1.4)
  +rem('margin-left', 0)
  +rem('margin-left', 0px)
```

#### css


```css
div {
  font-size: 6em;
  width: 20%;
  line-height: 1.4;
  margin-left: 0;
  margin-left: 0;
  }
```

### px 以外の単位の number の値が変数リストに混在した場合

下記のように、単位が `px` でない `number` の値が渡した変数リストに混在していた場合、変数リストの中の単位  `px` の値だけ、`rem` と `px` で両方の値が出力されます。

#### sass

```sass
div
  +rem('margin', 12px 10%)
```

#### css

```css
div {
  margin: 1.2rem 10%;
  margin: 12px 10%;
  }
```

### px から rem への変換の計算

単位 px の値から、単位 rem に変換する際、デフォルトではベースとなるフォントサイズを 10px とし、`10px = 1rem` として計算します。ベースとなるフォントサイズを 10px とした場合、root 要素 （セレクタ html）のフォントサイズの設定を`font-size: 62.5%` と設定することで、 `10px = 1rem` が成立します。

#### root 要素（html）にフォントサイズの設定をする

```sass
html
  font-size: 62.5%
```

#### ベースとなるフォントサイズ

デフォルトでは以下のように設定されています。
ベースとなるフォントサイズを別の値にする場合はグローバルな変数 `$baseline-px` を上書きします。

```
$baseline-px: 10px !default
```



