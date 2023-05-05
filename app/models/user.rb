class User < ApplicationRecord
  belongs_to :city # chaque user appartient à une ville
  has_many :gossips # chaque user peut avoir plusieurs gossips
  has_many :sent_messages, foreign_key: 'sender_id', class_name: 'PrivateMessage' # chaque user peut avoir plusieurs messages envoyés, et un message envoyé appartient à un expéditeur
  has_many :received_messages, foreign_key: 'recipient_id', class_name: 'PrivateMessage' # chaque user peut avoir plusieurs messages reçus, et un message reçu appartient à un destinataire
  has_many :comments # chaque user peut avoir plusieurs commentaires
  has_many :likes # chaque user peut avoir plusieurs likes
end