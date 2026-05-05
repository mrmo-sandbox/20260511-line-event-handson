# 03. Agent modeでゼロから実装する

Plan modeで作った計画に納得したら、Agent modeで実装します。

## 手順

1. Copilot ChatをAgent modeに切り替えます。
2. 直前の計画を参照できる状態で、次のプロンプトを実行します。

```text
/implement-from-plan
```

3. Copilotがコマンド実行やファイル作成の確認を求めたら、内容を確認して進めます。
4. 実装が進むと `app/` 配下にWebアプリが生成されます。

## 生成後に確認するコマンド

```bash
cd app
npm install
npm run build
npm run dev
```

`npm run dev` で表示されたローカルURLを、VS Code内蔵ブラウザまたは通常のブラウザで開きます。

## 詰まったときの追加指示

```text
エラーを読んで原因を特定し、最小の修正で npm run build が通るようにしてください。
```

```text
今の実装は大きすぎます。主要フローだけ残して、デモ可能なサイズに縮めてください。
```
