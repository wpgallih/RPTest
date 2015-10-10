class Message < ActiveRecord::Base
  belongs_to :conversation
<<<<<<< HEAD
  belongs_to :story

  validates_presence_of :body, :conversation_id, :story_id
=======
  belongs_to :user

  validates_presence_of :body, :conversation_id, :user_id
>>>>>>> 8ed8e3a81bfa99cbdaac9226eacdf945b3e15ca4
end
