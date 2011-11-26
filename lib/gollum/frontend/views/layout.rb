require 'cgi'

module Precious
  module Views
    class Layout < Mustache
      include Rack::Utils
      alias_method :h, :escape_html

      attr_reader :name

      def escaped_name
        CGI.escape(@name)
      end

      def title
        "Home"
      end

      def author_email
        @author && @author[:email]
      end

      def author_name
        @author && @author[:name]
      end
    end
  end
end
