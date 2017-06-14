ActiveAdmin.register Gym do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  form do |f|
    f.input :user, as: :select, collection: User.all.map { |u| [u.email, u.id] }
    f.input :name
    f.input :address
    f.input :lessons
    f.input :photo
    f.input :description
    f.input :opening_hours
    f.input :equipments
    f.input :services
    f.input :price
    f.actions
  end


 permit_params :name, :address, :lessons, :photo, :description, :opening_hours, :equipments, :services, :user_id, :price
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
