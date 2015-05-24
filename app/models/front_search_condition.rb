class FrontSearchCondition
  include ActiveModel::Model
  extend ActiveHash::Associations::ActiveRecordExtensions
  attr_accessor  :name, :title, :price, :prefecture_type_id
  def initialize(params)
    if params[:sc].present?
      @name = params[:sc][:name] if params[:sc][:name].present?
      @title = params[:sc][:title]  if params[:sc][:title].present?
      @price = params[:sc][:price] if params[:sc][:price].present?
      @prefecture_type_id = params[:sc][:prefecture_type_id] if params[:sc][:prefecture_type_id].present?
    end
  end

  def prefecture_type_name
    PrefectureType::NAME[self.prefecture_type_id]
  end
end