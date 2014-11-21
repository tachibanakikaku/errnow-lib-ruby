require_relative 'errnow/connector'
require_relative 'errnow/instance_methods'
require_relative 'errnow/version'

module Errnow
  include Errnow::InstanceMethods

  def self.included(base)
    base.send(:after_action, :render_in_err)
  end

  def self.configure
    yield @config ||= Configuration.new
  end

  def self.config
    @config
  end

  include ActiveSupport::Configurable
  config_accessor :url
  config_accessor :app_id
  config_accessor :access_key
  config_accessor :secret_access_key
  config_accessor :debug

  configure do |config|
    config.algorithm = 'sha256'
    config.service = 'errnow'
    config.headers = ['host']
    config.region = 'asia/tokyo'
  end
end
