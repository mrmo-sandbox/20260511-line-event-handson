---
name: webapp-testing
description: "Use when: testing frontend behavior in a browser with Playwright, screenshots, console logs, forms, navigation, or responsive checks."
argument-hint: "確認したいユーザーフロー"
---

# Webアプリ動作確認スキル

`github/awesome-copilot` の `webapp-testing` を参考にした、ブラウザ動作確認向けの軽量スキルです。

- 開発サーバーが起動しているか確認し、必要なら既存スクリプトで起動する
- Playwright MCPまたはブラウザ操作ツールで、主要フローを実際に操作する
- 初期表示、クリック、入力、画面遷移、保存やリセットなどの状態変化を確認する
- スマートフォン幅での操作性と表示崩れを確認する
- 失敗時はスクリーンショット、コンソール、ネットワーク情報から原因を絞る
- 修正後は同じ操作をもう一度実行して確認する
