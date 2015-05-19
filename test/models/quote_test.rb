require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
 	test "unique_tag" do 
 		quote = FactoryGirl.create(:quote, :author => 'Seng Ngo')
 		expect = "SN#" + quote.id.to_s
 		actual = quote.unique_tag
 		assert_equal expect, actual
 	end
end
