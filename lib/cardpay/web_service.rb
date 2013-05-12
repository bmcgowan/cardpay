require_relative 'connection'
require_relative 'authentication'

module Cardpay
  class WebService
    require_relative 'web_service/transaction'
    require_relative 'web_service/response'
    
    include Connection
    include Authentication
    
    attr_accessor :gateway_id, :password, :key_id, :hmac_key, :test
    
    def initialize(options={})
      options.each do |key, value|
        instance_variable_set "@#{key}", value
      end
      
      if @test.nil?
        @test = false
      end
      
      validate
    end
    
    def validate
      raise ArgumentError, 'Missing Gateway ID' if @gateway_id.nil?
      raise ArgumentError, 'Missing Password' if @password.nil?
      raise ArgumentError, 'Missing Key ID' if @key_id.nil?
      raise ArgumentError, 'Missing HMAC Key' if @hmac_key.nil?
      raise ArgumentError, 'Test must be a boolean' if @test != true && @test != false
    end
    
    include Cardpay::WebService::Transaction
  end
end