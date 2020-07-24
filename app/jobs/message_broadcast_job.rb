class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
    Actioncable.server.broadcast "user_message_channel", message: message
  end
end
