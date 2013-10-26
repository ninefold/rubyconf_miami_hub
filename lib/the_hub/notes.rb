require_relative 'truncate_html'
module TheHub
  module Notes
    def author
      data[:author]
    end

    def summary
      TruncateHTML.truncate_html render(:layout => false), 500
    end

    def self.manipulate_resource_list(resources)
      resources.each do |r|
        if r.path =~ /^talks\/[^\/]+\/notes\/[^\/]+\.html$/
          r.extend TheHub::Notes
        end
      end
    end
  end
end
