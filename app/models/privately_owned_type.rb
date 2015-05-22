class PrivatelyOwnedType < ActiveHash::Base
  include ActiveHash::Enum
  
  self.data = [
{name: '個人', value: 'PRIVATE'},
{name: '法人', value: 'COMPANY'},
  ]

  enum_accessor :privately_owned_type
end
