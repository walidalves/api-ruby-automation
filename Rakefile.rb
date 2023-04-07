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