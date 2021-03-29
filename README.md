# アプリケーション名
Gamebo（ゲムボ）

# アプリケーション概要
主にゲームを一緒にプレイするユーザーを見つける、コミュニケーションを取るためのツールです。
ユーザー同士でチャット機能を使い、プレイする時間の相談やゲームのID交換などを可能にしています。

# URL
https://gamebo-app.herokuapp.com/

# テスト用アカウント

ユーザー1
Email:     test@test
Password:  test1234

ユーザー2
Email:     sample@sample
Password:  sample1234

# 利用方法
新規登録してアカウントを作成するか、ログインして他のユーザーとチャットルームを介してコミュニケーションを取ります。
自分のプロフィールを充実させて、他のユーザーにコンタクトを取ってもらいやすくします。

# 目指した課題解決
ゲームを一緒にプレイする人を探すということを目的としたアプリケーションなので、目的に特化したSNSになります。
この目的を掲げることによりゲーム仲間を募集するユーザーを集め、繋げることで他のSNSで起こりがちな、タイムラインが流れてしまいユーザーを追えない、声をかけづらいといった課題解決を目指しています。

# 洗い出した要件

### ユーザー管理機能
新規登録・ログイン・ログアウトを可能にし、ユーザー同士を識別する目的があります。

### チャット機能
ユーザー同士がメッセージを送り合い、コミュニケーションを取れるようにします。

### チャットルーム機能
任意のユーザーを選択し、そのユーザー達だけでメッセージを送り合えるチャットルームを作成します。

### ユーザー詳細情報の表示機能
ユーザーごとにプロフィール文などを持ち、その情報を他のユーザーが閲覧するための機能です。

### ユーザー詳細情報の編集機能
ユーザーが自らのプロフィール文やアイコン画像を、任意に設定・変更するための機能です

# 実装した機能についての説明

### チャットルーム機能
チャットルーム作成画面にて、チャットルームを作成します。
[![Image from Gyazo](https://i.gyazo.com/0411578961a0dd4582258523edbfd60a.gif)](https://gyazo.com/0411578961a0dd4582258523edbfd60a)

### チャット機能
チャットルームにてユーザー同士でメッセージを送り合うことができます。
送信したメッセージは、チャットルームに所属するメンバーのみ閲覧できます。
[![Image from Gyazo](https://i.gyazo.com/0c5db2fb0ba713fa9a6ef9c381595e3a.gif)](https://gyazo.com/0c5db2fb0ba713fa9a6ef9c381595e3a)

# 実装予定の機能

### ユーザーの詳細情報の追加
現在はユーザーのプロフィール文やアイコン画像を設定することができます。
ですが、ユーザーの目線に立つと、ユーザーごとに現在のステータスを追加し、リアルタイムで「ゲームを一緒にプレイする人を募集しているかどうか」などの情報を保持できるとより便利だと考えています。

# データベース設計
![gamebo-er1](https://user-images.githubusercontent.com/78397875/112530814-3bcbae80-8dea-11eb-8fc4-fe6989a24ea0.png)

# ローカルでの動作方法
Ruby on Railsを使ってアプリケーションを作成しています。
Railsのバージョンは 6.0.0 を使用しています。
データベースはMYSQLを使用しています。