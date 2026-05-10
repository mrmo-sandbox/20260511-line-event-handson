# 02. Copilotで実装計画に変換する

`work/idea.md` とUIスケッチ画像を、GitHub Copilotに実装計画へ変換してもらいます。

## 手順

1. `work/idea.md` を保存します。
2. UIスケッチ画像を `work/` に置きます。
3. VS Code Copilot Chatを開きます。
4. 必要に応じて、UIスケッチ画像をChatへドラッグ＆ドロップして添付します。
5. 今回のハンズオン用に用意した独自Promptを実行します。

```text
/plan-from-idea
```

このPromptは、Awesome由来Skillsにない「ideaとUIスケッチをハンズオン向けの小さな実装計画へ変換する」ためのカスタマイズ例です。

## 計画を見るポイント

- 1〜3画面に絞れているか
- `app/` 配下に作る計画になっているか
- LIFF Mockで動く計画になっているか
- `npm install`, `npm run dev`, `npm run build` が想定されているか
- ブラウザ確認まで含まれているか

計画が大きすぎる場合は、Copilotに「もっと小さくしてください」と依頼します。計画に納得したら、次の章で `/web-coder` に渡します。
