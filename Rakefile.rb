require 'cucumber'
require 'cucumber/rake/task'

desc 'Execute Contract Tests'
task :contract do
  sh 'bundle exec cucumber -t @contract'
end

desc 'Execute Get User Tests'
task :get_users do
  sh 'bundle exec cucumber -t @get_users'
end

desc 'Execute Get ID User Tests'
task :get_user do
  sh 'bundle exec cucumber -t @get_user'
end

desc 'Execute Post User Tests'
task :post_user do
  sh 'bundle exec cucumber -t @post_user'
end