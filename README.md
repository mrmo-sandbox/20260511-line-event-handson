# LINEミニアプリ × Agentic Development ハンズオン

このリポジトリは、LINEミニアプリを題材に **GitHub Copilot ChatでWebアプリをゼロから実装する** ハンズオン用のハーネスです。

アプリ本体の雛形は含めません。参加者はチームでアイデアとシーンスケッチをまとめ、`work/idea.md` と画像をGitHub Copilotに渡し、VS CodeのCopilot Chatで `app/` 配下にWebアプリを生成します。

## はじめ方

最初に [00. 事前準備と環境確認](docs/00-setup.md) を開いてください。Fork、Codespaces、VS Codeの入口は00章にまとめています。

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

## 手順

詳しい操作は `docs/` の各章にまとめています。

1. [00. 事前準備と環境確認](docs/00-setup.md)
2. [01. チームでアイデアを作る](docs/01-ideation.md)
3. [02. Copilotで実装計画に変換する](docs/02-plan-with-copilot.md)
4. [03. Copilotでゼロから実装する](docs/03-build-with-agent.md)
5. [04. ブラウザで確認して改善する](docs/04-browser-check.md)
6. [05. 成果共有と発展課題](docs/05-share-results.md)

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
