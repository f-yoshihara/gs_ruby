require './common'

class CreateUsers < ActiveRecord::Migration[5.0]
    create_table :users do |t|
        t.column :name,      :string 
        t.column :gender,    :string
        t.column :pref_name, :string
        t.timestamps
    end
end