class AddMediumIdToTorrents < ActiveRecord::Migration
  def change
  	add_column :torrents, :medium_id, :integer
  end
end
