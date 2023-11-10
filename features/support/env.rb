require 'cucumber'
require 'rspec'
require 'httparty'
require_relative '../pages/address.page.rb'

World do
  AddressPage.new
end

