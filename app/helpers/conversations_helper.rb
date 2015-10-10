module ConversationsHelper
  def conversation_interlocutor(conversation)
    conversation.sender == conversation.sender ? conversation.sender : conversation.recipient
  end
end
