require_relative '../lib/test.rb'



describe  "get_a_page method" do
  it "Should fetch a page and none return nil" do
    expect(scrapper).not_to be_nil
  end
end
