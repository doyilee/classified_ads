require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  
  # let(:item) {Item.create(name: 'puppet', price: '21.99', description: 'vintage', category_id: 1)}
  let(:item){create(:item)}

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

  describe "PUT #update" do
    it "updates successfully" do
      put :update, id: item.id, item: {name: 'lunchbox'}
      new_item_name = 'lunchbox'
      updated_item = item.reload
      expect(response).to have_http_status(:redirect)
      expect(updated_item.name).to eq(new_item_name)
    end

    it 'does not update' do
      put :update, id: item.id, item:{name: nil}
      expect(flash[:error]).to be_present
      expect(response).to render_template(:edit)
    end
  end

  describe "POST #create" do
    it 'creates a new item successfully' do
    post :create, item: {name: 'lamp', price: '15.00', description: 'silver and glass', category_id: :Vehicle}
    expect(response).to have_http_status(:redirect)
    end
  end

end



