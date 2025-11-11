class SiteBuilder < Bridgetown::Builder
  # write builders which subclass SiteBuilder in plugins/builders

  def build
    # Helper to convert text to URL-friendly slug
    helper "slugify" do |text|
      text.to_s.downcase.strip.gsub(/\s+/, '-').gsub(/[^\w-]/, '')
    end

    # Hook to set custom permalinks for section pages
    hook :site, :post_read do |site|
      site.generated_pages.each do |page|
        next unless page.data["pagination"]
        next unless page.data["pagination"]["collection"] == "around_circle_c_content"

        # Get the section name from the pagination data
        resources = page.data["pagination"]["resources"]
        next if resources.nil? || resources.empty?

        section_name = resources.first.data["section"]
        if section_name
          slug = section_name.downcase.strip.gsub(/\s+/, '-').gsub(/[^\w-]/, '')
          page.data["permalink"] = "/around-circle-c/#{slug}/"
        end
      end
    end
  end
end

