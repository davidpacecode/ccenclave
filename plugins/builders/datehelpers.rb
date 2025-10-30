require_relative '../../lib/date_helpers'

class Builders::Datehelpers < SiteBuilder
  def build
    helper :standardize_date do |dt|
      DateHelpers.standardize_date(dt)
    end
    helper :display_date do |dt|
      DateHelpers.standardize_date(dt).strftime('%A %e %B %Y')
    end
  end
end
