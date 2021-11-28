## users テーブル

| Column                   | Type   | Options     |
| ------------------------ | ------ | ----------- |
| nickname                 | string | null: false |
| email                    | string | null: false |
| encrypted_password       | string | null: false |
| first_name               | string | null: false |
| last_name                | string | null: false |
| first_name_kana          | string | null: false |
| last_name_kana           | string | null: false |
| birthday                 | date   | null: false |

### Association
- has_many :items
- has_many :shippings

##　itemsテーブル
| Column             | Type       | Options                        |
| -------------------| -----------| ------------------------------ |
| image              | string     | null: false                    |
| name               | string     | null: false                    |
| explanation        | text       | null: false                    |
| category           | string     | null: false                    |
| status             | string     | null: false                    |
| shipping_charges   | string     | null: false                    |
| shipping_area      | string     | null: false                    |
| criterion_day      | references | null: false                    |
| price              | string     | null: false                    |
| user               | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_one :shipping

## shippingsテーブル
| Column             | Type       | Options                        |
| -------------------| -----------| ------------------------------ |
| post_code          | string     | null: false                    |
| country            | string     | null: false                    |
| city               | string     | null: false                    |
| address_line1      | string     | null: false                    |
| address_line2      | references | null: false                    |
| telephone          | string     | null: false                    |
| item               | references | null: false, foreign_key: true |
| user               | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :item

