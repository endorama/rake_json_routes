
require 'rails'

module RakeJsonRoutes
  class Railtie < Rails::Railtie
    rake_tasks do
      Dir[File.join(File.dirname(__FILE__), 'tasks/*.rake')].each { |f| load f }
      load File.join(File.dirname(__FILE__), '../tasks/json_routes.rake')
    end
  end
end
