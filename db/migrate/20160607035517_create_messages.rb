class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.integer :receiver_id
      t.integer :sender_id
      t.string :subject
      t.text :message
      t.boolean :read

      t.timestamps
    end
    add_index :messages, :receiver_id
    add_index :messages, :sender_id
  end
end
