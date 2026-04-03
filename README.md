# README

## System dependencies

- Ruby 4.0.2
- Rails 8.1.3
- SQLite 3 for development and test
- PostgreSQL for production

## Install

```shell
bundle install
bin/rails db:prepare
```

## Run

```shell
bin/rails server
```

Open `http://localhost:3000`.

In development, if `GMAIL_USERNAME` and `GMAIL_PASSWORD` are set, confirmation mail is sent via Gmail SMTP. Otherwise mail delivery falls back to Rails' `:test` adapter so local sign-up still works.

## Test

```shell
bin/rails test
```
