---
title: balloon-tail
last_update: 2015-04-16
category: mixins
---

## +balloon-tail( )

css の `border` を使って三角形の吹き出しの尻尾を作るための mixin です。


### 引数

- 第一引数に `border` の基本設定の値を渡します。
  - 1番目の値に尻尾の方向
  - 2番目の値に尻尾の色
  - 3番目の値に尻尾の横幅
  - 4番目の値に尻尾の高さ
  - 5番目の値に尻尾を持つ親のボックスの `border` の `width`
- 第二引数に尻尾の位置の値を渡します。第二引数が `null` の場合は第一引数で渡した尻尾の方向の逆の辺にの中央に配置されます。
  - 1番目の値に尻尾の位置の方向
  - 2番目の値に1番目の値の数値
  - 3番目の値に尻尾の位置の方向
  - 4番目の値に1番目の値の数値
- 第三引数は `border` を持つ尻尾の場合、 `border` の色の値を渡します。 `null` の場合は尻尾に `border` は付きません。

### 例 1

#### sass

```sass
.div-1
  +balloon-tale(top red 12px 16px 1px)

.div-2
  +balloon-tale(top red 12px 16px 1px)

.div-3
  +balloon-tale(top red 12px 16px 1px)

.div-4
  +balloon-tale(top red 12px 16px 1px)
```

#### css

```css
.div-1 {
  border-width: 1px;
  border-width: 0.1rem;
  border-style: solid;
  border-color: white;
  }

.div-2 {
  border-left-width: 1px;
  border-left-width: 0.1rem;
  border-left-style: solid;
  border-left-color: white;
  border-right-width: 1px;
  border-right-width: 0.1rem;
  border-right-style: solid;
  border-right-color: white;
  }

.div-3 {
  border-top-width: 1px;
  border-top-width: 0.1rem;
  border-top-style: solid;
  border-top-color: white;
  border-left-width: 1px;
  border-left-width: 0.1rem;
  border-left-style: solid;
  border-left-color: white;
  }

.div-4 {
  border-top-width: 1px;
  border-top-width: 0.1rem;
  border-top-style: solid;
  border-top-color: white;
  border-left-width: 1px;
  border-left-width: 0.1rem;
  border-left-style: solid;
  border-left-color: white;
  border-right-width: 1px;
  border-right-width: 0.1rem;
  border-right-style: solid;
  border-right-color: white;
  }
```
