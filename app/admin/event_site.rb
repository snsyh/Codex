ActiveAdmin.register EventSite do

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

  permit_params :organization_id, :prefecture_type_id, :carpark_type_id, :privately_owned_type_id, :event_site_code, :event_site_name, :near_station, :access_route, :host_comment, :capacity, :degrees_of_latitude, :degrees_of_longitude

  index do
    column "名前" do |event_site|
      link_to event_site.name, edit_admin_event_site_path(event_site)
    end
    column "都道府県" do |event_site|
      event_site.prefecture_type.name
    end
    column "最寄り駅", :near_station
    column "アクセス", :access_route
    column "コメント", :host_comment
    column "定員", :capacity
  end
end
