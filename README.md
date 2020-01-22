![natsu]

## 🌐 App URL
  `$ http://18.178.6.194/ `
### 

## 💬 git
` $ git clone https://github.com/kisaragisyuuji/natsu.git`
### 構築方法
` $ cd hoge`
` $ bundle install `
` $ rails db:create `
` $ rails db:migrate `
` $ rails s `
`  http://localhost:3000 `

## ⭐️Features

<p>スイーツを投稿、投稿に対してコメントをできるアプリケーションです。</p>
<h1> Topページ</h1>
<p>新規登録機能 ログイン機能 ログアウト機能 </p>
<h2>スイーツ投稿ページ</h2>
<p>投稿機能 投稿された一覧</p>
<h3>詳細ページ</h3>
<p>編集機能 削除機能 コメント機能</p>


# natsu DB設計

## userテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, uniqueness: true|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false|

### Association
- has_many :sweets
- has_many :comments

## sweetテーブル
|Colum|Type|Options|
|-----|----|-------|
|name|string|null: false, add_index: sweet, unique: true|
|user_id|integer|null: false, foreign_key: true|
|image|text|null: false|
|description|text|null: false|

### Association
- belongs_to :user
- has_many :comments

## commentテーブル
|Colum|Type|Optins|
|-----|----|------|
|text|text|null:false|
|user_id|integer|null: false, foreign_key: true|
|sweet_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :sweet
