# frozen_string_literal: true

require 'cucumber'
require 'httparty'
require 'pry'
require 'rspec'
require 'json_matchers/rspec'
require_relative 'utils'

JsonMatchers.schema_root = "#{File.dirname(__FILE__)}/schemas"

MASSA_CEP = YAML.load_file("#{File.dirname(__FILE__)}/massa_dados/cep.yml")

World(Utils)
