class CarparkType < ActiveHash::Base
  include ActiveHash::Enum
  
  self.data = [
{name: 'なし', value: 'NONE'},
{name: 'あり（有料）', value: 'PAY'},
{name: 'あり（無料）', value: 'FREE'},
  ]

  enum_accessor :carpark_type
end
