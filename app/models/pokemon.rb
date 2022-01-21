class Pokemon < ApplicationRecord
  belongs_to :pokemon_id, class_name: 'Pokemon'
  has_many :pokemon_variant_id, class_name: 'Pokemon', foreign_key: :pokemon_id
end
