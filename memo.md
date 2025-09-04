# Mson.vimのLSPを動作させるための使用（検証必要)

## Ruby-LSP

mysql2のインストールでエラーが出る場合の対処

```bash
bundle config --global unset build.mysql2

bundle config --global set build.mysql2 "--with-mysql-config=$(brew --prefix mysql)/bin/mysql_config --with-ldflags=-L$(brew --prefix zstd)/lib -L$(brew --prefix openssl@3)/lib --with-cppflags=-I$(brew --prefix zstd)/include -I$(brew --prefix openssl@3)/include"
```

```bash
rbenv local 3.3.6 # 必要なRubyのバージョンを指定
rbenv rehash
gem uninstall -aIx mysql2 || true

gem install mysql2 -v 0.5.6 -- \
  --with-mysql-config=$(brew --prefix mysql)/bin/mysql_config \
  --with-ldflags="-L$(brew --prefix zstd)/lib -L$(brew --prefix openssl@3)/lib" \
  --with-cppflags="-I$(brew --prefix zstd)/include -I$(brew --prefix openssl@3)/include"
```
