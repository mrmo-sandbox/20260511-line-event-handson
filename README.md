# LINEミニアプリ × Agentic Development ハンズオン

このリポジトリは、LINEミニアプリを題材に **GitHub Copilot ChatでWebアプリをゼロから実装する** ハンズオン用のハーネスです。

アプリ本体の雛形は含めません。参加者はチームでアイデアをまとめ、`work/idea.md` とUIスケッチ画像をGitHub Copilotに渡し、必要に応じてシーン画像も追加コンテキストとして使います。VS CodeのCopilot Chatで `app/` 配下にWebアプリを生成します。

## はじめ方

最初に [00. 事前準備と環境確認](docs/00-setup.md) を開いてください。Fork、Codespaces、VS Codeの入口は00章にまとめています。

## このハンズオンでやること

参加者が最初からコードを書くのではなく、チームで作ったアイデアをGitHub Copilotが実装しやすい形に整えます。

`work/idea.md` とUIスケッチ画像を **アイデア引き継ぎパッケージ** として作ります。シーン画像がある場合は、アイデアの背景や利用場面を伝える追加コンテキストとして使います。

## 当日のゴール

最低成功ラインは、GitHub Copilotが `app/` 配下にWebアプリを生成し、ローカルで起動できることです。

標準成功ラインは、VS Code内ブラウザで画面を確認し、1回以上Copilotに改善指示を出すことです。Playwright MCPは使える場合の補助にします。

## 全体の流れ

| タイミング | 内容 | 主な成果物 |
|---|---|---|
| 冒頭 | 環境確認 | Codespaces / VS Code / Copilot / Node.js |
| パネル前30分 | チームでアイデア出し | `work/idea.md`, UIスケッチ, シーン画像 |
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
  copilot-cli-mcp.json
  copilot-instructions.md
  instructions/
  skills/
.devcontainer/
  devcontainer.json
  setup-copilot-cli.sh
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
  plan.md
  ui-sketch.png
  scene-1.jpg  # 任意
  scene-2.jpg  # 任意
```

### Copilotカスタマイズの使い分け

このリポジトリでは、Copilotのカスタマイズを用途と適用範囲で分けています。

| ファイル / ディレクトリ | いつ使われるか | スコープ | このハンズオンでの役割 |
|---|---|---|---|
| `.github/copilot-instructions.md` | このリポジトリでCopilot Chat / Agentを使うときに共通で参照される | リポジトリ全体 | `app/` 配下に作る、Vite + React + TypeScript、LIFFモック優先などの基本ルール |
| `.github/instructions/*.instructions.md` | `applyTo` に一致するファイルを編集するときに追加で参照される | ファイルパターン単位 | 生成Webアプリ配下（`app/**/*`）だけに効く実装ルール |
| `.github/agents/*.agent.md` | VS Code Copilot Chatでcustom agentを選ぶ、またはhandoffで渡すときに使われる | そのagentを使った会話 | アイデア聞き取り、計画化、デモ確認など、工程ごとに会話の進め方を固定する |
| `.github/skills/*/SKILL.md` | `/web-coder` などのSkillを明示的に呼ぶ、またはAgentが必要に応じて使う | 呼び出したタスク単位 | 実装、デザインレビュー、ブラウザ確認など、作業別の専門手順を渡す |
| `.vscode/mcp.json` | VS Code内のCopilot AgentがMCPツールを使うときに参照される | VS Codeワークスペース | VS Code内ブラウザ確認やPlaywright MCPなどの接続設定 |
| `.github/copilot-cli-mcp.json` | Codespaces起動時にCopilot CLI向けMCP設定として配置される | Copilot CLI環境 | CLIから同じMCP設定を使えるようにする元設定 |

## ハンズオンで使うAgentとSkills

付箋、UIスケッチ、シーン画像を `work/idea.md` に落とす部分は、対話しながら進めやすいようにcustom agentを用意しています。

- `idea-capture-coach` — 選んだアイデア、UIスケッチ、シーン画像、任意のストーリーを聞き取り、`work/idea.md` を整理

ideaから実装計画へ変換する部分は、Plan modeに近い対話的な絞り込みが必要なのでcustom agentを用意しています。

- `miniapp-planner` — `work/idea.md` とUIスケッチ、必要に応じてシーン画像を、小さな実装計画へ変換し、`work/plan.md` に保存

実装以降は、`github/awesome-copilot` から今回のハンズオンに合うSkillsを選び、短い日本語版として `.github/skills/` に置いています。

- `/web-coder` — React + TypeScript、CSS、アクセシビリティ、レスポンシブ実装
- `/web-design-reviewer` — 画面の見た目、スマートフォン幅、空状態、エラー状態の確認と改善
- `/webapp-testing` — VS Code内ブラウザ、ポートプレビュー、Playwright MCPによる主要フロー確認

`miniapp-planner` の **実装を開始する** handoffは、通常のAgentへ `work/plan.md` を渡し、可能であればAutopilotで進めるよう依頼します。Autopilotの切り替え可否はVS Code側の状態に依存するため、必要に応じて手動で `/web-coder` を実行します。

最後の成果共有前にも、LINEミニアプリ固有の見せ方を確認するcustom agentを使います。

- `demo-coach` — デモで見せる順番、LINEらしさ、直すと効く点を確認

Codespacesでは、devcontainerがGitHub Copilot CLIをインストールし、CLI用のPlaywright MCP設定を `~/.copilot/mcp-config.json` に配置します。VS Code Agent用のMCP設定は `.vscode/mcp.json`、Copilot CLI用の元設定は `.github/copilot-cli-mcp.json` です。

LINEミニアプリ固有のカスタマイズは最小限にして、対話的に聞き取る部分と計画化、固有の視点はAgent、実装品質は既存Skills、生成先やLIFF Mockなどの共通ルールは `.github/copilot-instructions.md` と `.github/instructions/` に分けています。

## 生成されるアプリの前提

Copilotには、原則として以下の条件で実装してもらいます。

- `app/` 配下にアプリを新規作成する
- Vite + React + TypeScriptを基本構成にする
- LINEプロフィールはモック優先で扱い、LINEミニアプリチャネル作成、開発用LIFF ID、エンドポイントURL設定は任意の発展課題にする
- `npm install`, `npm run dev`, `npm run build` が動く状態にする
- スマートフォン幅で使いやすいUIにする
- ブラウザ確認を行い、見つかった問題をCopilotに修正させる
