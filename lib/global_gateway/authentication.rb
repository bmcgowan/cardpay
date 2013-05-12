module GlobalGateway
  module Authentication
    
    attr_accessor :content_digest, :gge4_time, :auth_hash
    
    def authenticate(txn_data)
      @content_digest = Digest::SHA1.hexdigest(txn_data)
      @gge4_time = Time.now.utc.iso8601
      hmac_data = "POST" + "\n" + "application/json" + "\n" + @content_digest + "\n" + @gge4_time + "\n" + "/transaction/v12"
      @auth_hash = Base64.encode64(OpenSSL::HMAC.digest('sha1', @hmac_key, hmac_data)).strip
    end
    
  end
end