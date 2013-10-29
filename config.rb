###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

with_layout :talk_layout do
  page "/talks/*"
end

with_layout :event_layout do
  page "/events/*"
end


page "/talks/*/summary.html", :layout => false

with_layout :notes_layout do
  page "/talks/*/notes/*"
end

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
activate :livereload

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

require 'lib/the_hub'

activate :the_hub do |h|
  h.days = %w{ Thursday Friday Saturday Sunday}

  h.sessions = {
    :friday => [ '8:00 AM', '10:00 AM', '11:00 AM', '11:10 AM', '11:55 AM', '1:10 PM',
                 '1:55 PM', '2:05 PM', '2:50 PM', '3:00 PM', '3:45 PM', '4:15 PM',
                 '5:00 PM', '5:10 PM', '6:00PM', '7:00 PM', '9:00 PM'
  ],
  :saturday => [ '8:00 AM', '10:00 AM', '10:45 AM', '10:55 AM', '11:40 AM', '12:55 PM',
                 '1:40 PM', '1:50 PM', '2:35 PM', '2:45 PM', '3:30 PM', '4:00 PM',
                 '4:45 PM', '4:55 PM', '7:00 PM', '9:00 PM'
  ]
  }

  h.breakouts = {
    friday: {'8:00 AM' => 'Registration',
             '11:00 AM' => 'Break',
             '11:55 AM' => 'Lunch',
             '1:55 PM' => 'Break',
             '2:50 PM' => 'Break',
             '3:45 PM' => 'Break',
             '5:00 PM' => 'Break'
  }
    }
  h.rooms = ['Salon 1', 'Salon 2', 'Poinciana']
end

helpers do
  def planner_classes(metadata)
    ['planner_item', planner_type(metadata), planner_room(metadata)]
  end

  def planner_type(metadata)
    metadata.type
  end

  def planner_room(metadata)
    metadata.room.downcase if metadata.room
  end
end

set :slim, {
  :format  => :html5,
  :attr_wrapper => '"',
  :indent => '    ',
  :pretty => true,
  :sort_attrs => false
}
set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
