# config valid for current version and patch releases of Capistrano
lock "~> 3.17.1"

set :application, "sentou"
set :repo_url, "https://github.com/idesho/Oshisen_Kawasaki.git"
set :linked_files, %w{config/secrets.yml .env}   # 4
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets public/uploads}   # 5
set :keep_releases, 5   # 6
set :rbenv_ruby, '3.0.1'    # 7
set :log_level, :info   # 8
append :linked_files, 'config/secrets.yml'  

after 'deploy:published', 'deploy:seed'   # 9
after 'deploy:finished', 'deploy:restart'   # 10

namespace :deploy do
  desc 'Run seed'
  task :seed do
    on roles(:db) do
      with rails_env: fetch(:rails_env) do
        within current_path do
          execute :bundle, :exec, :rake, 'db:seed'
        end
      end
    end
  end
  desc 'Restart application'
  task :restart do
    invoke 'unicorn:restart'
  end
end
