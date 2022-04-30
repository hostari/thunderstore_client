module Thunderstore
  class Package
    def self.list(client : Client)
      response = client.get("/api/v1/package/")
      if response.status_code == 200
        Array(Package).from_json(response.body)
      else
        raise Error.new(response.status_code.to_s)
      end
    end
  end
end
