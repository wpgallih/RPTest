class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

<<<<<<< HEAD
  has_many :characters
  has_many :stories, :through => :characters

=======
  has_many :conversations, :foreign_key => :sender_id
  after_create :create_default_conversation


  private

  # for demo purposes

  def create_default_conversation
    Conversation.create(sender_id: 1, recipient_id: self.id) unless self.id == 1
  end
>>>>>>> 8ed8e3a81bfa99cbdaac9226eacdf945b3e15ca4
end
