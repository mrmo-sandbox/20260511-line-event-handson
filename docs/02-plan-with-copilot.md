# 02. Plan modeで実装計画に変換する

`work/idea.md` とUIスケッチ画像を、GitHub Copilotに実装計画へ変換してもらいます。

## 手順

1. `work/idea.md` を保存します。
2. UIスケッチ画像を `work/` に置きます。
3. VS Code Copilot Chatを開きます。
4. Plan modeを選びます。
5. 必要に応じて、UIスケッチ画像をChatへドラッグ＆ドロップして添付します。
6. 次のプロンプトを実行します。

```text
/plan-from-idea
```

必要に応じて、追加でこう伝えます。

```text
work/idea.md と work/ui-sketch.png を見て、70分ハンズオンで実装できるサイズに落とし込んでください。
まだ実装はせず、まず計画だけ作ってください。
```

## 計画を見るポイント

- 1〜3画面に絞れているか
- `app/` 配下に作る計画になっているか
- LIFF Mockで動く計画になっているか
- `npm install`, `npm run dev`, `npm run build` が想定されているか
- ブラウザ確認まで含まれているか

計画が大きすぎる場合は、Copilotに「もっと小さくしてください」と依頼します。
