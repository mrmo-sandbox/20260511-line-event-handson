# LINEミニアプリ × Agentic Development ハンズオン

このリポジトリは、LINEミニアプリを題材に **GitHub Copilot ChatでWebアプリをゼロから実装する** ハンズオン用のハーネスです。

アプリ本体の雛形は含めません。参加者はチームでアイデアをまとめ、`work/idea.md` とUIスケッチ画像をGitHub Copilotに渡し、VS CodeのCopilot Chatで `app/` 配下にWebアプリを生成します。

## このハンズオンでやること

参加者が最初からコードを書くのではなく、チームで作ったアイデアをGitHub Copilotが実装しやすい形に整えます。

`work/idea.md` とUIスケッチ画像を **アイデア引き継ぎパッケージ** として作り、専用プロンプトで実装計画とアプリ生成を進めます。

## 当日のゴール

最低成功ラインは、GitHub Copilotが `app/` 配下にWebアプリを生成し、ローカルで起動できることです。

標準成功ラインは、VS Code内蔵ブラウザまたはPlaywright MCPで画面を確認し、1回以上Copilotに改善指示を出すことです。

## 全体の流れ

| タイミング | 内容 | 主な成果物 |
|---|---|---|
| 冒頭 | 環境確認 | VS Code / Copilot / Node.js / MCP |
| パネル前30分 | チームでアイデア出し | `work/idea.md`, UIスケッチ |
| パネル中 | VS Code Agentに実装を任せる | `app/` |
| ハンズオン本編 | ブラウザ確認・改善 | 修正済みアプリ |
| 最後 | 成果共有 | チーム発表 |

## 使い方

1. このリポジトリをForkまたはCloneします。
2. VS Codeでリポジトリのルートを開きます。
3. [docs/00-setup.md](docs/00-setup.md) に沿って環境を確認します。
4. [work/idea.md](work/idea.md) をチームのアイデアで埋め、UIスケッチ画像を `work/` に置きます。
5. Copilot Chatで `/plan-from-idea` を実行し、必要最低限でシンプルな実装計画を作ります。
6. 計画に納得したら `/implement-from-plan` を実行し、`app/` 配下に実装します。
7. `/improve-with-browser` でブラウザ確認と改善ループを回します。
8. 余裕があれば `/review-miniapp` でデモ前レビューを行います。

## リポジトリ構成

```text
.github/
  copilot-instructions.md
  agents/
  instructions/
  prompts/
  skills/
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
```

## フロントエンド向けSkills

`github/awesome-copilot` から、今回のハンズオンに合うものを選び、短い日本語版として `.github/skills/` に置いています。

- `/web-coder` — React + TypeScript、CSS、アクセシビリティ、レスポンシブ実装の補助
- `/web-design-reviewer` — 画面の見た目、スマートフォン幅、空状態、エラー状態の確認
- `/webapp-testing` — Playwrightやブラウザ操作による主要フローの動作確認

## 生成されるアプリの前提

Copilotには、原則として以下の条件で実装してもらいます。

- `app/` 配下にアプリを新規作成する
- Vite + React + TypeScriptを基本構成にする
- LINE LIFFはモック優先で扱い、実LIFF接続は任意の発展課題にする
- `npm install`, `npm run dev`, `npm run build` が動く状態にする
- スマートフォン幅で使いやすいUIにする
- ブラウザ確認を行い、見つかった問題をAgentに修正させる
