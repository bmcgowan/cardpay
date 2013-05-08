require 'net/http'
require 'net/https'
require 'rubygems'
require 'active_support/core_ext'
require 'json'
require 'base64'
require 'date'
require 'time'
require 'cgi'

require_relative "cardpay/version"
require_relative "cardpay/web_service"

module Cardpay
  
  class CardpayError < StandardError; end
  
  extend Configuration
  class << self
    
    def new(options={})
      Cardpay::WebService.new(options)
    end
    
    def method_missing(method, *args, &block)
      return super unless new.respond_to?(method)
      new.send(method, *args, &block)
    end

    def respond_to?(method, include_private = false)
      new.respond_to?(method, include_private) || super(method, include_private)
    end
    
  end
  
end
