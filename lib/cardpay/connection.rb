module Cardpay
  module Connection
    
    LIVE_URL = "https://api.globalgatewaye4.firstdata.com/transaction/v12"
    TEST_URL = "https://api.demo.globalgatewaye4.firstdata.com/transaction/v12"
    
    def post(txn_data)
      txn_data[:gateway_id] = @gateway_id
      txn_data[:password] = @password
      txn_data = JSON.generate(txn_data)
      authenticate(txn_data)
      
      #content_digest = Digest::SHA1.hexdigest(txn_data)
      #gge4_time = Time.now.utc.iso8601
      #hmac_data = "POST" + "\n" + "application/json" + "\n" + content_digest + "\n" + gge4_time + "\n" + "/transaction/v12"
      
      uri = @test ? TEST_URL : LIVE_URL
      uri = URI.parse(uri)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.ssl_timeout = 2
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      request = Net::HTTP::Post.new(uri.request_uri)
      request.set_content_type 'application/json'
      request.add_field 'Accept', 'application/json'
      request.add_field 'X-GGe4-Content-SHA1', @content_digest #content_digest
      request.add_field 'X-GGe4-Date', gge4_time
      request.add_field 'Authorization', 'GGE4_API ' + @key_id + ':' + @auth_hash #Base64.encode64(OpenSSL::HMAC.digest('sha1', @hmac_key, hmac_data)).strip
      response = http.request(request, txn_data)
      begin
        response = JSON.parse(response.body)
      rescue JSON::ParserError
        response.body
      end
    end
    
  end
end