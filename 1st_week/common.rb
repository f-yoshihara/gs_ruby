require 'nokogiri'
require 'active_record'
require 'open-uri'
require 'pp'

ActiveRecord::Base.logger = Logger.new(STDOUT)

class Headline < ActiveRecord::Base
end

ActiveRecord::Base.establish_connection(
    adapter:  'mysql2',
    host:     'localhost',
    username: 'root',
    password: '',
    database: 'ruby_study',
)