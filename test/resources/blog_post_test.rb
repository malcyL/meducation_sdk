require_relative '../test_helper'
require_relative '../resource_test'

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

    def test_comments_calls_sdk
      blog_post = BlogPost.new(id: 5)
      MeducationSDK::Comment.expects(:where).with(item_id: blog_post.id, item_type: "BlogPost")
      blog_post.comments
    end

    def test_responds_to_mesh
      blog_post = BlogPost.new(id: 5)
      assert blog_post.respond_to?('item_mesh_headings')
    end

  end
end

