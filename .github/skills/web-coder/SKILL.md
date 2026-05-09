---
name: web-coder
description: "Use when: implementing frontend web apps with HTML, CSS, TypeScript, React, accessibility, responsive layout, or performance concerns."
argument-hint: "作りたい画面や改善したいUI"
---

# フロントエンド実装スキル

`github/awesome-copilot` の `web-coder` を参考にした、Webフロントエンド実装向けの軽量スキルです。

- 既存の構成、命名、スタイル方針を先に確認する
- React + TypeScriptでは型安全にし、不要な `any` や大きな抽象化を避ける
- CSSはモバイルファーストで、はみ出し、折り返し、タップしやすさを優先する
- UIは意味のあるHTML、ラベル、フォーカス状態、十分なコントラストを保つ
- アニメーションや装飾は、デモの理解を助ける最小限にする
- 変更後は `npm run build` と主要画面のブラウザ確認を行う
