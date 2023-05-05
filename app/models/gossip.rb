class Gossip < ApplicationRecord
  belongs_to :user  # chaque gossip appartient à un user
  has_many :gossip_tags # chaque gossip peut avoir plusieurs tags
  has_many :tags, through: :gossip_tags # chaque gossip peut avoir plusieurs tags, et un tag peut avoir plusieurs gossips
  has_many :comments # chaque gossip peut avoir plusieurs commentaires
  has_many :likes, as: :likeable # chaque gossip peut avoir plusieurs likes
end
