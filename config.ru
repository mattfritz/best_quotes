require './config/application'

use Rack::Reloader, 0
use Rack::ContentLength

Rack::Handler::Thin.run(
#  proc { |env| [ 200, {'Content-Type' => 'text/html'}, ["Hello, world!"]] }, 
  BestQuotes::Application.new,
  :Port =>3001
)
