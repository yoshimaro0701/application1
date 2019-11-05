## DB設計

## usersテーブル

|Column|Type|Option|
|------|----|------|
|name|string|null: false|
|password|string|null: false|
|email|string|null: false, unique: true|

### Association
- has_many :tweets
- has_many :comments


## tweetsテーブル

|Column|Type|Option|
|------|----|------|
|image|text||
|text|text||
|user_id|integer|null: false, foreign_key: true|

### Association
- has_many :comments
- belongs_to :user


## commentsテーブル

|Column|Type|Option|
|------|----|------|
|image|text||
|text|text||
|user_id|integer|null: false, foreign_key: true|
|tweet_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :tweet