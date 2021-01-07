class AddForeginKeyToParty < ActiveRecord::Migration[5.2]
  def change
    add_column :parties, :category_id, :integer
  end
end
