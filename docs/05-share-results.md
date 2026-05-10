# 05. 成果共有と発展課題

最後に、チームごとに作ったものとCopilotへの指示の工夫を共有します。

## 共有すること

- アプリ名
- 誰のためのアプリか
- どのようなUIスケッチから始めたか
- シーン画像を使った場合、どの場面が計画に効いたか
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

余裕があれば、ChatのAgent選択で `demo-coach` を選び、LINEミニアプリとしてデモしやすいかを確認します。

```text
app/ と work/idea.md を見て、成果共有前に確認すべき点を短く整理してください。
```

## 任意の発展課題

- LINEミニアプリチャネルを作り、開発用LIFF IDとエンドポイントURLを設定して動かす
- 共有用メッセージや結果カードを強化する
- Playwrightテストを追加する
- GitHubにPull Requestを作ってCopilot Reviewを試す
- Copilot CLIやCloud Agentに同じタスクを委譲して比較する

LINEミニアプリチャネルを使う場合も、LIFF IDやチャネル情報をコードに直接書かず、環境変数を使ってください。

---

<table>
  <tr>
    <td align="left" width="50%">
      <a href="04-browser-check.md"><kbd>← 戻る: 04. ブラウザで確認して改善する</kbd></a>
    </td>
    <td align="right" width="50%">
      <a href="../README.md"><kbd>完了: READMEへ戻る →</kbd></a>
    </td>
  </tr>
</table>
