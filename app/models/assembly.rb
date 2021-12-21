class Assembly < ApplicationRecord
  has_and_belongs_to_many :parts, join_table: :assemblies_parts
end
