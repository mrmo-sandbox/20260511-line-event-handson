# 03. Copilotでゼロから実装する

作成した計画に納得したら、Copilotに実装を任せます。

## 手順

1. 直前の計画を参照できる状態で、次のプロンプトを実行します。

```text
/implement-from-plan
```

2. Copilotがコマンド実行やファイル作成の確認を求めたら、内容を確認して進めます。
3. 実装が進むと `app/` 配下にWebアプリが生成されます。

## 生成後に確認するコマンド

```bash
cd app
npm install
npm run build
npm run dev
```

`npm run dev` で表示されたURLを、VS Code内ブラウザで開きます。CodespacesではPortsパネルから5173番を開くのが分かりやすいです。

## 詰まったときの追加指示

```text
エラーを読んで原因を特定し、最小の修正で npm run build が通るようにしてください。
```

```text
今の実装は大きすぎます。主要フローだけ残して、デモ可能なサイズに縮めてください。
```
