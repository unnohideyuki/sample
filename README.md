Java -> Dalvik 変換結果をみたかったのサンプル

Tiger Compiler では、

+関数は static method にマッピング
+Active Record は Object[] にして第一引数として渡していく
+Unboxed Value はなしの方向で（整数は Integer にする）

かなぁ、と思っているので、そのあたりの確認。

out/ ディレクトリに、baksmali 結果もおいてあるので見比べる。

以下、一応なんのつもりだったかメモ：

sample:  TextView に文字列を出してみたよ。

sample2: Object[] に Integer を突っ込んでみた

sample3: Object[] を第一引数として渡す。Object を取り出して、整数になおしてほげほげ
