module Cardpay
  class WebService
    class Response
      
      attr_accessor :attributes
      
      def initialize(options)
        @attributes = {}
        parse(options)
      end
      
      def parse(response)
        response.each do |key, value|
          attributes[key] = value
        end
      end
      
    end
  end
end