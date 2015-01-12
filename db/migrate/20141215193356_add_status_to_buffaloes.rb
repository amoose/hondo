class AddStatusToBuffaloes < ActiveRecord::Migration
  def change
    add_column :buffaloes, :status, :string
  end
end
