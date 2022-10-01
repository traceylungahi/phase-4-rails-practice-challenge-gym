class AddGenderToClient < ActiveRecord::Migration[6.1]
  def change
    add_column :clients, :gender, :string
  end
end
