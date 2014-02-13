require File.expand_path('../../test_helper', __FILE__)
require File.expand_path('../../resource_test', __FILE__)

module MeducationSDK
  class BlogPostTest < ResourceTest
    test_resource(BlogPost, '/blog_posts')

    def test_user_calls_sdk
      blog_post = BlogPost.new(user_id: 5)
      MeducationSDK::User.expects(:find).with(5)
      blog_post.user
    end

    def test_blogger_calls_sdk
      blog_post = BlogPost.new(blogger_id: 8)
      MeducationSDK::Blogger.expects(:find).with(8)
      blog_post.blogger
    end
  end
end

