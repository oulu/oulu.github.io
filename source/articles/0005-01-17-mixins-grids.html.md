---
title: grids
last_update: 2014-10-06
category: mixins
---

## oulu grid

oulu は、twitter bootstrap と同じルールの grid システムを持っています。


### .row

`.row` という class を持つブロック内で grid　システムが有効になります。
`.row` という class 名は グローバルな変数 `$row-class-name` で指定されています。他の名前にする場合は、 `$row-class-name` を上書きしてください。

#### class 名変更の例

`.row`  を `.grids-wrapper` に変更する場合。

```sass
$row-class-name: '.grids-wrapper'
```

### .col-

`.row` 内に `.col-` というプレフィクスを持った class を持つブロックが grid　システムの一つの　grid　のカラムになります。記法は以下になります。

`.col` というプレフィクスは、グローバルな変数 `$column-namespace` で指定されています。他の名前にする場合は、 `$column-namespace` を上書きしてください。

#### プレフィクス変更の例

`.col-`  を `.grid-` に変更する場合。


```sass
$column-namespace: '.grid-'
```

#### 記法のルール

```
.col-{デバイスのサイズ}-{ブロックの幅}
```

#### 例

```
.col-xs-12
.col-sm-6
.col-md-4
.col-lg-2
```

#### デバイスのサイズ

デフォルトでは、デバイスのサイズは以下のように設定されています。

-	xs -> 0 〜 480px
-	sm -> 481px 〜 768px
-	md -> 769px 〜 992px
-	lg -> 993px 〜 1200px

サイズの設定は以下のグローバルな変数を上書きすることで変更ができます。

#### デバイスサイズの基本設定

```sass
$screen-xs: 480px !default
$screen-sm: 768px !default
$screen-md: 992px !default
$screen-lg: 1200px !default
```

#### デバイスサイズ を grid 用の変数に代入

```sass
$screen-xs-min: $screen-xs !default
$screen-sm-min: $screen-sm !default
$screen-md-min: $screen-md !default
$screen-lg-min: $screen-lg !default
$screen-xs-max: ($screen-sm-min - 1) !default
$screen-sm-max: ($screen-md-min - 1) !default
$screen-md-max: ($screen-lg-min - 1) !default
```

#### grid の mixin

```sass
=screen-xs
  @media only screen and (max-width: $screen-xs)
    @content
=screen-sm
  @media only screen and (max-width: $screen-sm)
    @content
=screen-md
  @media only screen and (max-width: $screen-md)
    @content
=screen-lg
  @media only screen and (max-width: $screen-lg)
    @content
```

#### カラムの幅

`.row` の中の `.col` プレフィクスが付いた class の幅の数字はグリッドの設定された分割数のうちのいくつ分の幅であるか、を示します。

```slim
.row
  .col-xs-6
    p Lorem ipsum dolor sit amet
  .col-xs-6
    p Lorem ipsum dolor sit amet
```

デフォルトでは、グリッドは 12 分割されていますので、上記の例、 `.col-xs-6` の場合、`6` は `6/12` ということになります。 `6/12` はつまり、 `1/2` ということなので、全体の半分の幅になります。上記の例では、 xs のデバイスサイズの場合（デフォルトだと 0 〜 480px）、幅が半分で分割されたレイアウトになります。

#### デバイスサイズでの分岐を複数クラスで設定

デバイスのサイズによってブロックの幅を変更する場合は、複数クラスで対応します。ブロックの幅は上記の grid の mixin を使い、 `media-query` で実装されます。

```slim
.row
  .col-lg-2.col-md-4.col-sm-6.col-xs-12
    p　Lorem ipsum dolor sit amet
  .col-lg-2.col-xs-12
    p　Lorem ipsum dolor sit amet
```

上記の場合、

-	xs のデバイスサイズの場合、幅は `12/12` つまり横幅いっぱいになる
-	sm のデバイスサイズの場合、幅は `6/12` つまり半分の横幅になる
-	md のデバイスサイズの場合、幅は `4/12` つまり 1/3 の横幅になる
-	lg のデバイスサイズの場合、幅は `2/12` つまり 1/6 の横幅になる

このように、デバイスごとでレイアウトが異なる場合、複数クラスで対応します。

### オフセットカラム

空白のカラムを作ることもできます。その場合、通常のカラムと同じく `.row` 内に `.col` というプレフィクスを持った class を付け、さらに `.col-md-offset-3` のように、デバイスサイズの後に `offset` というプレフィクスを付けます。その class を持ったブロックの左側に設定したサイズの空白のカラムができます。

#### 記法のルール

```slim
.col-{デバイスのサイズ}-offset-{ブロックの幅}
```

#### 例

```slim
.col-xs-offset-6
.col-sm-offset-5
.col-md-offset-4
.col-lg-offset-2
```

上記の場合、

-	`.col-xs-offset-6` の class を持ったブロックの左側に 6/12 サイズの空白のカラムができます。サイズ sm 以上のときに適用されます。
-	`.col-sm-offset-5` の class を持ったブロックの左側に 5/12 サイズの空白のカラムができます。サイズ sm 以上のときに適用されます。
-	`.col-md-offset-4` の class を持ったブロックの左側に 4/12 サイズの空白のカラムができます。サイズ md 以上のときに適用されます。
-	`.col-lg-offset-2` の class を持ったブロックの左側に 2/12 サイズの空白のカラムができます。サイズ lg 以上のときに適用されます。

```slim
.row
  .col-xs-8.col-xs-offset-4.col-sm-8.col-sm-offset-4
```

上記のように、通常のカラムとオフセットカラムを組み合わせてカラムのレイアウトを設定します。

## +grid-columns( )


任意の gutter サイズ（カラムとカラムの左右の隙間）を指定したグリッドシステムのカラムを作るための mixin です。

-	第一引数に gutter サイズ、カラムの分割数、どのサイズの `media-query` 作るか、 カラムの親ブロックのクラス名を `.row` ではないものに変更した場合の class 名、オフセットカラムを作るか否か、の値をスペース区切りで渡します。それらの値は順番関係なく渡すことができます。
  - gutter サイズは、0　もしくは、単位 px を持つ数字を渡します。この値がカラムとカラムの間のスペースの幅になります。
  - カラムの分割数は、デフォルトは 12 が指定されています。カラムの分割数を変更する場合は、0以外の単位なしの数字を渡します。その数字が分割数になります。
  - どのサイズの `media-query` 作るかは、`xs` 、 `sm` 、 `md` 、 `lg` 、 `xl` という文字をリストで渡します。 `xs` を渡した場合は `.col-xs-` のカラムが作られます。`lg` を渡した場合は `.col-lg-` のカラムが作られます。
  - カラムの親ブロックのクラス名を `.row` ではないものに変更した場合の class 名は `.{class 名}` を渡します。値に css class 名の `.` （ドット）が含まれるので `' '` （シングルクオート）で囲います。
  - オフセットカラムを作るか否かは、 `offsets` という文字列を渡しているか否かで判定をします。デフォルトではオフセットカラムを作らない設定になっています。オフセットカラムが必要な場合は、`offsets` という文字列を渡してください。

### 例

```sass
div
  +grid-columns(12px 6 (xs, sm) '.grid-columns' offsets)    
```

```slim
div
  .row
    .col-sm-2.col-xs-6
      p Lorem ipsum dolor sit amet,
    .col-sm-4.col-xs-6
      p Lorem ipsum dolor sit amet,
```
