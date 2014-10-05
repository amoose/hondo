class CreateBuffaloes < ActiveRecord::Migration
  def change
    create_table :buffaloes do |t|
      t.string :uid
      t.string :token
      t.string :label
      t.string :last_ip
      t.integer :user_id
      t.string :location

      t.timestamps
    end
  end
end
