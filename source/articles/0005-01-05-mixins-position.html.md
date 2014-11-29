---
title: position
last_update: 2014-10-06
category: mixins
---

## +absolute( )

`position: absolute` の場合の位置（`top` 、`right` 、`bottom` 、`left`）、`z-index` の値を一行で書くための mixin です。

### 引数

- 第一引数に位置（`top` 、 `right` 、 `bottom` 、 `left`）とその値、もしくは `z-index` の値
- 第二引数も同じく、位置（`top` 、 `right` 、 `bottom` 、 `left`）とその値、もしくは `z-index` の値
- 第三引数も同じく、位置（`top` 、 `right` 、 `bottom` 、 `left`）とその値、もしくは `z-index` の値

を渡します。全ての引数のデフォルト値は `null` です。必要な値だけを渡します。位置の値の単位が `px` だった場合は、 単位 `rem` の値も同時に書き出されます。

### 例

```sass
.div-1
  +absolute(left 0, top 0)

.div-2
  +absolute(left 0, top 0, 3)

.div-3
  +absolute(left 0, 3)

.div-4
  +absolute(3) 
```

```css
.div-1 {
  position: absolute;
  left: 0;
  top: 0;
}

.div-2 {
  position: absolute;
  left: 0;
  top: 0;
  z-index: 3;
}

.div-3 {
  position: absolute;
  left: 0;
  z-index: 3;
}

.div-4 {
  position: absolute;
  z-index: 3;
}
```

## +fixed( )

`position: fixed` の場合の位置（`top` 、`right` 、`bottom` 、`left`）、`z-index` の値を一行で書くための mixin です。

### 引数

- 第一引数に位置（`top` 、 `right` 、 `bottom` 、 `left`）とその値、もしくは `z-index` の値
- 第二引数も同じく、位置（`top` 、 `right` 、 `bottom` 、 `left`）とその値、もしくは `z-index` の値
- 第三引数も同じく、位置（`top` 、 `right` 、 `bottom` 、 `left`）とその値、もしくは `z-index` の値

を渡します。全ての引数のデフォルト値は `null` です。必要な値だけを渡します。位置の値の単位が `px` だった場合は、 単位 `rem` の値も同時に書き出されます。

### 例

```sass
.div-1
  +fixed(left 0, top 0)

.div-2
  +fixed(left 0, top 0, 3)

.div-3
  +fixed(left 0, 3)

.div-4
  +fixed(3) 
```

```css
.div-1 {
  position: fixed;
  left: 0;
  top: 0;
}

.div-2 {
  position: fixed;
  left: 0;
  top: 0;
  z-index: 3;
}

.div-3 {
  position: fixed;
  left: 0;
  z-index: 3;
}

.div-4 {
  position: fixed;
  z-index: 3;
}
```

## +relative( )

`position: relative` の場合の位置（`top` 、`right` 、`bottom` 、`left`）、`z-index` の値を一行で書くための mixin です。

### 引数

- 第一引数に位置（`top` 、 `right` 、 `bottom` 、 `left`）とその値、もしくは `z-index` の値
- 第二引数も同じく、位置（`top` 、 `right` 、 `bottom` 、 `left`）とその値、もしくは `z-index` の値
- 第三引数も同じく、位置（`top` 、 `right` 、 `bottom` 、 `left`）とその値、もしくは `z-index` の値

を渡します。全ての引数のデフォルト値は `null` です。必要な値だけを渡します。位置の値の単位が `px` だった場合は、 単位 `rem` の値も同時に書き出されます。

### 例

```sass
.div-1
  +relative(left 0, top 0)

.div-2
  +relative(left 0, top 0, 3)

.div-3
  +relative(left 0, 3)

.div-4
  +relative(3) 
```

```css
.div-1 {
  position: relative;
  left: 0;
  top: 0;
}

.div-2 {
  position: relative;
  left: 0;
  top: 0;
  z-index: 3;
}

.div-3 {
  position: relative;
  left: 0;
  z-index: 3;
}

.div-4 {
  position: relative;
  z-index: 3;
}
```

## +top( )

`position: relative` でかつ、位置が `top` の場合に、`top` の値と、 `z-index` の値を一行で書くための mixin です。

### 引数

- 第一引数に `top` の値、もしくは `z-index` の値
- 第二引数も同じく、`top` の値、もしくは `z-index` の値

を渡します。全ての引数のデフォルト値は `null` です。必要な値だけを渡します。位置の値の単位が `px` だった場合は、 単位 `rem` の値も同時に書き出されます。

### 例

```sass
.div-1
  +top(-4px)

.div-2
  +top(-4px, 2)

.div-3
  +top(2, -4px) 
```

```css
.div-1 {
  position: relative;
  top: -4px;
  top: -0.4rem;
}

.div-2 {
  position: relative;
  top: -4px;
  top: -0.4rem;
  z-index: 2;
}

.div-3 {
  position: relative;
  top: -4px;
  top: -0.4rem;
  z-index: 2;
}
```

## +bottom( )

`position: relative` でかつ、位置が `bottom` の場合に、`bottom` の値と、 `z-index` の値を一行で書くための mixin です。

### 引数

- 第一引数に `bottom` の値、もしくは `z-index` の値
- 第二引数も同じく、`bottom` の値、もしくは `z-index` の値

を渡します。全ての引数のデフォルト値は `null` です。必要な値だけを渡します。位置の値の単位が `px` だった場合は、 単位 `rem` の値も同時に書き出されます。

### 例

```sass
.div-1
  +bottom(-4px)

.div-2
  +bottom(-4px, 2)

.div-3
  +bottom(2, -4px) 
```

```css
.div-1 {
  position: relative;
  bottom: -4px;
  bottom: -0.4rem;
}

.div-2 {
  position: relative;
  bottom: -4px;
  bottom: -0.4rem;
  z-index: 2;
}

.div-3 {
  position: relative;
  bottom: -4px;
  bottom: -0.4rem;
  z-index: 2;
}
```

## +left( )

`position: relative` でかつ、位置が `left` の場合に、`left` の値と、 `z-index` の値を一行で書くための mixin です。

### 引数

- 第一引数に `left` の値、もしくは `z-index` の値
- 第二引数も同じく、`left` の値、もしくは `z-index` の値

を渡します。全ての引数のデフォルト値は `null` です。必要な値だけを渡します。位置の値の単位が `px` だった場合は、 単位 `rem` の値も同時に書き出されます。

### 例

```sass
.div-1
  +left(-4px)

.div-2
  +left(-4px, 2)

.div-3
  +left(2, -4px) 
```

```css
.div-1 {
  position: relative;
  left: -4px;
  left: -0.4rem;
}

.div-2 {
  position: relative;
  left: -4px;
  left: -0.4rem;
  z-index: 2;
}

.div-3 {
  position: relative;
  left: -4px;
  left: -0.4rem;
  z-index: 2;
}
```


## +right( )

`position: relative` でかつ、位置が `right` の場合に、`right` の値と、 `z-index` の値を一行で書くための mixin です。

### 引数

- 第一引数に `right` の値、もしくは `z-index` の値
- 第二引数も同じく、`right` の値、もしくは `z-index` の値

を渡します。全ての引数のデフォルト値は `null` です。必要な値だけを渡します。位置の値の単位が `px` だった場合は、 単位 `rem` の値も同時に書き出されます。

### 例

```sass
.div-1
  +right(-4px)

.div-2
  +right(-4px, 2)

.div-3
  +right(2, -4px) 
```

```css
.div-1 {
  position: relative;
  right: -4px;
  right: -0.4rem;
}

.div-2 {
  position: relative;
  right: -4px;
  right: -0.4rem;
  z-index: 2;
}

.div-3 {
  position: relative;
  right: -4px;
  right: -0.4rem;
  z-index: 2;
}
```
