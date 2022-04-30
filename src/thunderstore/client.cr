module Thunderstore
  class Client
    property community = ""

    def initialize(@community : String = "")
    end

    # Returns the base url for which this client will make API requests to
    def base_url : URI
      return URI.parse("https://thunderstore.io") if community.empty?

      URI.parse("https://#{community}.thunderstore.io")
    end

    def get(path : String)
      HTTP::Client.new(base_url).get(path)
    end
  end
end
