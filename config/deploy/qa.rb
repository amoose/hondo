set :stage, :qa
set :rails_env, :qa

# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary
# server in each group is considered to be the first
# unless any hosts have the primary property set.
# role :app, %w{deploy@example.com}
# role :web, %w{deploy@example.com}
# role :db,  %w{deploy@example.com}

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server
# definition into the server list. The second argument
# something that quacks like a hash can be used to set
# extended properties on the server.
server 'ec2-54-196-93-192.compute-1.amazonaws.com', user: 'ubuntu', roles: %w{web app db}

role :resque_worker, "ec2-54-196-93-192.compute-1.amazonaws.com"
# role :resque_scheduler, "app_domain"

set :workers, { "*" => 1 }

set :rvm_type, :user
set :rvm_ruby_version, '2.0.0'
set :rvm_user, 'ubuntu'
