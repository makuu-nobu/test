class PostsController < ApplicationController
    def index #indexアクションの定義
        @posts = Post.all #すべてのレコードを取得
    end

    def new
    end

    def create
        Post.create(content: params[:content])
        redirect_to "/posts"
    end
end
