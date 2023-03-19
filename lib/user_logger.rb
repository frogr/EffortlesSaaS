# lib/user_logger.rb
require 'singleton'

class UserLogger < Logger
  include Singleton

  def initialize
    super(Rails.root.join('log', 'user.log'))
    self.formatter = proc do |severity, datetime, _progname, msg|
      "#{datetime} [#{severity}] #{msg}\n"
    end
  end

  def log_user_info(user)
    message = "User email: #{user.email}, ID: #{user.id}"
    info(message)
    Rails.logger.info(message)
  end
end