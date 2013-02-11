module CommentsViewToken
  extend ActiveSupport::Concern

  included do
    class_eval do
      def comments_view_token
        cookies[:comments_view_token] = { :value => SecureRandom.hex, :expires => 7.days.from_now } unless cookies[:comments_view_token]
        cookies[:comments_view_token]
      end
    end
  end
end