class Story < ActiveRecord::Base
  has_many :characters
  has_many :users, :through => :characters
  has_one :conversation, :foreign_key => :story_id

end
