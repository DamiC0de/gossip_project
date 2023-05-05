class Like < ApplicationRecord
  belongs_to :user # chaque like appartient à un user
  belongs_to :likeable, polymorphic: true # chaque like peut appartenir à un gossip ou à un commentaire
end