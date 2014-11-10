require "errnow/version"

module Errnow
  def self.included(klass)
    klass.send(:after_action, :render_in_err)
  end

  def render_in_err
    return unless status.is_a?(Fixnum)
    # TODO: connect server and get html
    response.body = File.open("#{Rails.root}/public/err.html", 'rb')
  end
end
