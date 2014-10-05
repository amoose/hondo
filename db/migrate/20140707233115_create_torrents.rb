class CreateTorrents < ActiveRecord::Migration
  def change
    create_table :torrents do |t|
      t.string :filename
      t.string :uid

      t.timestamps
    end
  end
end
