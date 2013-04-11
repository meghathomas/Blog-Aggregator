require 'spec_helper'

describe "requests/show" do
  before(:each) do
    @request = assign(:request, stub_model(Request,
      :requestor_name => "Requestor Name",
      :blog_url => "Blog Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Requestor Name/)
    rendered.should match(/Blog Url/)
  end
end
