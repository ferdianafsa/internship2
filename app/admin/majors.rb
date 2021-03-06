ActiveAdmin.register Major do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name
  #
  # or
  #
  # permit_params do
  #   permitted = [:name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

 filter :name, filters: [:contains]

 config.sort_order = 'name_asc'

    form do |f|
    f.inputs :multipart => true do
      f.input :name
    end
    f.actions
  end

end
