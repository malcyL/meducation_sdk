module MeducationSDK
  class Blogger < Resource
    self.path = "/bloggers"

    def user
      @user ||= User.find(user_id)
    end
  end

  class BloggerMock < Blogger
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      user_id: 14,
      name: "My First Blog Post",
      slug: "my-first-blog-post",
      header_url: '/defaults/blog_posts/headers/missing_card.png'
    }
  end
end
