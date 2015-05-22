class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :organization_id
      t.string :event_site_id
      t.string :event_code
      t.string :categories_code
      t.string :event_name
      t.string :event_comment
      t.string :represent_instructor_code
      t.integer :entry_fee
      t.datetime :event_start_datetime
      t.datetime :event_end_datetime
      t.datetime :event_post_start_datetime
      t.datetime :event_post_end_datetime
      t.integer :capacity
      t.integer :number_of_accepted
      t.string :male_available_type_id
      t.string :event_type_id
      t.integer :target_month_old_from
      t.integer :target_month_old_to
      t.string :reference_url
      t.string :reference_url_name
      t.string :belongings

      t.timestamps null: false
    end
  end
end
