class CreatePrivateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :private_messages do |t|
      t.text :content
      t.references :sender, user: true, null: false, foreign_key: true
      t.references :recipient, user: true, null: false, foreign_key: true

      t.timestamps
    end
  end
end
