FROM golang

# 1. ファイルをコンテナにコピー
COPY . /app
WORKDIR /app

# 2. 依存ライブラリをインストール
RUN go install

# 3. アプリケーションをビルド
RUN go build -o helloworld

# 4. ビルドして作成されたバイナリを実行
CMD ["/app/helloworld"]
