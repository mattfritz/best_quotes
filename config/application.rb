require "rulers"
require "pry-debugger"

$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")

module BestQuotes
  class Application < Rulers::Application
  end
end
