source 'https://rubygems.org'

# default
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
gem 'sass-rails'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

# 記法
gem 'slim-rails'

# Style
gem 'bootstrap-sass'
gem 'font-awesome-rails'

# Web
group :development, :test do
  gem 'spring'
  gem 'spring-commands-rspec'
end
group :staging, :production do
  gem "puma"
end

# DB
group :development, :test do
  gem 'sqlite3'
end
group :staging, :production do
  gem 'pg'
end

# 認証・認可
gem 'devise'
gem 'devise_invitable'
gem 'devise-bootstrap-views'
gem 'cancancan'

# env
gem 'dotenv-rails'

# 非同期処理
gem 'sidekiq'
gem 'sidekiq-unique-jobs'
gem 'sidekiq-failures'
gem 'sinatra', require: nil # For sidekiq Web UI

# 開発
group :development do
  gem 'letter_opener' #ブラウザでメール確認
  gem 'xray-rails' #ブラウザ上の表示にどのビューが表示されているか

end
# テストコード
group :test do
  gem "rspec"
  gem "rspec-rails"
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'faker'
  gem 'timecop'
end

# デバッグ
group :development, :test do
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'pry-rails'  # rails console(もしくは、rails c)でirbの代わりにpryを使われる
  gem 'pry-doc'    # methodを表示
  gem 'pry-byebug' # pryを使ったデバッグを実施(Ruby 2.0以降で動作する) next
  gem 'pry-stack_explorer' # スタックをたどれる
  gem 'awesome_print' # コンソロールきれいに
  gem 'bullet' # N+1を指摘
  gem 'better_errors'
  gem 'annotate' #スキーマ情報を付加
end

# コードチェック
group :development, :test do
  gem 'rubocop', '0.35.1', require: false
  gem 'onkcop'
end


# ログ
group :production, :staging, :development do
  gem 'lograge' # simplify rails log
  gem 'logstash-event'
end

# 監視
gem 'newrelic_rpm'

# デプロイ
group :development do
  gem "capistrano"
  # リモートサーバーでのインストール用
  gem "capistrano-rbenv"
  gem "capistrano-rails"
  gem "capistrano-bundler"
  gem "capistrano3-puma"
  gem 'capistrano-ssh-doctor'
  gem "serverspec"
end

