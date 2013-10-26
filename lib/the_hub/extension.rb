require_relative 'talk'
require_relative 'helpers'
require_relative 'notes'
module TheHub
  class Extension < Middleman::Extension

    option :days, [], 'The days over which the conference (and related events) runs'

    def initialize(app, options_hash={}, &block)
      super
    end

    def after_configuration
      @app.days.concat options.days

      [TheHub::Talk, TheHub::Notes].each do |manipulator|
        @app.sitemap.register_resource_list_manipulator("the_hub_#{manipulator}", manipulator)
      end
    end

    helpers do

      def days
        @days ||= []
      end

      def planner
        TheHub::Planner.new days, sitemap
      end

      def talk
        if current_resource.is_a? TheHub::Talk
          current_resource
        else
          raise "Not a talk."
        end
      end

      def preview_for_talk path
        sitemap.find_resource_by_path(path + 'summary.html')
      end

      def notes_for_talk path
        sitemap.resources.select {|r| r.path =~ /#{path}notes\/.*html$/}
      end

    end

  end
end
