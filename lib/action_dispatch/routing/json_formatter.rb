module ActionDispatch
  module Routing
    require 'json'

    # ActionDispatch::Routing JSON formatter
    #
    # This class can be used as formatter for ActionDispatch::Routing::RoutesInspector#format(),
    # and produce a valid JSON with the routing data for the Rails application.
    class JsonFormatter
      def initialize
        @buffer = []
      end

      def result
        @buffer.join("\n")
      end

      def section_title(title)
        @buffer << ""
      end

      def section(routes)
        @buffer << JSON.generate({ routes: routes })
      end

      def header(routes)
        @buffer << ''
      end

      def no_routes
        @buffer << JSON.generate({ routes: [] })
      end
    end
  end
end