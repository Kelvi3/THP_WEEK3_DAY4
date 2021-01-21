require_relative '../lib/test.rb'



describe "make_hash method, it should return a hash with both arrays" do
  it "Wrong type" do
    expect(checkout("https://www.google.com/")).to be_kind_of(Nokogiri::HTML::Document)
  end
end
