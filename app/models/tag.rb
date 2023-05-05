class Tag < ApplicationRecord
    has_many :gossip_tags # chaque tag peut avoir plusieurs gossip_tags
    has_many :gossips, through: :gossip_tags # chaque tag peut avoir plusieurs gossips, et un gossip peut avoir plusieurs tags
  end