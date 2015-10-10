class ConversationsController < ApplicationController
  before_filter :authenticate_user!

  layout false

  def create
    if Conversation.between(params[:story_id]).present?
      @conversation = Conversation.between(params[:story_id]).first
    else
      @conversation = Conversation.create!(conversation_params)
    end

    render json: { conversation_id: @conversation.id }

  end

  def show
    @conversation = Conversation.find(params[:id])
    @messages = @conversation.messages
    @message = Message.new
  end

  private
  def conversation_params
    params.permit(:story_id)
  end

end
