require 'spec_helper'

describe "requests/edit" do
  before(:each) do
    @request = assign(:request, stub_model(Request,
      :requestor_name => "MyString",
      :blog_url => "MyString"
    ))
  end

  it "renders the edit request form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", request_path(@request), "post" do
      assert_select "input#request_requestor_name[name=?]", "request[requestor_name]"
      assert_select "input#request_blog_url[name=?]", "request[blog_url]"
    end
  end
end
