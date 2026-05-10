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

1. Codespacesが開いたら、GitHub Copilotにサインインしていることを確認します。
2. 推奨拡張機能が表示されたらインストールします。
3. MCPサーバーのTrust確認が出た場合は、必要になったときだけPlaywrightを許可します。

## VS Codeで確認すること

1. CodespacesまたはローカルVS Codeでリポジトリのルートフォルダを開きます。
2. GitHub Copilotにサインインしていることを確認します。
3. Copilot ChatでこのリポジトリのSkillsを実行できることを確認します。
4. VS Code内ブラウザとPortsパネルを使えることを確認します。

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
