# web-service-gin

ginとmysqlを使った簡単なwebアプリケーションです。

## mysql

ホストでport 3306で起動してください。

## 環境変数

mysqlを使用するために以下の環境変数を設定してください

- DBUSER
- DBPASS

## database

- myappでdatabaseを作成してください。

- sqlディレクトリ以下にテーブル作成とseedデータ作成のsqlファイルを作成しているので実行してください

## docker

docker化はしていないため、dockerを使用する場合は適宜コードを書き換えてください。

<br />


___


<br />

## 追記 アプリ起動方法

ここからアプリの起動方法を記載します。
またgitの操作やdockerの操作などの説明は前提知識として割愛させていただきます。

### ①gitから当リポジトリをcloneしてリポジトリへ移動

- clone
```
git clone 〇〇
```

- 対象フォルダへ移動

```
cd web-service-gin
```

### ②開発環境構築

- build
```
docker-compose -f docker-compose.build.yml build
```

- 立ち上げ
```
docker-compose up
```