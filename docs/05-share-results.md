# 05. 成果共有と発展課題

最後に、チームごとに作ったものとAgentへの指示の工夫を共有します。

## 共有すること

- アプリ名
- 誰のためのアプリか
- どのようなUIスケッチから始めたか
- Copilotが作った実装の良かった点
- 追加で出した改善指示
- まだ直したいところ

## デモ前チェック

```bash
cd app
npm run build
npm run dev
```

ブラウザで主要フローを1回通してから共有します。

## 任意の発展課題

- 実際のLIFF IDを設定して動かす
- 共有用メッセージや結果カードを強化する
- Playwrightテストを追加する
- GitHubにPull Requestを作ってCopilot Reviewを試す
- Copilot CLIやCloud Agentに同じタスクを委譲して比較する

実LIFF接続を行う場合も、LIFF IDやチャネル情報をコードに直接書かず、環境変数を使ってください。
