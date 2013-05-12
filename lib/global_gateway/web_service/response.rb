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
        
        self.class.send(:attr_accessor, :success)
        
        if @transaction_approved == 1
          @success = true
        else
          @success = false
        end
      end
      
    end
  end
end