# Factory::Apps::Google::Maps

Mapping functionality for Factory Sites.

## Installation

Add this line to your application's Gemfile:

    gem 'factory-apps-google-maps', git: "git@github.com:factorymedia/factory-apps-google-maps"

And then execute:

    $ bundle

## Usage

### MapsHelper

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

# Mapselect.js

Provides select box and draggable map view for choosing Lat/Lon positions for models

Include the Coffeescript file in your application.js
```
//= require mapselect
```

Include the CSS in your application.css
```
*= require mapselect
```

The Google Map will initialize on your page if there is an element called `#gmap`.  
In addition you should implement a hidden latitude and longitude, and location_name text field.  

The example below shows the optimal layout.
```haml
= f.input :location_name, input_html: { placeholder: 'Enter an address or location' }, label: "Location"

.control-group#location-bounds
  .controls
    #marker-box
      = image_tag 'marker-24.png', id: 'location-draggable'
      %span <- Enter and address or location, then drag this icon onto the map
    #gmap

= f.input :lat, as: :hidden, label: "Latitude", input_html: {min: -180, max: 180}
= f.input :lon, as: :hidden, label: "Longitude", input_html: {min: -180, max: 180}
```





## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
