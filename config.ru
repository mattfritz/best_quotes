#\ -p 3001
# best_quotes/config.ru
#
use Rack::Reloader, 0
use Rack::ContentLength

Rack::Handler::Thin.run(
  proc { |env| [ 200, {'Content-Type' => 'text/html'}, ["Hello, world!"]] }, 
  :Port =>3001
)
