module MapsHelper

  def google_maps_image(lat, lon, opts={})
    args = {
      zoom: opts[:zoom] || 15,
      size: [(opts[:width] || "100%"), (opts[:height] || 300)].join('x'),
      center: opts[:center] ? "#{opts[:center][:lat]},#{opts[:center][:lon]}" : "#{lat},#{lon}",
      markers: "#{lat},#{lon}",
      sensor: 'false',
      maptype: opts[:type] || 'terrain',
    }

    uri = Addressable::URI.parse("//maps.googleapis.com/maps/api/staticmap")
    uri.query_values = args

    unless opts[:link] == false
      link_to image_tag(uri.to_s, class: (opts[:class] || "map")), google_maps_url(lat,lon), class: "is-tracked", data: {popup: true, category: "Click:Map"}
    else
      image_tag(uri.to_s, class: opts[:class] || 'map')
    end
  end

  def google_maps_url(lat, lon)
    "https://maps.google.com/?q=#{lat},#{lon}"
  end

end
