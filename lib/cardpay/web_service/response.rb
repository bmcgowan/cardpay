module Cardpay
  class WebService
    module Response
      
      def response(res={})
        res.each do |key, value|
          instance_variable_set "@#{key}", value
        end
      end
      
    end
  end
end