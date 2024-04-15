require 'logger'
require 'dry-configurable'

module ZeroSSL
  class Setup
    extend Dry::Configurable

    setting :api_uri, default: 'https://api.zerossl.com'
    setting :access_key, default: nil
    setting :logger, default: Logger.new(STDOUT)
    setting :user_agent, default: "ZeroSSL Ruby Client / #{ZeroSSL::VERSION}"
  end
end
