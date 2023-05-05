class City < ApplicationRecord
    has_many :users # chaque ville peut avoir plusieurs users
  end