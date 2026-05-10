---
description: "Use when: editing generated web app files under app/."
applyTo: "app/**/*"
---

# 生成Webアプリの最小ルール

- `app/` を生成アプリのルートにする。
- 基本は Vite + React + TypeScript、クライアントサイドのみ。
- `dev` は Codespaces でも見えるよう Vite を `--host 0.0.0.0` で起動する。
- 1〜3画面の主要フローに絞り、モバイルファーストで作る。
- まず通常のWebアプリとして主要フローを動かし、その後にLINEミニアプリらしさを足す。
- LIFF MockはUIに直書きせず、`liffClient` などの薄い境界に閉じ込める。
- UI側はMockか、LINEミニアプリチャネルの開発用LIFF IDで初期化したLIFF SDKかを意識せず、プロフィール取得関数などを呼ぶだけにする。
- LINEらしさはMockプロフィール、結果カード、共有文言で表現する。
- LIFF ID、チャネルID、APIキー、トークン、シークレットを直書きしない。
- バックエンド、DB、有料APIを必須にしない。
- 変更後は可能な範囲で `npm run build` とブラウザ確認を行う。
