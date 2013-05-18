module GlobalGateway
  class WebService
    module Transaction
        
      def purchase(data)
        data[:transaction_type] = "00"
        response = post(data)
        begin
          response = Response.new(response)
        rescue
          error_response = Response.new({:transaction_approved => 0, :bank_message => response, :bank_resp_code => "999", :transaction_tag => Time.now.to_i.to_s})
        end
      end
      
      def authorize(data)
        data[:transaction_type] = "01"
        response = post(data)
        begin
          response = Response.new(response)
        rescue
          error_response = Response.new({:transaction_approved => 0, :bank_message => response, :bank_resp_code => "999", :transaction_tag => Time.now.to_i.to_s})
        end
      end
      
      def capture(data)
        data[:transaction_type] = "02"
        response = post(data)
        begin
          response = Response.new(response)
        rescue
          error_response = Response.new({:transaction_approved => 0, :bank_message => response, :bank_resp_code => "999", :transaction_tag => Time.now.to_i.to_s})
        end
      end
      
      def refund(data)
        data[:transaction_type] = "04"
        response = post(data)
        begin
          response = Response.new(response)
        rescue
          error_response = Response.new({:transaction_approved => 0, :bank_message => response, :bank_resp_code => "999", :transaction_tag => Time.now.to_i.to_s})
        end
      end
      
      def verify(data)
        data[:transaction_type] = "05"
        response = post(data)
        begin
          response = Response.new(response)
        rescue
          error_response = Response.new({:transaction_approved => 0, :bank_message => response, :bank_resp_code => "999", :transaction_tag => Time.now.to_i.to_s})
        end
      end
      
      def void(data)
        data[:transaction_type] = "13"
        response = post(data)
        begin
          response = Response.new(response)
        rescue
          error_response = Response.new({:transaction_approved => 0, :bank_message => response, :bank_resp_code => "999", :transaction_tag => Time.now.to_i.to_s})
        end
      end
      
      def tagged_capture(data)
        data[:transaction_type] = "32"
        response = post(data)
        begin
          response = Response.new(response)
        rescue
          error_response = Response.new({:transaction_approved => 0, :bank_message => response, :bank_resp_code => "999", :transaction_tag => Time.now.to_i.to_s})
        end
      end
      
      def tagged_void(data)
        data[:transaction_type] = "33"
        response = post(data)
        begin
          response = Response.new(response)
        rescue
          error_response = Response.new({:transaction_approved => 0, :bank_message => response, :bank_resp_code => "999", :transaction_tag => Time.now.to_i.to_s})
        end
      end
      
      def tagged_refund(data)
        data[:transaction_type] = "34"
        response = post(data)
        begin
          response = Response.new(response)
        rescue
          error_response = Response.new({:transaction_approved => 0, :bank_message => response, :bank_resp_code => "999", :transaction_tag => Time.now.to_i.to_s})
        end
      end
      
    end
  end
end