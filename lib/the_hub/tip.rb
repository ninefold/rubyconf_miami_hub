module TheHub
  module Tip

    SELECTOR = /^miami-tips\/[^\/]+\.html$/
    def title
      data[:title]
    end

    def image
      data[:image] || 'http://placekitten.com/g/200/200'
    end

    def contributor
      data[:contributor] || "Someone Awesome"
    end
  end
end
