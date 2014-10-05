class AddTokenToTorrents < ActiveRecord::Migration
  def change
  	add_column :torrents, :token, :string
  end
end
