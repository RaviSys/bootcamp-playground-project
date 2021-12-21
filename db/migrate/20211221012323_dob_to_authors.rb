class DobToAuthors < ActiveRecord::Migration[6.0]
  def change
    add_column :authors, :dob, :date
    add_column :authors, :age, :integer
  end
end
