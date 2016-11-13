# config valid only for current version of Capistrano

# これらの基本設定は、各環境ファイルで上書きされる。
# 各環境ファイルで書いていないものだけがこの値が使われる。

# 基本設定
lock '3.6.1'
set :application, 'sample-app'
set :deploy_to, '/var/www/sample-app'
set :keep_releases, 5
set :stages, %w(production staging)
set :default_stage, 'staging'
set :scm, :git
set :repo_url, 'git@github.com:tetsuyakusumoto/sample-app.git'
set :user, 'deploy'
set :use_sudo, true
# ssh
set :ssh_options, {
  user: fetch(:user),
  keys: %w(~/.ssh/id_rsa),
  auth_methods: %w(publickey),
  # .ssh/configの設定ファイルを使用できるようにする。これを設定することで`Host hoge`の部分で接続できることができる。
  forward_agent: true
}

# サーバでの環境変数の設定
set :default_env, {
  rbenv_root: "/usr/local/rbenv",
  path: "/usr/local/rbenv/shims:/usr/local/rbenv/bin:$PATH"
}

set :rbenv_ruby, '2.2.2'
set :tmp_dir, "#{fetch(:home)}/tmp"

# puma用設定
set :puma_user, fetch(:user)
set :puma_rackup, -> { File.join(current_path, 'config.ru') }
set :puma_state, "#{shared_path}/tmp/pids/puma.state"
set :puma_pid, "#{shared_path}/tmp/pids/puma.pid"
set :puma_bind, "unix://#{shared_path}/tmp/sockets/puma.sock"    #accept array for multi-bind
set :puma_default_control_app, "unix://#{shared_path}/tmp/sockets/pumactl.sock"
set :puma_conf, "#{shared_path}/puma.rb"
set :puma_access_log, "#{shared_path}/log/puma_access.log"
set :puma_error_log, "#{shared_path}/log/puma_error.log"
set :puma_role, :app
set :puma_env, fetch(:rack_env, fetch(:rails_env, 'production'))
set :puma_threads, [0, 16]
set :puma_workers, 0
set :puma_worker_timeout, nil
set :puma_init_active_record, false
set :puma_preload_app, false
set :puma_plugins, []  #accept array of plugins
set :nginx_use_ssl, false
# capistrano3-puma の既定の再起動処理を無効化
set :puma_default_hooks, false

# puma を capistrano で利用するための設定
set :puma_preload_app, false
set :prune_bundler, true








