class RemoveAgeFromAuthors < ActiveRecord::Migration[6.0]
  def change
    remove_column :authors, :age, :integer
  end
end
