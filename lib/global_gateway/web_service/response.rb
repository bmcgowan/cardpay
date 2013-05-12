module GlobalGateway
  class WebService
    class Response
      
      def initialize(options)
        parse(options)
      end
      
      def parse(response)
        response.each do |key, value|
          self.class.send(:attr_accessor, key)
          instance_variable_set "@#{key}", value
        end
      end
      
      def success?
        if @transaction_approved == 1
          true
        else
          false
        end
      end
      
    end
  end
end