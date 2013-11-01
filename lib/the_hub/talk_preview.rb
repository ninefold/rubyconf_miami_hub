module TheHub
  module TalkPreview
    SELECTOR = /^talks\/[^\/]+\/summary\.html$/

    def link
      data[:link]
    end

    def image
      path.match(/(.*?)\/summary\.html$/)[1] + ".jpg"
    end

    def title
      data[:title]
    end
  end
end
