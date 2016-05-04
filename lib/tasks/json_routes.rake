require 'rails'

desc 'Like rake routes but output is json'
task json_routes: :environment do
  all_routes = Rails.application.routes.routes
  require 'action_dispatch/routing/inspector'
  inspector = ActionDispatch::Routing::RoutesInspector.new(all_routes)
  puts inspector.format(ActionDispatch::Routing::JsonFormatter.new, ENV['CONTROLLER'])
end
