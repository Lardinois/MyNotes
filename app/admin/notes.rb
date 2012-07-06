ActiveAdmin.register Note do

  index do
    id_column
    column :content
    column :user do |item|
      if item.user.present?
        link_to item.user, admin_user_path(item.user)
      end
    end
    column :created_at
    column :updated_at
    default_actions
  end

end