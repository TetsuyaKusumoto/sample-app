set :application, "staging_sample-app"
role :app, %w{vagrnat@vagrant.local}
role :web, %w{vagrant@vagrant.local}
role :db, %w{vagrant@vagrant.local}
set :rails_env, :staging
set :deploy_to, '/var/www/sample-app/staging'
