ActiveAdmin.register Event do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
permit_params :organization_id, :event_site_id, :event_code, :categories_code, :name, :event_comment, :represent_instructor_code, :entry_fee, :event_start_datetime, :event_end_datetime, :event_post_start_datetime, :event_post_end_datetime, :capacity, :number_of_accepted, :target_month_old_from, :target_month_old_to, :reference_url, :reference_url_name, :belongings, :male_available_type_id, :event_type_id

end
