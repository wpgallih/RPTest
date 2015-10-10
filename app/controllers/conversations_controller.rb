class ConversationsController < ApplicationController
  before_filter :authenticate_user!

  layout false

  def create
<<<<<<< HEAD
    if Conversation.between(params[:story_id]).present?
      @conversation = Conversation.between(params[:story_id]).first
=======
    if Conversation.between(params[:sender_id],params[:recipient_id]).present?
      @conversation = Conversation.between(params[:sender_id],params[:recipient_id]).first
>>>>>>> 8ed8e3a81bfa99cbdaac9226eacdf945b3e15ca4
    else
      @conversation = Conversation.create!(conversation_params)
    end

    render json: { conversation_id: @conversation.id }

  end

  def show
    @conversation = Conversation.find(params[:id])
<<<<<<< HEAD
=======
    @reciever = interlocutor(@conversation)
>>>>>>> 8ed8e3a81bfa99cbdaac9226eacdf945b3e15ca4
    @messages = @conversation.messages
    @message = Message.new
  end

<<<<<<< HEAD
  private
  def conversation_params
    params.permit(:story_id)
=======
  def interlocutor(conversation)
    current_user == conversation.recipient ? conversation.sender : conversation.recipient
  end

  private
  def conversation_params
    params.permit(:sender_id, :recipient_id)
>>>>>>> 8ed8e3a81bfa99cbdaac9226eacdf945b3e15ca4
  end

end
