module TheHub
  module Event

    SELECTOR = /^events\/[^\/]+\.html$/

    def title
      data[:title]
    end

    def pre?
      data[:when] == 'pre'
    end

    def post?
      data[:when] == 'post'
    end

    def location
      data[:location]
    end

    def organizer
      data[:organizer] || "Someone Awesome"
    end

    def sold_out?
      data[:sold_out]
    end
  end
end
