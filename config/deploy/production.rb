set :application, "production app name"
set :deploy_to, '/var/www/sample-app/production'
set :rails_env, 'production'
server "conoha", :app, :web, :db, :primary => true
