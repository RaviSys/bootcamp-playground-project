class RenameColumnInAuthor < ActiveRecord::Migration[6.0]
  def change
    rename_column :authors, :dob, :date_of_birth
  end
end
