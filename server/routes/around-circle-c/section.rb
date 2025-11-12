# Dynamic route for around-circle-c sections
# Handles routes like: /around-circle-c/Dining, /around-circle-c/Shopping, etc.

class Routes::AroundCircleC::Section < Bridgetown::Rack::Routes
  route do |r|
    # route: GET /around-circle-c/:section
    r.get String do |section|
      # Get the Bridgetown site data
      site = Bridgetown::Current.site

      # Filter the collection by section
      collection = site.collections.around_circle_c_content
      items = collection.resources.select { |item| item.data.section == section }

      # Render the ERB template with the data
      render_with data: {
        section: section,
        items: items,
        site: site
      }
    end
  end
end
