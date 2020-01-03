# README

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
- has_many :Comments

## sweetテーブル
|Colum|Type|Options|
|-----|----|-------|
|name|string|null: false, add_index: sweet, unique: true|
|user_id|integer|null: false, foreign_key: true|
|image|text|
|description|text|null: false|

### Association
- belongs_to :user
- has_many :Comments

## Commentテーブル
|Colum|Type|Optins|
|-----|----|------|
|text|text|null:false|
|user_id|integer|null: false, foreign_key: true|
|sweet_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :sweet
