class EventType < ActiveHash::Base
  include ActiveHash::Enum
  
  self.data = [
{name: '団体', value: 'ASSOCIATION'},
{name: '個人', value: 'INDIVIDUALE'},
  ]

  enum_accessor :event_type
end
