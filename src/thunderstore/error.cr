module Thunderstore
  # Error class to catch if operations in this library are thrown.
  class Error < Exception
    property message : String?

    def initialize(@message)
    end
  end
end
