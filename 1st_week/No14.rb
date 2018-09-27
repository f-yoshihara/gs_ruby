require 'active_record'
# Loggerはログを記録するライブラリ。
# ここではログの出力先をSTDOUT(標準出力に指定している)
ActiveRecord::Base.logger = Logger.new(STDOUT)

# usersというテーブルを扱うUserというモデルにActiveRecord::Baseを継承
# 接続とテーブル作成の段階では使わない
class User < ActiveRecord::Base
end

# ここでDB接続を行う。
ActiveRecord::Base.establish_connection(
    adapter:  'mysql2',
    host:     'localhost',
    username: 'root',
    password: '',
    database: 'ruby_study',
)

# ActiveRecord::Migrationから継承。カラム指定。
# 引数の二つ目はデータ型
# class CreateUsers < ActiveRecord::Migration[5.0]
#     create_table :users do |t|
#         t.column :gender, :string
#         t.column :age,    :integer
#     end
# end

# class CreateName < ActiveRecord::Migration[5.0]
#     create_table :names do |t|
#         t.column :first_name, :string
#         t.column :last_name,  :string
#     end
# end