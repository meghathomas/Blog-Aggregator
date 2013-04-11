require 'spec_helper'

describe "requests/index" do
  before(:each) do
    assign(:requests, [
      stub_model(Request,
        :requestor_name => "Requestor Name",
        :blog_url => "Blog Url"
      ),
      stub_model(Request,
        :requestor_name => "Requestor Name",
        :blog_url => "Blog Url"
      )
    ])
  end

  it "renders a list of requests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Requestor Name".to_s, :count => 2
    assert_select "tr>td", :text => "Blog Url".to_s, :count => 2
  end
end
