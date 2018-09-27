require 'nokogiri'
require 'active_record'
require 'open-uri'
require 'pp'

# Loggerはログを記録するライブラリ。
# ここではログの出力先をSTDOUT(標準出力に指定している)
# https://docs.ruby-lang.org/ja/latest/library/logger.html
ActiveRecord::Base.logger = Logger.new(STDOUT)

# headlinesというテーブルを操るHeadlineというモデルにActiveRecord::Baseを継承
# 接続の段階では使わない
class Headline < ActiveRecord::Base
end

class User < ActiveRecord::Base
    has_many :names
end

class Name < ActiveRecord::Base
    belongs_to :user
end

# ここでDB接続を行う。接続先の指定など諸々情報を与える。
ActiveRecord::Base.establish_connection(
    adapter:  'mysql2',
    host:     'localhost',
    username: 'root',
    password: '',
    database: 'ruby_study',
)

# p Headline.all