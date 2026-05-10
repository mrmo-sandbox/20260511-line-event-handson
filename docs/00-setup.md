# 00. 事前準備と環境確認

このハンズオンでは、アプリ本体を事前に用意しません。VS CodeのGitHub Copilot Chatで、アイデアからWebアプリをゼロから生成します。

## 1. まずForkする

[![Fork this repository](https://img.shields.io/badge/Fork-this%20repository-24292F?logo=github&logoColor=white)](https://github.com/mrmo-sandbox/20260511-line-event-handson/fork)

ハンズオンで編集する場合は、最初にこのリポジトリをForkします。以降の作業は、基本的に自分のForkで行います。

## 2. 作業環境を選ぶ

Forkが終わったら、自分のForkのリポジトリ画面を開き、以下のどちらかを選びます。

下のCodespaces / VS Code Webボタンは、元リポジトリをすぐ確認するためのショートカットです。自分のForkで作業する場合は、Fork後のリポジトリ画面で同じ操作をしてください。

### 推奨: Codespacesで開く

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/mrmo-sandbox/20260511-line-event-handson?quickstart=1)

上のボタンは、この元リポジトリをCodespacesで開くショートカットです。自分のForkで作業する場合は、Fork後のリポジトリ画面で **Code** → **Codespaces** → **Create codespace** を選んでください。

Codespacesは、Node.jsや推奨拡張機能がそろった状態で始めやすいので、このハンズオンの推奨環境です。

### 代替: VS Code Webで見る

[![Open in VS Code Web](https://img.shields.io/badge/Open%20in-VS%20Code%20Web-007ACC?logo=visualstudiocode&logoColor=white)](https://vscode.dev/github/mrmo-sandbox/20260511-line-event-handson)

VS Code Webは、リポジトリや資料をすぐ見る用途に便利です。ターミナルで `npm install` や `npm run dev` まで実行する場合は、CodespacesまたはローカルVS Codeを使ってください。

## 必要なもの

- GitHubアカウント
- GitHub Copilotが使えるVS CodeまたはCodespaces環境
- このリポジトリのFork

ローカルVS Codeで進める場合は、追加でNode.js 22 LTS以降とGitを用意します。

## Codespacesで確認すること

Codespacesでは、devcontainerがGitHub Copilot CLIを自動インストールし、CLI用のMCP設定を `~/.copilot/mcp-config.json` に配置します。VS Code Agent用の `.vscode/mcp.json` とは別設定です。

1. Codespacesが開いたら、GitHub Copilotにサインインしていることを確認します。
2. 推奨拡張機能が表示されたらインストールします。
3. ターミナルで `copilot version` を実行し、GitHub Copilot CLIが使えることを確認します。
4. Copilot CLIを開く場合は `copilot` を実行し、CLI内で `/mcp show` を実行すると `playwright` の設定を確認できます。
5. MCPサーバーのTrust確認が出た場合は、必要になったときだけPlaywrightを許可します。

既に作成済みのCodespaceでは、devcontainerの再ビルドが必要になる場合があります。

## VS Codeで確認すること

1. CodespacesまたはローカルVS Codeでリポジトリのルートフォルダを開きます。
2. GitHub Copilotにサインインしていることを確認します。
3. Copilot ChatでこのリポジトリのSkillsを実行できることを確認します。
4. VS Code内ブラウザとPortsパネルを使えることを確認します。

ローカルVS CodeでGitHub Copilot CLIも使う場合は、ターミナルで以下を実行します。

```bash
npm install -g @github/copilot
mkdir -p ~/.copilot
cp .github/copilot-cli-mcp.json ~/.copilot/mcp-config.json
```

## Node.js確認

ターミナルで以下を実行します。

```bash
node --version
npm --version
```

CodespacesではdevcontainerがNode.jsを用意します。ローカルVS CodeでNode.jsが古い場合は、セッションやパネルディスカッションの間にアップデートしてください。

## 無料プラン・制限がある場合

無料プランや組織ポリシーによって、CodespacesやAgent機能に制限がある場合があります。その場合は、ローカルVS Codeに切り替えるか、チーム内で使える人の環境を中心に進めてください。

ハンズオン後は、不要なCodespaceを停止または削除してください。

## この時点でアプリが無いのは正常です

`app/` はハンズオン中にGitHub Copilotが作成します。最初から `npm install` や `npm run dev` を実行する必要はありません。

---

<p align="left">
  <a href="../README.md">← READMEに戻る</a>
</p>

<p align="right">
  <a href="01-ideation.md">次へ: 01. チームでアイデアを作る →</a>
</p>
