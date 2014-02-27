module MeducationSDK
  class BlogPost < Resource
    self.path = "/blog_posts"

    def user
      @user ||= User.find(user_id)
    end

    def blogger
      @blogger ||= Blogger.find(blogger_id)
    end

    def comments
      @comments ||= Comment.where(item_id: id, item_type: "BlogPost")
    end
  end

  class BlogPostMock < BlogPost
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      blogger_id: 8,
      user_id: 14,
      title: "My First Blog Post",
      slug: "my-first-blog-post",
      header_url: '/defaults/blog_posts/headers/missing_card.png'
    }
  end
end
