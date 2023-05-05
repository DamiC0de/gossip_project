class PrivateMessage < ApplicationRecord
  belongs_to :sender, class_name: 'User' # chaque message privé appartient à un expéditeur
  belongs_to :recipient, class_name: 'User' # chaque message privé appartient à un destinataire
end