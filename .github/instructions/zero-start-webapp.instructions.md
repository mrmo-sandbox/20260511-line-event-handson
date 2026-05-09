---
description: "Use when: editing generated app files under app/."
applyTo: "app/**/*"
---

# app/ のルール

- `app/` を生成アプリのルートにする。
- 基本は Vite + React + TypeScript。
- `dev` は Codespaces でも見えるよう Vite を `--host 0.0.0.0` で起動する。
- `build` を用意する。
- バックエンド、DB、有料APIを必須にしない。
- 変更後は可能な範囲で `npm run build` を確認する。
