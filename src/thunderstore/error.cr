module Thunderstore
  class Error < Exception
    property message : String?

    def initialize(@message)
    end
  end
end
