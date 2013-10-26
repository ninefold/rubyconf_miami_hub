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
  end
end
