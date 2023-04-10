require 'factory_bot'
require 'faker'
require 'httparty'
require 'rspec'
require 'pry'
require 'rake'

require_relative 'spec_helper/spec_helper'
require_relative 'data/models/users_model'

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENV['AMBIENTE']}.yml")

World(REST,FactoryBot::Syntax::Methods)