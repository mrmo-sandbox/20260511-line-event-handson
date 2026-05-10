# 00. 事前準備と環境確認

このハンズオンでは、アプリ本体を事前に用意しません。VS CodeのGitHub Copilot Chatで、アイデアからWebアプリをゼロから生成します。

## まず開く

[![Fork this repository](https://img.shields.io/badge/Fork-this%20repository-24292F?logo=github&logoColor=white)](https://github.com/mrmo-sandbox/20260511-line-event-handson/fork)
[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/mrmo-sandbox/20260511-line-event-handson?quickstart=1)
[![Open in VS Code Web](https://img.shields.io/badge/Open%20in-VS%20Code%20Web-007ACC?logo=visualstudiocode&logoColor=white)](https://vscode.dev/github/mrmo-sandbox/20260511-line-event-handson)

ハンズオンで編集する場合は、まずForkしてください。Codespacesボタンはこのリポジトリをすぐ開くための入口です。自分のForkで作業する場合は、Fork後のリポジトリ画面で **Code** → **Codespaces** → **Create codespace** を選びます。

VS Code Webは、リポジトリや資料をすぐ見る用途に便利です。ターミナルやローカル実行まで使う場合は、CodespacesまたはローカルVS Codeを使ってください。

## 必要なもの

- GitHubアカウント
- GitHub Copilotが使えるVS CodeまたはCodespaces環境
- このリポジトリのFork

ローカルVS Codeで進める場合は、追加でNode.js 22 LTS以降とGitを用意します。

## 推奨: Codespacesで開く

1. GitHub上でこのリポジトリをForkします。
2. Forkしたリポジトリで **Code** → **Codespaces** → **Create codespace** を選びます。
3. Codespacesが開いたら、GitHub Copilotにサインインしていることを確認します。
4. 推奨拡張機能が表示されたらインストールします。
5. MCPサーバーのTrust確認が出た場合は、必要になったときだけPlaywrightを許可します。

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
