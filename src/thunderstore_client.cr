require "json"
require "http/client"

# Specifies information related to this shard, like the `ThunderstoreClient::VERSION`
class ThunderstoreClient
  VERSION = "1.0.2"
end

require "./thunderstore/**"
