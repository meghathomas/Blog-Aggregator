require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe RequestsController do

  # This should return the minimal set of attributes required to create a valid
  # Request. As you add validations to Request, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "requestor_name" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RequestsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all requests as @requests" do
      request = Request.create! valid_attributes
      get :index, {}, valid_session
      assigns(:requests).should eq([request])
    end
  end

  describe "GET show" do
    it "assigns the requested request as @request" do
      request = Request.create! valid_attributes
      get :show, {:id => request.to_param}, valid_session
      assigns(:request).should eq(request)
    end
  end

  describe "GET new" do
    it "assigns a new request as @request" do
      get :new, {}, valid_session
      assigns(:request).should be_a_new(Request)
    end
  end

  describe "GET edit" do
    it "assigns the requested request as @request" do
      request = Request.create! valid_attributes
      get :edit, {:id => request.to_param}, valid_session
      assigns(:request).should eq(request)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Request" do
        expect {
          post :create, {:request => valid_attributes}, valid_session
        }.to change(Request, :count).by(1)
      end

      it "assigns a newly created request as @request" do
        post :create, {:request => valid_attributes}, valid_session
        assigns(:request).should be_a(Request)
        assigns(:request).should be_persisted
      end

      it "redirects to the created request" do
        post :create, {:request => valid_attributes}, valid_session
        response.should redirect_to(Request.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved request as @request" do
        # Trigger the behavior that occurs when invalid params are submitted
        Request.any_instance.stub(:save).and_return(false)
        post :create, {:request => { "requestor_name" => "invalid value" }}, valid_session
        assigns(:request).should be_a_new(Request)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Request.any_instance.stub(:save).and_return(false)
        post :create, {:request => { "requestor_name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested request" do
        request = Request.create! valid_attributes
        # Assuming there are no other requests in the database, this
        # specifies that the Request created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Request.any_instance.should_receive(:update_attributes).with({ "requestor_name" => "MyString" })
        put :update, {:id => request.to_param, :request => { "requestor_name" => "MyString" }}, valid_session
      end

      it "assigns the requested request as @request" do
        request = Request.create! valid_attributes
        put :update, {:id => request.to_param, :request => valid_attributes}, valid_session
        assigns(:request).should eq(request)
      end

      it "redirects to the request" do
        request = Request.create! valid_attributes
        put :update, {:id => request.to_param, :request => valid_attributes}, valid_session
        response.should redirect_to(request)
      end
    end

    describe "with invalid params" do
      it "assigns the request as @request" do
        request = Request.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Request.any_instance.stub(:save).and_return(false)
        put :update, {:id => request.to_param, :request => { "requestor_name" => "invalid value" }}, valid_session
        assigns(:request).should eq(request)
      end

      it "re-renders the 'edit' template" do
        request = Request.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Request.any_instance.stub(:save).and_return(false)
        put :update, {:id => request.to_param, :request => { "requestor_name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested request" do
      request = Request.create! valid_attributes
      expect {
        delete :destroy, {:id => request.to_param}, valid_session
      }.to change(Request, :count).by(-1)
    end

    it "redirects to the requests list" do
      request = Request.create! valid_attributes
      delete :destroy, {:id => request.to_param}, valid_session
      response.should redirect_to(requests_url)
    end
  end

end
