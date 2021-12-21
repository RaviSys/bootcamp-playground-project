class AddColumnsToAuthors < ActiveRecord::Migration[6.0]
  def change
    add_column :authors, :address, :string
    add_column :authors, :contact_number, :string
  end
end
