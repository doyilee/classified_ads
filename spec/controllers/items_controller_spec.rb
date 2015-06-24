require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

let(:category) {Category.create(:name, 'jobs')}

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit, id: item.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, id: item.id
      expect(response).to have_http_status(:success)
    end
  end

end
