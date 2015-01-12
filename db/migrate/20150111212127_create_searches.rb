class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :terms
      t.text :options
      t.text :result

      t.timestamps null: false
    end
  end
end
