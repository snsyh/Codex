class DemoDecorator < Draper::Decorator
  delegate_all
  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end
  
  def format_price
    h.number_to_currency(object.price, format: '%n %u', unit: '円', :precision => 0)
  end

  def thumnails
    if object.thumnail.present?
      h.image_tag(object.thumnail.url, :size => '80x80')
    else
      h.image_tag('noimage.jpg', :size => '80x80')
    end
  end

end
