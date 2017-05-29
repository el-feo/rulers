require "rulers/array"
require "rulers/version"

module Rulers
  class Application
    def call(env)
      'echo debug > debug.txt'
      [200, {'Content-Type' => 'text/html'},
        ["Hello from Ruby on Rulers, with debugging!"]]
    end
  end
end
