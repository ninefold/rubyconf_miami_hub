require_relative 'day'


module TheHub
  class Planner
    def initialize days, sitemap
      @days, @sitemap = days, sitemap
    end

    def days
      @days.map {|day| Day.new day, @sitemap}
    end

    def to_hash
      {days: days}
    end
  end
end
