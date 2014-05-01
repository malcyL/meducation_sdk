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

    def item_mesh_headings
      @item_mesh_headings ||= begin
        @data['item_mesh_headings'].map do |imh|
          ItemMeshHeading.new(item_id: imh['item_id'], item_type: imh['item_type'], mesh_root: imh['mesh_root'], mesh_heading: imh['mesh_heading'], relevance: imh['relevance'])
        end
      end
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
      header_url: '/defaults/blog_posts/headers/missing_card.png',
      item_mesh_headings: [
        ItemMeshHeading.new(item_id: 1, item_type: 'ExternalResource', mesh_root: 'A', mesh_heading: 'D000001', relevance: 0.1),
        ItemMeshHeading.new(item_id: 1, item_type: 'ExternalResource', mesh_root: 'B', mesh_heading: 'D000002', relevance: 0.2),
        ItemMeshHeading.new(item_id: 1, item_type: 'ExternalResource', mesh_root: 'C', mesh_heading: 'D000003', relevance: 0.3)
      ]
    }
  end
end
