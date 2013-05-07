module Cardpay
  
  class Transaction
    
    attr_accessor :gateway_id, :password, :transaction_type, :amount, :cc_number, :transaction_tag, :track1, :track2, :authorization_num, :cc_expiry, :cardholder_name, :cc_verification_str1,
      :cc_verification_str2, :cvd_presence_ind, :reference_no, :zip_code, :tax1_amount, :tax1_number, :tax2_amount, :tax2_number, :customer_ref, :reference_3, :language, :client_ip, 
      :client_email, :currency_code, :partial_redemption, :cavv, :xid, :transarmor_token, :credit_card_type, :fraud_suspected
      
    def initialize(options={})
      
    end
    
    def level3
      
    end
    
    def line_items
      Array.new
    end
    
  end
  
end