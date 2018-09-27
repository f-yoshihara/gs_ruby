require './common'

class CreateName < ActiveRecord::Migration[5.0]
  create_table :names do |t|
    t.column :user_id, :integer
    t.column :first_name, :string
    t.column :last_name, :string
  end
end