require 'data_mapper'
require 'dm-postgres-adapter'

require_relative '../models/link.rb'

def setup
  DataMapper.setup(:default, "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
  DataMapper.auto_upgrade!
  DataMapper.finalize
end

setup
