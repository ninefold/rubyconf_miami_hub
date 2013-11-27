require 'rack'
require 'rack/contrib/try_static'

# This file is used by Rack-based servers to start the application.
use ::Rack::TryStatic, :urls => %w[/], :root => 'public', :try => ['.html','/index.html']

run lambda { |env|
  [
    404,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=300'
    },
    File.open('public/404.html', File::RDONLY)
  ]
}
