module DateHelpers
  def self.standardize_date(date)
    case date
    when String
      begin
        Date.parse(date)
      rescue ArgumentError
        nil
      end
    when Date, Time, DateTime
      date.to_date
    else
      nil
    end
  end
end
