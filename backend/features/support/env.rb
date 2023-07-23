require 'cucumber'
require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'
require 'pry'
require 'pry-nav'
require 'pry-remote'
require 'report_builder'
require 'rspec'
require 'json_matchers/rspec'

CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/environments/#{ENV['ENV_TYPE']}.yml"))

JsonMatchers.schema_root = File.join(Dir.pwd, 'features/support/data/schemas')
