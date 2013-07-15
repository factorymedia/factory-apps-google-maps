# Factory::Apps::Google::Maps

Mapping functionality for Factory Sites.

## Installation

Add this line to your application's Gemfile:

    gem 'factory-apps-google-maps', git: "git@github.com:factorymedia/factory-apps-google-maps"

And then execute:

    $ bundle

## Usage

Provides helpers for generating Google Maps images in views

```ruby
google_maps_image(latitude, longitude, options={})
```

Options:
```ruby
{
  width: # Integer - Pixels
  height: # Integer - Pixels
  center: # Boolean
  zoom: # Integer - Zoom Level
  class: # String - CSS Class(es)
  maptype: # String - hybrid/roadmap/satellite/terrain
  link: # Boolean - Auto link to Google Maps page
}
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
