class AddOpenToGym < ActiveRecord::Migration[6.1]
  def change
    add_column :gyms, :is_open, :boolean
  end
end
