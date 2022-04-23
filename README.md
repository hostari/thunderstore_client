# thunderstore_client

The Thunderstore API Crystal wrapper. Fetch game modification info from your
Crystal code.

Copyright 2022 Hostari Philippines, Inc. See LICENSE for copying information.

📝 Implements: [REST API Reference (V1)](https://valheim.thunderstore.io/api/docs/)
😘 Maintainer(s): @xaviablaza

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     thunderstore_client:
       github: hostari/thunderstore_client
   ```

2. Run `shards install`

## Usage

```crystal
require "thunderstore_client"
```

Build a new Thunderstore client with the `community` that you want to target.

```crystal
client = Thunderstore::Client.new
client.set_community("valheim")
```

Then, your client is ready to be consumed!

## Resource Methods

Most useful available Thunderstore API resources are implemented.

### Package
- **v1_package_list**
  - **List Packages**
    - `Thunderstore::Package.list(client : Thunderstore::Client) : Array(Thunderstore::Package)`

## Contributing

1. Fork it (<https://github.com/hostari/thunderstore_client/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Xavi Ablaza](https://github.com/xaviablaza) - creator and maintainer
