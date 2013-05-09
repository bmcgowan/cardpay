module Cardpay
  class WebService
    module Transaction
        
      def purchase(data)
        data[:transaction_type] = "00"
        begin
          response = post(data)
        rescue
          response = Response.new({:gateway_id => @gateway_id, :error => "Error connecting to Web Service"})
        end
        response = Response.new(response)
      end
      
      def authorize
        
      end
      
      def capture
        
      end
      
      def refund
        
      end
      
      def void
        
      end
      
      def tagged_capture
        
      end
      
      def tagged_void
        
      end
      
      def tagged_refund
        
      end
      
    end
  end
end