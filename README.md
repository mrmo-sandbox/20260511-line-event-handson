# LINEミニアプリ × Agentic Development ハンズオン

このリポジトリは、LINEミニアプリを題材に **GitHub Copilot ChatでWebアプリをゼロから実装する** ハンズオン用のハーネスです。

アプリ本体の雛形は含めません。参加者はチームでアイデアとシーンスケッチをまとめ、`work/idea.md` と画像をGitHub Copilotに渡し、VS CodeのCopilot Chatで `app/` 配下にWebアプリを生成します。

## すぐ開く

[![Fork this repository](https://img.shields.io/badge/Fork-this%20repository-24292F?logo=github&logoColor=white)](https://github.com/mrmo-sandbox/20260511-line-event-handson/fork)
[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/mrmo-sandbox/20260511-line-event-handson?quickstart=1)
[![Open in VS Code Web](https://img.shields.io/badge/Open%20in-VS%20Code%20Web-007ACC?logo=visualstudiocode&logoColor=white)](https://vscode.dev/github/mrmo-sandbox/20260511-line-event-handson)

Markdown内にGitHub標準のForkボタンそのものは置けませんが、上のようなバッジリンクは置けます。編集して進める場合は、まずForkしてから自分のForkでCodespacesを作るのがおすすめです。

## このハンズオンでやること

参加者が最初からコードを書くのではなく、チームで作ったアイデアをGitHub Copilotが実装しやすい形に整えます。

`work/idea.md` とシーンスケッチ画像を **アイデア引き継ぎパッケージ** として作り、Awesome Copilot由来のフロントエンド向けSkillsでアプリ生成と改善を進めます。

## 当日のゴール

最低成功ラインは、GitHub Copilotが `app/` 配下にWebアプリを生成し、ローカルで起動できることです。

標準成功ラインは、VS Code内ブラウザで画面を確認し、1回以上Copilotに改善指示を出すことです。Playwright MCPは使える場合の補助にします。

## 全体の流れ

| タイミング | 内容 | 主な成果物 |
|---|---|---|
| 冒頭 | 環境確認 | Codespaces / VS Code / Copilot / Node.js |
| パネル前30分 | チームでアイデア出し | シーンスケッチ, `work/idea.md` |
| パネル中 | Copilot Chatに実装を任せる | `app/` |
| ハンズオン本編 | ブラウザ確認・改善 | 修正済みアプリ |
| 最後 | 成果共有 | チーム発表 |

## 使い方

1. このリポジトリをForkします。
2. ForkしたリポジトリでGitHub Codespacesを作成します。ローカルVS Codeでも実施できます。
3. [docs/00-setup.md](docs/00-setup.md) に沿って環境を確認します。
4. シーンスケッチ画像を `work/` に置きます。
5. `idea-capture-coach` Agentで、選んだアイデアとシーンを [work/idea.md](work/idea.md) に整理します。
6. `/plan-from-idea` で `work/idea.md` とシーンスケッチから必要最低限の実装計画を作ります。
7. `/web-coder` で `app/` 配下にWebアプリを実装します。
8. VS Code内ブラウザで画面を確認し、`/web-design-reviewer` で見た目を改善します。
9. `/webapp-testing` で主要フローを確認します。
10. 最後に `demo-coach` Agentで、LINEミニアプリとしてデモできるかを確認します。

## リポジトリ構成

```text
.github/
  agents/
  copilot-instructions.md
  instructions/
  prompts/
  skills/
.devcontainer/
  devcontainer.json
.vscode/
  extensions.json
  mcp.json
  settings.json
docs/
  00-setup.md
  01-ideation.md
  02-plan-with-copilot.md
  03-build-with-agent.md
  04-browser-check.md
  05-share-results.md
work/
  idea.md
  scene-1.jpg
  scene-2.jpg
```

## ハンズオンで使うPrompt、Skills、Agent

付箋やシーンスケッチを `work/idea.md` に落とす部分は、対話しながら進めやすいようにcustom agentを用意しています。

- `idea-capture-coach` — 選んだアイデア、シーンスケッチ、任意のストーリーを聞き取り、`work/idea.md` を整理

ideaから実装計画へ変換する部分は、このハンズオン固有の作業なので独自Promptを用意しています。

- `/plan-from-idea` — `work/idea.md` とシーンスケッチを、小さな実装計画に変換

実装以降は、`github/awesome-copilot` から今回のハンズオンに合うSkillsを選び、短い日本語版として `.github/skills/` に置いています。

- `/web-coder` — React + TypeScript、CSS、アクセシビリティ、レスポンシブ実装
- `/web-design-reviewer` — 画面の見た目、スマートフォン幅、空状態、エラー状態の確認と改善
- `/webapp-testing` — VS Code内ブラウザ、ポートプレビュー、Playwright MCPによる主要フロー確認

最後の成果共有前にも、LINEミニアプリ固有の見せ方を確認するcustom agentを使います。

- `demo-coach` — デモで見せる順番、LINEらしさ、直すと効く点を確認

LINEミニアプリ固有のカスタマイズは最小限にして、対話的に聞き取る部分と固有の視点はAgent、計画化はPrompt、実装品質は既存Skills、生成先やLIFF Mockなどの共通ルールは `.github/copilot-instructions.md` と `.github/instructions/` に分けています。

## 生成されるアプリの前提

Copilotには、原則として以下の条件で実装してもらいます。

- `app/` 配下にアプリを新規作成する
- Vite + React + TypeScriptを基本構成にする
- LINEプロフィールはモック優先で扱い、LINEミニアプリチャネル作成、開発用LIFF ID、エンドポイントURL設定は任意の発展課題にする
- `npm install`, `npm run dev`, `npm run build` が動く状態にする
- スマートフォン幅で使いやすいUIにする
- ブラウザ確認を行い、見つかった問題をCopilotに修正させる
