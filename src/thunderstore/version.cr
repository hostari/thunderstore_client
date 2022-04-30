module Thunderstore
  class Package
    class Version
      include JSON::Serializable

      getter name : String
      getter full_name : String
      getter description : String
      getter icon : String
      getter version_number : String
      getter dependencies : Array(String)
      getter download_url : String
      getter downloads : Int32
      # @[JSON::Field(converter: Time::Format::ISO_8601_DATE_TIME)]
      getter date_created : Time
      getter website_url : String
      getter is_active : Bool
      getter uuid4 : String
      getter file_size : Int32
    end
  end
end
