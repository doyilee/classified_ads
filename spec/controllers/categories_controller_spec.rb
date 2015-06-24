require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do

  let(:category) {Category.create(name: 'cars')}

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
      expect(category.name).to eq('cars')
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "returns http success" do
      post :create, category: {name: 'george'}
      expect(response).to have_http_status(:redirect)
      expect(category.reload.name.last).to eq(george)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit, id: category.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "PUT #update" do
    it "returns update successfull" do
      name = 'vehicle'
      put :update, id: category.id, category: {name: name}
      expect(response).to have_http_status(:redirect)
      expext(category.reload.name).to eq(name)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, id: category.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE #destroy" do
    it "returns deletes the item and redirects" do
      delete :destroy, id: category.id
      expect(response).to have_http_status(:redirect)
    end
  end

end
