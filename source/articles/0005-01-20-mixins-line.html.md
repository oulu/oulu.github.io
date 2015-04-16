---
title: line
last_update: 2014-10-06
category: mixins
---

## +dotted-line( )

任意のスタイルの破線を一行で書くための mixin です。

### 引数

- 第一引数に破線の色の値を渡します。
  - 1番目に破線の色の値を渡します（2番目に単位 % の数字の値を渡した場合は背景色になります）。
  - 2番目に単位 % の数字の値を渡した場合、その % 分 `darker` にした色が破線の色になり、`darker` にする前の色が斜線の背景色になります。 2番目に色を渡した場合、破線の背景色になります。
- 第二引数
  - 1番目の値に破線の幅の値を渡します。
  - 2番目の値に破線と破線の隙間の値を渡します。
  - 3番目の値に破線の高さの値を渡します。


### 例

#### sass

```sass
.div
  &:after
  	content: ""
    width: 100%
    display: block
    +dotted-line(black, 20px 10px 4px)
```

#### css

```css
div:after {
  width: 100%;
  display: block;
  background-image: url('data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4gPHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGRlZnM+PGxpbmVhckdyYWRpZW50IGlkPSJncmFkIiBncmFkaWVudFVuaXRzPSJvYmplY3RCb3VuZGluZ0JveCIgeDE9IjAuMCIgeTE9IjAuNSIgeDI9IjEuMCIgeTI9IjAuNSI+PHN0b3Agb2Zmc2V0PSIwJSIgc3RvcC1jb2xvcj0iIzAwMDAwMCIvPjxzdG9wIG9mZnNldD0iNjYuNjY2NjclIiBzdG9wLWNvbG9yPSIjMDAwMDAwIi8+PHN0b3Agb2Zmc2V0PSI2Ni42NjY2NyUiIHN0b3AtY29sb3I9IiMwMDAwMDAiIHN0b3Atb3BhY2l0eT0iMC4wIi8+PHN0b3Agb2Zmc2V0PSIxMDAlIiBzdG9wLWNvbG9yPSIjMDAwMDAwIiBzdG9wLW9wYWNpdHk9IjAuMCIvPjwvbGluZWFyR3JhZGllbnQ+PC9kZWZzPjxyZWN0IHg9IjAiIHk9IjAiIHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9InVybCgjZ3JhZCkiIC8+PC9zdmc+IA==');
  background-size: 100%;
  background-image: -webkit-gradient(linear, 0% 50%, 100% 50%, color-stop(0%, #000000), color-stop(66.66667%, #000000), color-stop(66.66667%, rgba(0, 0, 0, 0)), color-stop(100%, rgba(0, 0, 0, 0)));
  background-image: -moz-linear-gradient(left, #000000, #000000 66.66667%, rgba(0, 0, 0, 0) 66.66667%, rgba(0, 0, 0, 0) 100%);
  background-image: -webkit-linear-gradient(left, #000000, #000000 66.66667%, rgba(0, 0, 0, 0) 66.66667%, rgba(0, 0, 0, 0) 100%);
  background-image: linear-gradient(to right, #000000, #000000 66.66667%, rgba(0, 0, 0, 0) 66.66667%, rgba(0, 0, 0, 0) 100%);
  -moz-background-size: 30px 30px;
  -o-background-size: 30px 30px;
  -webkit-background-size: 30px 30px;
  background-size: 30px 30px;
  height: 4px;
  height: 0.4rem;
}
```

## +striped-line( )

任意のスタイルの斜線を一行で書くための mixin です。

### 引数

- 第一引数に破線の色に関する値を渡します。
  - 1番目に破線の色の値を渡します（2番目に単位 % の数字の値を渡した場合は背景色になります）。
  - 2番目に単位 % の数字の値を渡した場合、その % 分 `darker` にした色が破線の色になり、`darker` にする前の色が斜線の背景色になります。2番目に色を渡した場合、破線の背景色になります。
- 第二引数に斜線の高さの値を渡します。

### 例

#### sass

```sass
div
  &:after
    content: ""
    width: 100%
    display: block
    +striped-line(gray 20%, 20px)
```

#### css

```css
div:after {
  content: "";
  width: 100%;
  display: block;
  background-image: url('data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4gPHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGRlZnM+PGxpbmVhckdyYWRpZW50IGlkPSJncmFkIiBncmFkaWVudFVuaXRzPSJvYmplY3RCb3VuZGluZ0JveCIgeDE9IjEuMCIgeTE9IjEuMCIgeDI9IjAuMCIgeTI9IjAuMCI+PHN0b3Agb2Zmc2V0PSIyNSUiIHN0b3AtY29sb3I9IiM0ZDRkNGQiLz48c3RvcCBvZmZzZXQ9IjI1JSIgc3RvcC1jb2xvcj0iIzAwMDAwMCIgc3RvcC1vcGFjaXR5PSIwLjAiLz48c3RvcCBvZmZzZXQ9IjUwJSIgc3RvcC1jb2xvcj0iIzAwMDAwMCIgc3RvcC1vcGFjaXR5PSIwLjAiLz48c3RvcCBvZmZzZXQ9IjUwJSIgc3RvcC1jb2xvcj0iIzRkNGQ0ZCIvPjxzdG9wIG9mZnNldD0iNzUlIiBzdG9wLWNvbG9yPSIjNGQ0ZDRkIi8+PHN0b3Agb2Zmc2V0PSI3NSUiIHN0b3AtY29sb3I9IiMwMDAwMDAiIHN0b3Atb3BhY2l0eT0iMC4wIi8+PHN0b3Agb2Zmc2V0PSIxMDAlIiBzdG9wLWNvbG9yPSIjMDAwMDAwIiBzdG9wLW9wYWNpdHk9IjAuMCIvPjwvbGluZWFyR3JhZGllbnQ+PC9kZWZzPjxyZWN0IHg9IjAiIHk9IjAiIHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9InVybCgjZ3JhZCkiIC8+PC9zdmc+IA==');
  background-size: 100%;
  background-image: -moz-linear-gradient(135deg, #4d4d4d 25%, rgba(0, 0, 0, 0) 25%, rgba(0, 0, 0, 0) 50%, #4d4d4d 50%, #4d4d4d 75%, rgba(0, 0, 0, 0) 75%, rgba(0, 0, 0, 0));
  background-image: -webkit-linear-gradient(135deg, #4d4d4d 25%, rgba(0, 0, 0, 0) 25%, rgba(0, 0, 0, 0) 50%, #4d4d4d 50%, #4d4d4d 75%, rgba(0, 0, 0, 0) 75%, rgba(0, 0, 0, 0));
  background-image: linear-gradient(-45deg, #4d4d4d 25%, rgba(0, 0, 0, 0) 25%, rgba(0, 0, 0, 0) 50%, #4d4d4d 50%, #4d4d4d 75%, rgba(0, 0, 0, 0) 75%, rgba(0, 0, 0, 0));
  background-color: gray;
  -moz-background-size: 20px 20px;
  -o-background-size: 20px 20px;
  -webkit-background-size: 20px 20px;
  background-size: 20px 20px;
  height: 20px;
  height: 2rem;
}
```