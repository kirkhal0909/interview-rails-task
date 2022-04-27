ActiveAdmin.register Post do
  permit_params :message

  member_action :history do
    @post = Post.find(params[:id])
    # @versions = @post.versions # <-- Sadly, versions aren't available in this scope, so use:
    @versions = PaperTrail::Version.where(item_type: 'Post', item_id: @post.id)
    render "layouts/history"
  end

  index do
    column :id
    column :message
    actions defaults: true do |post|
      link_to 'History', history_admin_post_path(post)
    end
  end
end
