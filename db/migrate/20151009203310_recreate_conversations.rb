class RecreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.integer :story_id

      t.timestamps
    end
  end
end
