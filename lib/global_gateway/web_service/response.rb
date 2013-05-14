module GlobalGateway
  class WebService
    class Response
      
      attr_accessor :transaction_approved, :gross_amount_currency_id, :virtual_card, :bank_message, :xid, :authorization, :merchant_country, :credit_card_type, :payer_id, :cvv2, :error_number,
        :surcharge_amount, :fraud_suspected, :tax1_amount, :user_name, :amount, :track2, :correlation_id, :avs, :cvd_presence_ind, :bank_resp_code, :merchant_url, :reference_3, :transaction_error,
        :partial_redemption, :card_cost, :transarmor_token, :gateway_id, :cardholder_name, :zip_code, :merchant_address, :track1, :ctr, :exact_message, :secure_auth_result, :transaction_type,
        :message, :cc_verification_str2, :ecommerce_flag, :cavv, :previous_balance, :reference_no, :merchant_province, :merchant_name, :cc_expiry, :logon_message, :tax2_number, :transaction_tag,
        :exact_resp_code, :secure_auth_required, :cc_verification_str1, :merchant_postal, :client_email, :current_balance, :success, :cavv_response, :error_description, :tax1_number, 
        :authorization_num, :timestamp, :bank_resp_code_2, :customer_ref, :cc_number, :cavv_algorithm, :password, :client_ip, :ean, :merchant_city, :sequence_no, :currency_code, :amount_requested,
        :language, :pan, :retrieval_ref_no, :tax2_amount
      
      def initialize(options)
        parse(options)
      end
      
      def parse(response)
        response.each do |key, value|
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