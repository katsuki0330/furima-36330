## users テーブル

| Column                   | Type   | Options                  |
| ------------------------ | ------ | ------------------------ |
| nickname                 | string | null: false              |
| email                    | string | null: false, unique:true |
| encrypted_password       | string | null: false              |
| first_name               | string | null: false              |
| last_name                | string | null: false              |
| first_name_kana          | string | null: false              |
| last_name_kana           | string | null: false              |
| birthday                 | date   | null: false              |

### Association
- has_many :items
- has_many :buys

##　itemsテーブル
| Column              | Type       | Options                        |
| ------------------- | -----------| ------------------------------ |
| name                | string     | null: false                    |
| explanation         | text       | null: false                    |
| category_id         | integer    | null: false                    |
| status_id           | integer    | null: false                    |
| shipping_charges_id | integer    | null: false                    |
| country_id          | integer    | null: false                    |
| criterion_day_id    | integer    | null: false                    |
| price               | integer    | null: false                    |
| user                | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_one :buy

## buysテーブル
| Column             | Type       | Options                        |
| -------------------| -----------| ------------------------------ |
| item               | references | null: false, foreign_key: true |
| user               | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :item
- has_one :shipping

## shippingsテーブル
| Column             | Type       | Options                        |
| -------------------| -----------| ------------------------------ |
| post_code          | string     | null: false                    |
| country_id         | string     | null: false                    |
| city               | string     | null: false                    |
| address_line1      | string     | null: false                    |
| address_line2      | string     |                                |
| telephone          | string     | null: false                    |
| buy                | references | null: false, foreign_key: true |

### Association
- belongs_to :buy
