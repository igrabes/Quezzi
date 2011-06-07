class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.string   "username"
      t.string   "message"
      t.integer  "chat_id"
      t.timestamps
    end
  end

  def self.down
    drop_table :messages
  end
end
