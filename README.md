# コンパイルと実行スクリプト

Cプログラムを簡単にコンパイルして実行するためのBashスクリプトです。

## install
ターミナルを起動して下記の項目を実行して下さい。

1. スクリプトに実行権限を与えます：
```bash
chmod +x compile_run.sh
chmod +x compile_run_w3.sh
```

2. `.zshrc`ファイルにエイリアスを追加します：
```bash
echo "alias cx='~/path/to/compile_run.sh'" >> ~/.zshrc
echo "alias cwx='~/path/to/compile_run_w3.sh'" >> ~/.zshrc
```

3. `.zshrc`ファイルを再読み込みします：
```bash
source ~/.zshrc
```
これで、`cx`コマンドでコンパイルと実行ができるようになります。

## スクリプトの違い

- `compile_run.sh`: 標準的なコンパイルオプションを使用します。
- `compile_run_w3.sh`: `-Wall -Wextra -Werror`オプションを使用して、より厳格なコンパイルを行います。

## 使い方

引数なしで実行すると現在のディレクトリ内のすべての.cファイルをコンパイルして実行します。
ファイル名を指定すると特定のファイルのみをコンパイルして実行します。
コマンドライン引数にも対応しており、複数の引数を渡すことが可能です。
例:
```sh
cx example.c arg1 arg2 arg3
```
