---
title: Install
---

## 環境

- sass 3.4 以上

## Gemfile

### Ruby on Rails で Oulu を使う

Gemfile に以下を記入して、

```ruby
gem 'oulu-rails'
```

`$ bundle` コマンドを打ちます。

### middleman で Oulu を使う


Gemfile に以下を記入して、

```ruby
gem 'middleman-oulu'
```

`$ bundle` コマンドを打ちます。

## @import

### Oulu basic

Oulu の基本的な機能を使うには、下記を `application.css.sass` ファイルなどから import してください。 


```sass
@import oulu
```

### Oulu options

また、Oulu には基本的な機能の他に Google Webfont などの設定を mixin から呼び出せる機能が option の中に用意してあります。必要な option は Oulu を import した後（Oulu の import よりも下の行に）下記のように import をしてください。

```sass
@import options/web-fonts/font-awsome
@import options/web-fonts/lato
@import options/web-fonts/open-sans
@import options/web-fonts/montserrat
```