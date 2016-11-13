# どのdeployファイルを使うかはcmd指定する
# ex. cap staging deploy
# とするとこのstagingファイルが呼ばれる

set :application, "staging_sample-app"
# 台数が複数の場合、%wのところへ追加する
role :app, %w{deploy@www.kusumoto-staging.xyz}
role :web, %w{deploy@www.kusumoto-staging.xyz}
role :db, %w{deploy@www.kusumoto-staging.xyz}
set :rails_env, :staging
set :deploy_to, '/var/www/sample-app/staging'
