# Devise SendGrid アプリ

Devise によるユーザー登録とメール確認を試すための Rails アプリです。
本番環境では確認メールを SendGrid から送信します。

## 機能

- 新規登録とメールによるアカウント確認（`confirmable`）
- ログイン・ログアウト、ログイン状態の保持（`rememberable`）
- パスワード再設定（`recoverable`）
- アカウント設定（メールアドレス・パスワードの変更、退会）（`registerable`）
- ホーム画面でのログイン状態・確認状態の表示

画面はすべて日本語で、Tailwind CSS でデザインしています。

## 動作環境

| 項目 | バージョン・内容 |
|---|---|
| Ruby | 4.0.9 |
| Rails | 8.1 |
| Devise | 5.0 |
| CSS | Tailwind CSS（tailwindcss-rails） |
| DB | 開発・テストは SQLite 3、本番は PostgreSQL |

## セットアップ

```shell
bundle install
bin/rails db:prepare
```

### 環境変数（任意）

開発環境で実際に確認メールを送りたい場合は、`dot.env.sample` を `.env` にコピーして Gmail のアカウント情報を設定します。
`.env` は `.gitignore` に含まれているので、リポジトリにはコミットされません。

```shell
cp dot.env.sample .env
```

| 変数名 | 内容 |
|---|---|
| `GMAIL_USERNAME` | 送信に使う Gmail アドレス |
| `GMAIL_PASSWORD` | Gmail のパスワード（アプリパスワード） |

両方が設定されていれば、Gmail の SMTP から確認メールを送信します。
設定がなければメールは実際には送信されず（`:test` 配信）、ローカルでの新規登録はそのまま試せます。

## 起動

```shell
bin/dev
```

Rails サーバーと Tailwind CSS の自動ビルドが同時に起動します（初回は foreman がインストールされます）。
ブラウザで `http://localhost:3000` を開いてください。

## テスト

```shell
bin/rails test
```

GitHub Actions でも、push と PR のたびにテストを実行します。

## 本番環境

Heroku で動かす想定です。次の環境変数を設定します。

| 変数名 | 内容 |
|---|---|
| `DATABASE_URL` | PostgreSQL の接続先 |
| `SENDGRID_USERNAME` | SendGrid の SMTP ユーザー名 |
| `SENDGRID_PASSWORD` | SendGrid の SMTP パスワード |
