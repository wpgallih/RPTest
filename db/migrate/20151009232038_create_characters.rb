class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.references :story
      t.references :user
      t.timestamps
    end
  end
end
