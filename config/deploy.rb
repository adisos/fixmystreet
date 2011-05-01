require "bundler/capistrano"

set :application, "fixmystreet"
set :repository,  "/home/sv4/repo.git/"
set :local_repository,  "sv4@fixmystreet.kg:repo.git"

set :scm, :git
set :branch, "kg"

server "fixmystreet.kg", :app, :web, :db, :primary => true

set :deploy_to, "/home/sv4/fixmystreet.kg"

set :user, "sv4"
set :group, "users"
set :use_sudo, false

namespace :deploy do
  task :start do
    run "touch #{current_release}/tmp/restart.txt"
  end

  task :stop, :roles => :app do
    # Do nothing.
  end

  desc "Restart Application"
  task :restart do
    run "touch #{current_release}/tmp/restart.txt"
  end

  desc "Update devise auth credentials (Twitter, Facebook)"
  task :update_configs do
    run "cp #{shared_path}/config/social.yml #{current_release}/config/"
    run "cp #{shared_path}/config/database.yml #{current_release}/config/"
  end

  after "deploy:finalize_update", "deploy:update_configs"
end
