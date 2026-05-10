# 00. 事前準備と環境確認

このハンズオンでは、アプリ本体を事前に用意しません。VS CodeのGitHub Copilot Chatで、アイデアからWebアプリをゼロから生成します。

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
