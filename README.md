
<div align="center"><a href="https://gyazo.com/cacc1fc437bf920699a62561b8e2d6ee"><img src="https://i.gyazo.com/cacc1fc437bf920699a62561b8e2d6ee.png" alt="Image from Gyazo" width="378"/></a></div>

# my library

## アプリケーション概要
　自分が読んだ本（ビジネス書、小説がメイン。漫画も想定）の情報を登録して一覧管理できるアプリです。

　読んだ本の感想、整理するための要約をテキスト、又は画像を保存でき、個人の復習方法に合った保存方法ができます。

## URL
 https://my-library-4210.herokuapp.com/

## テスト用アカウント
 ・ネーム: test
 ・メールアドレス: test-1@example.com
 ・パスワード: 123qwe

## 利用方法
1, 自身のアカウントを作成する為に、ユーザー登録をします。
    (ニックネーム、メールアドレス、パスワードを入力)

2, 一覧表示画面から、本の登録を行います。  
(タイトル、ジャンル、著者、出版、登録日、評価、メモ、感想まとめ、画像等)  

3, 登録した本は一覧表示画面で表示され、詳細表示、編集、削除等が可能です。 

## 目指した課題解決
  読書好き、読書で勉強している10代後半の学生から、30、40代のビジネスマンが読んだ本を一覧管理できるようにしたいです。  

  また、読んだ内容を忘れないようにする為に、テキストや画像を保存できる項目も実装したいです。  

## 洗い出した要件

### テーブル設計

#### users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

#### Association
- has_many :books

####　books テーブル

| Column            | Type      | Options     |
| ----------------  | -------   | ----------- |
| title             | string    | null: false |
| cover             | text      |             |
| genre             | string    |             |
| author            | string    |             |
| publishing        | string    |             |
| record_date       | integer   | null: false |
| memo              | text      |             |
| impression        | text      |             |
| image             | text      |             |
| reading_situation_id | integer   | null: false |
| evaluation_id     | integer   |             |
| user              | reference | foreign_key: true |

#### Association
- belongs_to :user

## 実装予定の機能
投稿機能を実装を検討しています。  

細かい内容からも探し出せる検索機能を検討しています。

登録した本をアプリ内で投稿をし、他のユーザーからコメントをもらえたり、また他の感想や要約を閲覧できて、新たに勉強や見聞を広げることができるようになります。  

## データベース設計
<a href="https://gyazo.com/771b7c1a59dd43f776569cc111be2cfb"><img src="https://i.gyazo.com/771b7c1a59dd43f776569cc111be2cfb.png" alt="Image from Gyazo" width="919"/></a>

## ローカルでの動作方法
ターミナルにて、下記のコマンドを行ってください。  
`% git clone https://github.com/rui4210/my-library.git`  

・開発環境  
Ruby / Ruby on Rails / MySQL / GitHub / Heroku / Visual Studio Code /

