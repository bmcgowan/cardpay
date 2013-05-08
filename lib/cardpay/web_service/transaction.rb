module Cardpay
  class WebService
    module Transaction
      
      ENDPOINT = "https://api.globalgatewaye4.firstdata.com/transaction/v12"
      
      attr_accessor :transaction_type, :amount, :cc_number, :transaction_tag, :track1, :track2, :authorization_num, :cc_expiry, :cardholder_name, :cc_verification_str1,
        :cc_verification_str2, :cvd_presence_ind, :reference_no, :zip_code, :tax1_amount, :tax1_number, :tax2_amount, :tax2_number, :customer_ref, :reference_3, :language, :client_ip, 
        :client_email, :currency_code, :partial_redemption, :cavv, :xid, :transarmor_token, :credit_card_type, :fraud_suspected
        
      def initialize(options={})
        
      end
      
      def purchase
        
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
      
      
      def txn_data
        {
          :gateway_id => @gateway_id,
          :password => @password,
          :amount => @amount,
          :cc_number => @cc_number,
          :transaction_tag => @transaction_tag,
          :track1 => @track1,
          :track2 => @track2,
          :authorization_num => @authorization_num,
          :cc_expiry => @cc_expiry,
          :cardholder_name => @cardholder_name,
          :cc_verification_str1 => @cc_verification_str1,
          :cc_verification_str2 => @cc_verification_str2,
          :cvd_presence_ind => @cvd_presence_ind,
          :reference_no => @reference_no,
          :zip_code => @zip_code,
          :tax1_amount => @tax1_amount,
          :tax1_number => @tax1_number,
          :tax2_amount => @tax2_amount,
          :tax2_number => @tax2_number,
          :customer_ref => @customer_ref,
          :reference_3 => @reference_3,
          :language => @language,
          :client_ip => @client_ip, 
          :client_email => @client_email,
          :currency_code => @currency_code,
          :partial_redemption => @partial_redemption,
          :cavv => @cavv,
          :xid => @xid,
          :transarmor_token => @transarmor_token,
          :credit_card_type => @credit_card_type,
          :fraud_suspected => @fraud_suspected,
          :level3 => level3_data
        }
      end
      
      def level3_data
        {
          :tax_amount => @tax_amount,
          :tax_rate => @tax_rate,
          :alt_tax_amount => @alt_tax_amount,
          :alt_tax_id => @alt_tax_id,
          :discount_amount => @discount_amount,
          :duty_amount => @duty_amount,
          :freight_amount => @freight_amount,
          :ship_from_zip => @ship_from_zip,
          :ship_to_address => 
          {
            :address_1 => @address_1,
            :city => @city,
            :state => @state,
            :zip => @zip,
            :country => @country,
            :customer_number => @customer_number,
            :email => @email,
            :name => @name,
            :phone => @phone
          },
          :line_items => line_items_data
        }
      end
      
      def line_items_data
        Array.new
      end
      
    end
  end
end