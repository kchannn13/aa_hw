require 'rails_helper'

RSpec.describe "Users", type: :request do

  describe "GET /users/new (#new)" do
    it "renders the new template" do
      get new_user_url
      expect(response.body).to include("Sign Up!")
    end
  end

  describe "POST /users (#create)" do
    context "with invalid params" do
      it "validates the presence of the user's email" do
        # Your code here
        expect(response.email).not_to be_valid
      end

      it "validates that the password is at least 6 characters long" do
        # Your code here
        expect(response.password).is_at_least(6)
      end
    end

    context "with valid params" do
      it "redirects user to root page on success" do
        # Your code here
        expect(response).to redirect_to(link_url(Link.last))
      end
    end
  end
end
