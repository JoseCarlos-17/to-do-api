# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'PUT#cancel_account' do
    let(:user) { create(:user) }
    let(:user_attributes) { attributes_for(:user, first_name: 'Bruce',
        last_name: 'Campbell') }

    context 'when the user not have any task' do
      before do
        user
        # put "users/#{user.id}/cancel_account", params: { user_attributes }
      end

      # it 'must return a user' do
      # end
    end
  end

  describe 'POST#create' do
    context 'when the user is registered' do
      let(:profile_photo) { fixture_file_upload('app/assets/cover.png', 'image/png') }
      let(:user_attributes) { attributes_for(:user, first_name: 'Bruce',
        last_name: 'Campbell', profile_image: profile_photo) }

      before do
        post "/users", params: { user: user_attributes }
      end

      it 'must return 200 status code' do
        expect(response).to have_http_status(:created)
      end

      it 'must return user attributes' do
        expect(json_body).to include(:first_name, :status, :last_name,
                                     :profile_image, :email)
      end
    end
  end

  describe 'PUT#update' do
    context 'when the user is updated' do
      let!(:user) { create(:user) }
      let(:user_attributes) { attributes_for(:user, first_name: 'Bruce',
        last_name: 'Campbell') }

      before do
        put "/users/#{user.id}", params: { user: user_attributes }
      end

      it 'must return 204 status code' do
        expect(response).to have_http_status(:no_content)
      end
    end
  end

  describe 'GET#show' do
    let(:user) { create(:user) }

    before do
      get "/users/#{user.id}"
    end

    it 'must return 204 status code' do
      expect(response).to have_http_status(:ok)
    end

    it 'must return user attributes' do
      expect(json_body).to include(:first_name, :status, :last_name,
                                   :profile_image, :email)
    end
  end
end
