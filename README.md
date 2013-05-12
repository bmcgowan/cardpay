# Global Gateway e4

First Data Global Gateway e4 Ruby client library for credit card processing.

## Installation

Add this line to your application's Gemfile:

    gem 'global_gateway'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install global_gateway

## Usage

    gateway = GlobalGateway.new(gateway_id, password, key_id, hmac_key, test)
    
    response = gateway.purchase(
      :amount => "100.00",
      :cc_number => "4111111111111111",
      :cc_expiry => "0114",
      :cardholder_name => "John Doe"
    )
    
    if response.success?
      puts "Transaction Approved. Authorization Code: #{response.authorization_num}"
    else
      puts "Transaction Declined"
    end

Global Gateway transaction methods include: purchase, authorize, capture, refund, void, tagged_capture, tagged_void, tagged_refund

For a complete list of transaction and response attributes, see the API documentation at: 
https://firstdata.zendesk.com/entries/407571-First-Data-Global-Gateway-e4-Web-Service-API-Reference-Guide

If TransArmor is enabled on your account, the response object will include a transarmor_token attribute that can be stored and used for subsequent transactions.

To set up an account, go to: http://www.freeglobalgateway.com/landing/global

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
