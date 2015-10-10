class Message < ActiveRecord::Base
  belongs_to :conversation
  belongs_to :story

  validates_presence_of :body, :conversation_id, :story_id
end
