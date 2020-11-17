# テーブル設計

# users テーブル

| Column          | Type   | Options     |
| --------------- | ------ | ----------- |
| company_name    | string | null: false |
| email           | string | null: false |
| password        | string | null: false |
| first_name      | string | null: false |
| last_name       | string | null: false |
| first_name_kana | string | null: false |
| first_name_kana | string | null: false |

### Association
- has_many :videos

# videos テーブル
| Column          | Type   | Options     |
| --------------- | ------ | ----------- |
|  video          | string | null: false |
|  title          | string | null: false |
|  detail         | text   | null: false |

### Association
- belongs_to :user