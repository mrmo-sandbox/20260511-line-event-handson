# 02. Copilotで実装計画に変換する

`work/idea.md` とUIスケッチ画像を、GitHub Copilotに実装計画へ変換してもらいます。

## 手順

1. `work/idea.md` を保存します。
2. UIスケッチ画像を `work/` に置きます。
3. VS Code Copilot Chatを開きます。
4. 必要に応じて、UIスケッチ画像をChatへドラッグ＆ドロップして添付します。
5. Copilot Chatで、次のように依頼します。

```text
work/idea.md と work/ui-sketch.png を見て、必要最低限でシンプルな実装計画にしてください。
まだ実装はせず、まず計画だけ作ってください。
```

## 計画を見るポイント

- 1〜3画面に絞れているか
- `app/` 配下に作る計画になっているか
- LIFF Mockで動く計画になっているか
- `npm install`, `npm run dev`, `npm run build` が想定されているか
- ブラウザ確認まで含まれているか

計画が大きすぎる場合は、Copilotに「もっと小さくしてください」と依頼します。ここは軽く会話で固め、実装以降にSkillsを使います。
