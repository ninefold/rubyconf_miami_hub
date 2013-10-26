require_relative 'truncate_html'
module TheHub
  module Notes

    SELECTOR = /^talks\/[^\/]+\/notes\/[^\/]+\.html$/
    def author
      data[:author]
    end

    def summary
      TruncateHTML.truncate_html render(:layout => false), 500
    end

    def talk
      @app.sitemap.find_resource_by_path talk_path
    end

    def talk_title
      talk.title
    end

    def talk_path
      path.split("/notes/").first + '.html'
    end
  end
end
