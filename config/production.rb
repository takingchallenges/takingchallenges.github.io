1 set :stage, :production
2 
3 # Extended Server Syntax
4 # ======================
5 # This can be used to drop a more detailed server definition into the
6 # server list. The second argument is a, or duck-types, Hash and is
7 # used to set extended properties on the server.
8 
9 server '54.87.213.40', user: 'ubuntu', port: 22, roles: %w{web app}
10 
11 set :bundle_binstubs, nil
12 
13 set :bundle_flags, '--deployment --quiet'
14 set :rvm_type, :user
15 
16 
17 SSHKit.config.command_map[:rake]  = "bundle exec rake"
18 SSHKit.config.command_map[:rails] = "bundle exec rails"
19 
20 namespace :deploy do
21 
22   desc "Restart application"
23   task :restart do
24     on roles(:app), in: :sequence, wait: 5 do
25       # execute :touch, release_path.join("tmp/restart.txt")
26     end
27   end
28 
29   after :finishing, "deploy:cleanup"
30 
31 end
