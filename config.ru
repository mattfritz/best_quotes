require './config/application'

use Rack::Reloader, 0
use Rack::ContentLength

Rack::Handler::Thin.run(
  BestQuotes::Application.new,
  :Port =>3001
)
