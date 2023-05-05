class GossipTag < ApplicationRecord
  belongs_to :gossip # chaque gossip_tag appartient à un gossip
  belongs_to :tag # chaque gossip_tag appartient à un tag
end