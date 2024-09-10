# コンパイルと実行スクリプト

Cプログラムを簡単にコンパイルして実行するためのBashスクリプトです。

## install
ターミナルを起動して下記の項目を実行して下さい。

1. スクリプトに実行権限を与えます：
```bash
cd cc-alias-script

chmod +x install.sh
```

2. install.shを実行します：
```bash
./install.sh
```

3. install successと表示されたら成功です：
```sh
$ ./install.sh
install success
```
4. ターミナルを再起動または下記のコマンドを実行して下さい：
```sh
source ~/.zshrc
```

## スクリプトの違い

- `compile_run.sh`: オプションを指定せずに`cc`でコンパイルしています。
- `compile_run_w3.sh`: `-Wall -Wextra -Werror`オプションを使用して、より厳格なコンパイルを行います。

## 使い方
引数なしで実行するとカレントディレクトリのすべての.cファイルをコンパイルして実行します。

ファイル名を指定すると特定のファイルのみをコンパイルして実行します。

コマンドライン引数にも対応しており、複数の引数を渡すことが可能です。

例:
```sh
cx example.c arg1 arg2 arg3
```

### 初期設定のコマンド
`cx`が `-Wall -Wextra -Werror`オプションを使用してコンパイルします。

`ccx` がオプションを指定せずに`cc`でコンパイルしています。

