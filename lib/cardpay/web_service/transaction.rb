module Cardpay
  class WebService
    module Transaction
        
      def purchase(data)
        data[:transaction_type] = "00"
        res = response(post(data))
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