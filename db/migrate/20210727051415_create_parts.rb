class CreateParts < ActiveRecord::Migration[6.0]
  def change
    create_table :parts do |t|
      t.string :name
      t.string :part_no

      t.timestamps
    end
  end
end
