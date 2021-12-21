class Part < ApplicationRecord
  has_and_belongs_to_many :assemblies, join_table: :assemblies_parts
end
