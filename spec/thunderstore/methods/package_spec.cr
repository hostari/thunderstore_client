require "../../spec_helper"

describe Thunderstore::Package do
  context "valheim" do
    describe ".list_packages" do
      it "retrieves all packages" do
        WebMock.stub(:get, "https://thunderstore.io/api/v1/package/")
          .to_return(status: 200, body: File.read("spec/support/All_Packages-1650682645115.json"), headers: {"Content-Type" => "application/json"})

        client = Thunderstore::Client.new("valheim")
        packages = Thunderstore::Package.list(client)

        packages.should be_a(Array(Thunderstore::Package))
      end
    end
  end
end
