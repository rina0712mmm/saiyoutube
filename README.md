# アプリケーション概要

## アプリケーション名
  saiyoutube

## アプリケーション概要
「企業と求職者のマッチング促進」 (※ 随時機能を増やしていく予定で、現状STEP1の段階です。)

  step1: 採用×youtube（仕様）→企業が自社の魅力を動画で配信し、求職者が応募しマッチングを図る。
        （イメージは、youtubeが採用だけに特化し、応募ができる機能を備えているものです。）
  
  step2: 求職者視点にたった求人サイト。特徴は、検索のしやすさ。
        - googleマップを使用し、採用している会社と職種が一目で把握できる。(現状、他社で存在しない機能)
        - 検索軸が豊富（勤務地、給料、福利厚生、業種・職種、特徴といった方法がある）

## URL


## テスト用アカウント
  Basic認証 ID：      ,PASS:

  ユーザーログイン：メールアドレス
                :パスワード

## 利用方法
  企業側：ログインをして動画配信可能。求職者から、応募or質問がきた際に対応可能。

  求職者側：ログインをしてもしなくても動画視聴可能。応募の際、登録が必要。

  ※ 随時機能を増やしていきます。

## 目指した課題解決
  **「企業と求職者のマッチング促進」**

    - 情報の一本化

    - 完全無料にし、採用している企業を可視化することができる

    - 資金がなく採用できなかった企業もアピールできるようになる

  ■ 現状の課題

  **企業側**

    - 採用したい場合でも、採用にかける費用がなければ掲載不可能。(高額のため、数ある媒体の中から1媒体載せるケースが多い)

  **求職者側**

    - 求人サイトが数ありすぎて、全てのサイトを確認することが困難。

    - 求人サイトによって、記載方法やコンテンツなどが違い、迷ってしまう。

    - 働きたい会社が実は採用したかったとしても、求人サイトに載っていない場合アプローチすることが難しい。


## 洗い出した用件

    ■ 動画配信機能 →文字だけでなく視覚的にアピールするため（企業がログインした状態で動画配信可能）    
    
    ■ googlemap搭載 →視覚的に採用している企業を探すため （募集している企業はgooglemap上に旗が立つ）
    
    ■ 応募機能  →求職者が応募できるようにするため （応募ボタンをクリックすると応募可能）       
    
    ■ 検索機能  →求職者が検索できるようにするため （検索ボタンをクリックすると検索可能）      

## 実装した機能についてのGIFと説明

## 実装予定の機能
    STEP1の求職者が応募をする機能、STEP2の機能

## データベース設計
    https://gyazo.com/1b35ce221d83e929234875e9906604e6

## ローカルでの動作方法


# テーブル設計

## users テーブル

| Column          | Type   | Options     |
| --------------- | ------ | ----------- |
| company_name    | string | null: false |
| email           | string | null: false |
| password        | string | null: false |
| first_name      | string | null: false |
| last_name       | string | null: false |
| phone_number    | string | null: false |

### Association
- has_many :videos
- has_one :maching

## videos テーブル

| Column          | Type       | Options                      |
| --------------- | ---------- | ---------------------------- |
|  video          | string     | null: false                  |
|  title          | string     | null: false                  |
|  detail         | text       | null: false                  |
|  users          | references | null: false foreign_key: true|

### Association
- belongs_to :user

##  job_seekers テーブル

| Column          | Type   | Options     |
| --------------- | ------ | ----------- |
| first_name      | string | null: false |
| last_name       | string | null: false |
| email           | string | null: false |
| password        | string | null: false |
| phone_number    | string | null: false |
| birth_date      | date   | null: false |
| message         | text   | null: false |

### Association
- has_one :maching

## maching テーブル

| Column          | Type       | Options                      |
| --------------- | ---------- | ---------------------------- |
|  users          | references | null: false foreign_key: true|
|  job_seekers    | references | null: false foreign_key: true|

### Association
- belongs_to :user
- belongs_to :job_seeker
