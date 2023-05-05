class Comment < ApplicationRecord
  belongs_to :user # chaque commentaire appartient à un user
  belongs_to :gossip # chaque commentaire appartient à un gossip
  has_many :likes, as: :likeable # chaque commentaire peut avoir plusieurs likes
end