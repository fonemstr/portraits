require 'bundler/capistrano'   

load 'deploy/assets'

default_run_options[:pty] = true  

set :user, "portrait"
set :domain, "portraitsinfabric.com"
set :application, "portraits"    
set :repository,  "git@github.com:fonemstr/portraits.git"
set :deploy_via, :remote_cache
set :scm, :git  
set :scm_verbose, true   
set :branch, 'master'

set :deploy_to, "/home/portrait/rails/#{application}"
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none` 

set :bundle_dir, fetch(:shared_path)+"/bundle"   
set :bundle_flags, "--deployment --quiet"

set :use_sudo, false
set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "portraitsinfabric.com"                          # Your HTTP server, Apache/etc
role :app, "portraitsinfabric.com"                          # This may be the same as your `Web` server
role :db,  "portraitsinfabric.com", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# if you want to clean up old releases on each deploy uncomment this:
after "deploy:restart", "deploy:cleanup"
after "deploy:create_symlink", :symlink_products

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

desc "Symbolic link product images to shared directory"
task :symlink_products, :roles => :app do
    run "ln -nfs #{shared_path}/public/spree #{release_path}/public/spree"
end

namespace :deploy do
  namespace :assets do
    task :precompile, :roles => :web, :except => { :no_release => true } do
        logger.info "Doing asset precompilation locally...."
        run_locally("bundle exec rake assets:clean RAILS_ENV=development && bundle exec rake assets:precompile RAILS_ENV=development")
        run_locally "cd public && tar -jcf assets.tar.bz2 assets"
        top.upload "public/assets.tar.bz2", "#{shared_path}", :via => :scp
        run "cd #{shared_path} && tar -jxf assets.tar.bz2 && rm assets.tar.bz2"
        run_locally "rm public/assets.tar.bz2"
        run_locally("bundle exec rake assets:clean RAILS_ENV=development")
    end

    task :symlink, :roles => :web do
      run ("rm -rf #{latest_release}/public/assets &&
            mkdir -p #{latest_release}/public &&
            mkdir -p #{shared_path}/assets &&
            ln -s #{shared_path}/assets #{latest_release}/public/assets")
    end
  end
end