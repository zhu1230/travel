set :application, "travel"
set :repository,  "git://github.com/zhu1230/travel.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "doctorthinking.com"                          # Your HTTP server, Apache/etc
role :app, "doctorthinking.com"                          # This may be the same as your `Web` server
role :db,  "doctorthinking.com", :primary => true # This is where Rails migrations will run
# role :db,  "your slave db-server here"
set :deploy_to, "/opt/www/html/travel"
# set :scm_username,"zhu1230"
set :user,"root"
set :use_sudo, false
set :branch, "master"
set :deploy_via, :remote_cache

$:.unshift(File.expand_path('./lib', ENV['rvm_path'])) # Add RVM's lib directory to the load path.
require "rvm/capistrano"                  # Load RVM's capistrano plugin.
set :rvm_ruby_string, '1.9.2'        # Or whatever env you want it to run in.
# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end