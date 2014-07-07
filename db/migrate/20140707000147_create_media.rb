class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :name
      t.string :uid
      t.integer :user_id

      t.timestamps
    end
  end
end
