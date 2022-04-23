module Thunderstore
  class Package
    include JSON::Serializable

    getter name : String
    getter full_name : String
    getter owner : String
    getter package_url : String
    # @[JSON::Field(converter: Time::Format.new)]
    getter date_created : Time
    # @[JSON::Field(converter: Time::Format::ISO_8601_DATE_TIME)]
    getter date_updated : Time
    getter uuid4 : String
    getter rating_score : Int32
    getter is_pinned : Bool
    getter is_deprecated : Bool
    getter has_nsfw_content : Bool
    getter categories : Array(String)
    getter versions : Array(Version)
  end
end
