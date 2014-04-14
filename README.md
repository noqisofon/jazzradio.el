jazzradio.el
============

Jazz だって聴ける。そう、Emacs ならね。

## 使い方

まだできていないのですが、手っ取り早く聴きたい方は、`*scratch*` に下記の S 式を貼り付け、評価してください:

``` emacs-lisp
(start-process "jazzradio" "*jazzradio*" "mplayer" "-playlist" "http://listen.jazzradio.com/webplayer/mellowjazz.pls")
```

聴くのを止める時は、`*jazzradio*` を `C-x k` して頂くと `mplayer` プロセスも一緒に消えます。

### Mellow Jazz 以外のジャンルを聴きたい時は？

お手数ですが:

    curl http://listen.jazzradio.com/webplayer -o index.json

を行って頂き、お好きなジャンルのプレイリストを見つけて `start-process` に渡してください。
