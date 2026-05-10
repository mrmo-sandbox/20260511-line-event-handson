# LINEミニアプリ × Agentic Development ハンズオン

このリポジトリは、LINEミニアプリを題材に **GitHub Copilot ChatでWebアプリをゼロから実装する** ハンズオン用のハーネスです。

アプリ本体の雛形は含めません。参加者はチームでアイデアをまとめ、`work/idea.md` とUIスケッチ画像をGitHub Copilotに渡し、VS CodeのCopilot Chatで `app/` 配下にWebアプリを生成します。

## このハンズオンでやること

参加者が最初からコードを書くのではなく、チームで作ったアイデアをGitHub Copilotが実装しやすい形に整えます。

`work/idea.md` とUIスケッチ画像を **アイデア引き継ぎパッケージ** として作り、Awesome Copilot由来のフロントエンド向けSkillsでアプリ生成と改善を進めます。

## 当日のゴール

最低成功ラインは、GitHub Copilotが `app/` 配下にWebアプリを生成し、ローカルで起動できることです。

標準成功ラインは、VS Code内ブラウザで画面を確認し、1回以上Copilotに改善指示を出すことです。Playwright MCPは使える場合の補助にします。

## 全体の流れ

| タイミング | 内容 | 主な成果物 |
|---|---|---|
| 冒頭 | 環境確認 | Codespaces / VS Code / Copilot / Node.js |
| パネル前30分 | チームでアイデア出し | `work/idea.md`, UIスケッチ |
| パネル中 | Copilot Chatに実装を任せる | `app/` |
| ハンズオン本編 | ブラウザ確認・改善 | 修正済みアプリ |
| 最後 | 成果共有 | チーム発表 |

## 使い方

1. このリポジトリをForkします。
2. GitHub Codespacesを作成します。ローカルVS Codeでも実施できます。
3. [docs/00-setup.md](docs/00-setup.md) に沿って環境を確認します。
4. [work/idea.md](work/idea.md) をチームのアイデアで埋め、UIスケッチ画像を `work/` に置きます。
5. `/plan-from-idea` で `work/idea.md` とUIスケッチから必要最低限の実装計画を作ります。
6. `/web-coder` で `app/` 配下にWebアプリを実装します。
7. VS Code内ブラウザで画面を確認し、`/web-design-reviewer` で見た目を改善します。
8. `/webapp-testing` で主要フローを確認します。

## リポジトリ構成

```text
.github/
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
```

## ハンズオンで使うPromptとSkills

ideaから実装計画へ変換する部分は、このハンズオン固有の作業なので独自Promptを用意しています。

- `/plan-from-idea` — `work/idea.md` とUIスケッチを、小さな実装計画に変換

実装以降は、`github/awesome-copilot` から今回のハンズオンに合うSkillsを選び、短い日本語版として `.github/skills/` に置いています。

- `/web-coder` — React + TypeScript、CSS、アクセシビリティ、レスポンシブ実装
- `/web-design-reviewer` — 画面の見た目、スマートフォン幅、空状態、エラー状態の確認と改善
- `/webapp-testing` — VS Code内ブラウザ、ポートプレビュー、Playwright MCPによる主要フロー確認

LINEミニアプリ固有のカスタマイズは最小限にして、足りない固有フローはPrompt、実装品質は既存Skills、生成先やLIFF Mockなどの共通ルールは `.github/copilot-instructions.md` と `.github/instructions/` に分けています。

## 生成されるアプリの前提

Copilotには、原則として以下の条件で実装してもらいます。

- `app/` 配下にアプリを新規作成する
- Vite + React + TypeScriptを基本構成にする
- LINE LIFFはモック優先で扱い、実LIFF接続は任意の発展課題にする
- `npm install`, `npm run dev`, `npm run build` が動く状態にする
- スマートフォン幅で使いやすいUIにする
- ブラウザ確認を行い、見つかった問題をCopilotに修正させる
