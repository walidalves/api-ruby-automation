require 'factory_bot'
require 'faker'
require 'httparty'
require 'rspec'
require 'pry'
require 'rake'

require_relative 'spec_helper/spec_helper'

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENV['AMBIENTE']}.yml")

World(REST,FactoryBot::Syntax::Methods)