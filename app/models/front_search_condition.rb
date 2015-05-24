class FrontSearchCondition
  include ActiveModel::Model
  extend ActiveHash::Associations::ActiveRecordExtensions
  attr_accessor  :name, :title, :price, :prefecture_type_id
  def initialize(params)
    @name = params[:name]
    @title = params[:title]
    @price = params[:price]
    @prefecture_type_id = params[:prefecture_type_id]
  end

  def prefecture_type_name
    PrefectureType::NAME[self.prefecture_type_id]
  end

end