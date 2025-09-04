# hmPS について

![latest release](https://img.shields.io/github/v/release/komiyamma/hm_powershell?sort=semver)
[![Apache 2.0](https://img.shields.io/badge/license-Apache_2.0-blue.svg?style=flat)](LICENSE)
![Hidemaru 8.73](https://img.shields.io/badge/Hidemaru-v8.73-6479ff.svg)
![PowerShell 5.x](https://img.shields.io/badge/PowerShell-v5.x-6479ff.svg?logo=powershell&logoColor=white)

「秀丸マクロ」と「PowerShell」をシームレスに近い形で利用するためのライブラリとなります。

## 概要

`hmPS` は、高機能テキストエディタ「秀丸エディタ」のマクロ機能から、Windowsの標準シェルである「PowerShell」をシームレスに利用するためのライブラリです。

このライブラリを使うことで、秀丸マクロの中にPowerShellスクリプトを直接記述し、実行することができます。
これにより、以下のような強力な連携が実現します。

*   **.NET Frameworkの活用**: PowerShellは.NET Frameworkを基盤としており、豊富な.NETライブラリを利用できます。GUIフォームの作成、高度なファイル操作、Webからのデータ取得など、マクロだけでは困難だった複雑な処理を簡単に実装できます。
*   **秀丸とPowerShellの双方向連携**: PowerShellスクリプトから秀丸マクロの変数を読み書きしたり、秀丸の各種機能を呼び出したりすることが可能です。逆に、マクロの処理結果をPowerShellで加工するといった連携もできます。
*   **記述の容易さ**: 秀丸エディタv8.66で導入されたヒアドキュメント機能により、エスケープ処理を気にすることなく、マクロ内に直接PowerShellコードを記述できます。
*   **OS標準シェルとしての安定性**: PowerShellはWindowsの標準コンポーネントであるため、将来にわたって長く利用できるという安心感があります。

`hmPS`は、秀丸マクロの可能性を大きく広げ、定型業務の自動化やテキスト処理をより強力にサポートします。

[https://秀丸マクロ.net/?page=nobu_tool_hm_powershell](https://秀丸マクロ.net/?page=nobu_tool_hm_powershell)
- 起動が遅いので、hmPSをngen登録することを強く推奨。
- PowerShell 5.0以上が入っていること。

