# Bright

Wrapper for the GoBright API specification

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     bright:
       github: place-technology/bright
   ```

2. Run `shards install`

## Usage

```crystal
require "bright"

client = Bright::Client.new(base_url: "https://example.gobright.cloud", api_key: "API_KEY")

pp client.locations.get
```

## Contributing

1. Fork it (<https://github.com/place-technology/bright/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Giorgi Kavrelishvili](https://github.com/grkek) - creator and maintainer
