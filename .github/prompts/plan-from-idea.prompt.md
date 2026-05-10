---
description: "Use when: turning work/idea.md and UI sketches into a small implementation plan before coding."
argument-hint: "追加したい条件"
---

# ideaから実装計画を作る

`work/idea.md` と `work/` 配下のUIスケッチ、またはChatに添付された画像を見て、実装しやすい小さな計画に変換してください。

この段階では実装しないでください。計画だけを作ります。

## 方針

- 1〜3画面の主要フローに絞る
- `app/` 配下に Vite + React + TypeScript で作る前提にする
- まず通常のWebアプリとして主要フローを成立させる
- その後にMockプロフィール、結果カード、共有文言でLINEミニアプリらしさを足す
- LIFF MockはUIに直書きせず、将来の実LIFF接続に差し替えやすい薄い境界として計画する
- バックエンド、DB、有料API、実LIFF接続を必須にしない
- 足りない情報があっても、ハンズオンで進められる安全な仮定を置く
- 大きすぎる機能は発展課題に回す

## 出力

次の順番で、短く具体的に書いてください。

1. 作るアプリの一言説明
2. 対象ユーザーと主要シーン
3. 画面構成
4. ユーザーの流れ
5. 最小実装に含める機能
6. LIFF Mockを置く薄い境界
7. 今回は含めない発展課題
8. `/web-coder` に渡す実装指示
