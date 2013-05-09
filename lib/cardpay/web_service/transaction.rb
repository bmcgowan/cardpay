module Cardpay
  class WebService
    module Transaction
        
      def purchase(data)
        data[:transaction_type] = "00"
        response = post(data)
        begin
          response = Response.new(response)
        rescue
          response
        end
      end
      
      def authorize(data)
        data[:transaction_type] = "01"
        response = post(data)
        begin
          response = Response.new(response)
        rescue
          response
        end
      end
      
      def capture(data)
        data[:transaction_type] = "02"
        response = post(data)
        begin
          response = Response.new(response)
        rescue
          response
        end
      end
      
      def refund(data)
        data[:transaction_type] = "04"
        response = post(data)
        begin
          response = Response.new(response)
        rescue
          response
        end
      end
      
      def void(data)
        data[:transaction_type] = "13"
        response = post(data)
        begin
          response = Response.new(response)
        rescue
          response
        end
      end
      
      def tagged_capture(data)
        data[:transaction_type] = "32"
        response = post(data)
        begin
          response = Response.new(response)
        rescue
          response
        end
      end
      
      def tagged_void(data)
        data[:transaction_type] = "33"
        response = post(data)
        begin
          response = Response.new(response)
        rescue
          response
        end
      end
      
      def tagged_refund(data)
        data[:transaction_type] = "34"
        response = post(data)
        begin
          response = Response.new(response)
        rescue
          response
        end
      end
      
    end
  end
end