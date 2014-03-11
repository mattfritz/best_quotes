require './config/application'

use Rack::Reloader, 0
use Rack::ContentLength

Rack::Handler::WEBrick.run(
  BestQuotes::Application.new,
  :Port =>3001
)
