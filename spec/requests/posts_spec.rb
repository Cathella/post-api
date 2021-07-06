require 'rails_helper'

describe 'Posts API', type: :request do
  describe 'GET /posts' do
    it 'returns all the posts' do
      FactoryBot.create(:post, title: 'Hello World', body: "This the body of the post!")

      get '/api/v1/posts'

      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST /posts' do
    it 'creates a new post' do
      expect {
        post '/api/v1/posts', params: { post: { title: "Hello World", body: "This the body of the post!"} }
      }.to change { Post.count }.by(1)

      expect(response).to have_http_status(:created)
    end
  end

  describe 'DELETE /posts/:id' do
    it 'deletes a post' do
      post = FactoryBot.create(:post, title: 'Hello World', body: "This the body of the post!")

      delete "/api/v1/posts/#{post.id}"

      expect(response).to have_http_status(:no_content)
    end
  end
end