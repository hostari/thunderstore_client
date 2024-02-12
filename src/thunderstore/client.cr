module Thunderstore
  class Client
    property community = ""

    def initialize(@community : String = "")
    end

    # Sets the `@community` instance variable.
    # You can find a list of communities by going to https://thunderstore.io
    # and looking at the the subdomains that each mod community is listed under.
    def set_community(community : String)
      @community = community
    end

    # Returns the base url for which this client will make API requests to.
    def base_url : URI
      return URI.parse("https://thunderstore.io") if community.empty?

      URI.parse("https://#{community}.thunderstore.io")
    end

    # Initializes an `HTTP::Client` for the configured `base_url`, and executes a GET request on the specified `path`.
    # The response will have its body as a String, accessed via `HTTP::Client::Response#body`.
    def get(path : String) : HTTP::Client::Response
      HTTP::Client.new(base_url).get(path)
    end
  end
end
