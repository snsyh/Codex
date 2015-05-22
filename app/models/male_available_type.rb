class MaleAvailableType < ActiveHash::Base
  include ActiveHash::Enum
  
  self.data = [
{name: '参加不可', value: 'IMPOSSIBILITY'},
{name: '参加可能', value: 'POSSIBLE'},
  ]

  enum_accessor :male_available_type
end
