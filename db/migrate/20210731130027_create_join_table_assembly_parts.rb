class CreateJoinTableAssemblyParts < ActiveRecord::Migration[6.0]
  def change
    create_join_table :assemblies, :parts do |t|
      t.index [:assembly_id, :part_id], unique: true
    end
  end
end
