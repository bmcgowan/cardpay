require_relative 'configuration'
require_relative 'connection'

module Cardpay
  class WebService
    require_relative 'web_service/transaction'
    require_relative 'web_service/response'
    
    include Configuration
    include Connection
    
    attr_accessor :gateway_id, :password, :key_id, :hmac_key, :test
    
    def initialize(options={})
      options.each do |key, value|
        instance_variable_set "@#{key}", value
      end
      
      if @test.nil?
        @test = false
      end
    end
    
    include Cardpay::WebService::Transaction
    include Cardpay::WebService::Response
  end
end