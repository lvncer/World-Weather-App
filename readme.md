# World Weather Application

2 年前期 Web アプリケーション開発の最終課題の成果物のプロジェクトです。

## SetUp

### 1. マイグレーションの実行

SQLite 用のデータベースファイルを作成してマイグレーションを実行します：

```bash
npx prisma migrate dev --name init
```

### 2. シードデータの挿入

以下を実行してデータを挿入します：

```bash
node prisma/seed.js
```

### 3. サーバーの起動

```bash
npm run start
```

## アクセス

[http://localhost:3000/weather](http://localhost:3000/weather)
