---
description: "Use when: editing generated web app files under app/."
applyTo: "app/**/*"
---

# 生成Webアプリの最小ルール

- `app/` を生成アプリのルートにする。
- 基本は Vite + React + TypeScript、クライアントサイドのみ。
- `dev` は Codespaces でも見えるよう Vite を `--host 0.0.0.0` で起動する。
- 1〜3画面の主要フローに絞り、モバイルファーストで作る。
- LINEらしさはLIFF Mockプロフィール、結果カード、共有文言で表現する。
- LIFF ID、チャネルID、APIキー、トークン、シークレットを直書きしない。
- バックエンド、DB、有料APIを必須にしない。
- 変更後は可能な範囲で `npm run build` とブラウザ確認を行う。
