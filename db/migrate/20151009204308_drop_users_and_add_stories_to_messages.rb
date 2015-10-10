class DropUsersAndAddStoriesToMessages < ActiveRecord::Migration
  def change
    change_table :messages do |t|
      t.remove :user
      t.references :story, index: true
    end
  end
end
