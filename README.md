# README
Name
====
PvAnalytics

Overview
====
pv数計測ツール

## Description
pv数を計測する任意のhtmlファイルにPvAnalyticsにて発行されたタグを貼り付けて頂き、WEBサイト全体のpv数
、またはURLごとのpv数を計測する事ができる。

計測結果は日付の指定、はじめに発行したタグの中にあるtokenを入力し、計測結果を出力する。
計測結果はユーザーが入力した日付のpv数が時間帯別で出力される。
## Usage
1. トップページ左側にある**タグ発行**をクリックするとタグが発行される為、それを計測先のページ<head>内に貼り付ける。
2. 1.で貼り付けたページにアクセスする度にpv数がカウントされ、計測結果を見るために日付を**2018/09/11**の形で入力し、
貼り付けたタグのdata-token="**328d648e-cee6-4d96-bb62-000000000000**"の部分をToken:のテキストエリアに貼り付け、
**集計を見る**をクリックする。
3. tokenをキーにWEBサイトの総pv数が出力され、url:のセレクトボックスでurlを選択するとurl別でpv数が出力される。
