require "rulers/version"
require "rulers/array"
require "rulers/routing"
require "rulers/util"
require "rulers/dependencies"
require "rulers/controller"
require "rulers/file_model"

module Rulers
  class Application
    def call(env)
      if env['PATH_INFO'] == '/favicon.ico'
        return [404,
          {'Content-Type' => 'text/html'}, []]
      end
      status_code = 200
      if env['PATH_INFO'] == '/'
        status_code = 307
        env['PATH_INFO'] = '/quotes/a_quote'
      end
      klass, act = get_controller_and_action(env)
      controller = klass.new(env)
      text = controller.send(act)
      [status_code, {'Content-Type' => 'text/html'}, [text]]
    end
  end
end
